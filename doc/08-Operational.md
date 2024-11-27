Operational aspects {#sec:oper}
===============================

## Migrations

The database documented in this manuscript is developed with the migrations
framework from the Graphile project [^801]. Migrations provide a versioning
mechanism for the incremental development of a database. The tool facilitates
rolling back and forth between different points in the development history, by
applying or suppressing the SQL instructions that create the database structure.

[Listing @lst:oper:deploy] provides a simple example on how to deploy the
ISO 28258 database with `graphile-migrate`. First the repository is cloned
from the code forge, then the `.env` file must be edited to point environmental
variables to the correct database cluster. Finally the environmental variables
are loaded to the session and the migrations are run.

```{#lst:oper:deploy .bash caption="Simple instruction set to deploy a new instance of the ISO 28258 database."}
git clone git@git.wur.nl:isric/databases/iso28258.git

cd iso28258

vim .env

source .env

yarn graphile-migrate migrate
```

Further documentation on the use of `graphile-migrate` is beyond the scope of this
manuscript. The main project `README` file includes basic instructions. 


## Integrating modifications to downstream databases {#sec:oper:integr}

The database document here is likely to evolve in the future, simply with the
correction of bugs or the introduction of general requirements, as is the case
with the `metadata` schema. Any modifications to the entities described in
[Section @sec:foi] through [Section @sec:meta] must therefore percolate to any
downstream databases, i.e.  those developed from this template. This is best
managed with migrate setup script, usually stored in the downstream
`migrations/setup` folder. Modifications to the `iso28258` repository can then
be reflected in this script. The steps to produce one are the following:

1. Apply the necessary modifications with a new migration in the `iso28258`
   repository.

2. Create a new tag in the `iso28258` repository, marking a new release.

3. Obtain a backup from the `iso28258` repository with the `pg_dump` tool,
   marking the resulting file with the version (e.g. `_v1.1`). This dump must
   include only the `core` and `metadata` schemas, ignore ownership and add
   data as `INSERT` instructions, as [Listing @lst:oper:dump] exemplifies. 

4. Replace the setup script in the `migrations/setup` folder of the downstream
   repository.

5. Update the `.gmrc` file in the downstream repository to load the new script
   (`"afterReset"` section).

6. Fully re-run migrations in the downstream database (`reset` parameter).

```{#lst:oper:dump .bash caption="Dumping relevant schemas from the iso28258 database as set-up for a derived database."}
pg_dump iso28258 --inserts --no-owner -n core -n metadata > iso28258_v1.1.sql
```

[^801]: https://github.com/graphile/migrate 
