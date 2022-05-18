# Database Management

We are relying on [graphile-migrate](https://github.com/graphile/migrate) for PostgreSQL schema management.

Make sure you have the latest LTS version of Node https://nodejs.org/en/. No need for anything else since this repo comes with a `yarn no install` ready to use.

Make sure you run the following commands from inside `iso28258` root folder the 1º time you use this.
You only need to run bellow commands once:

-  `corepack enable`
-  `yarn install`

You should be ready to go!

## Graphile migrate


It's an opinionated SQL-powered productive roll-forward migration tool for PostgreSQL.
You read right, there are no rollback migration for each forward migration.


**If you need to revert some changes, create a new migration for it.**

## Configuration

Graphile configuration is stored in [.gmrc](./.gmrc) file. We can hook commands to specific actions if needed, like generating code once migration has been committed, ...

## Commands

The following env variables need to be defined while running command:
- NODE_TLS_REJECT_UNAUTHORIZED = '0' (mandatory for ppostgres12.cdbe.wurnet.nl)
- ROOT_DATABASE_URL (mandatory)
- DATABASE_URL (Development only. Not needed for prod.)
- SHADOW_DATABASE_URL (optional, development only. Not needed for prod.)

- **Development:**

`ROOT_DATABASE_URL=postgres://admin:admin@localhost:5432/postgres DATABASE_URL=postgres://admin:admin@localhost:5432/my_database SHADOW_DATABASE_URL=postgres://admin:admin@localhost:5432/local_shadow yarn run graphile-migrate [command] [args]`


For simplicity, you can set an .env file (Use .env vars carefully, avoid using this in prod) and use the command as bellow. For this you need to replace `graphile-migrate` by `gm` since it has been configured as a script on [package.json](./package.json)

`yarn run gm [command] [args]`

- **Production:**

`NODE_TLS_REJECT_UNAUTHORIZED = '0' DATABASE_URL=postgres://admin:admin@localhost:5432/my_database yarn run graphile-migrate [command] [args]`

### init

Should not be needed for current project, since it's already been initialised:

`yarn run graphile-migrate init`

### Initialize DB

You can run 

### migrate

**If you have created the DB manualy, this is probably the first command you need to run** It runs any un-executed committed migrations.
Obviously does NOT run the current working migration from current.sql. For use in production and development.

In production, most users only run graphile-migrate migrate which operates solely on the main database - there is no need for a shadow database in production.

`yarn run graphile-migrate migrate`

### watch

Runs any un-executed committed migrations and then runs and watches the current
migration from current.sql, re-running it on any change. For development purposes only.

`yarn run graphile-migrate watch`

### commit

Commits the current migration into the `committed/` folder, resetting the
current migration. Resets the shadow database.

```txt
Options:
  --help         Show help                                             [boolean]
  --message, -m  Optional commit message to label migration, must not contain
                 newlines.                                              [string]
```

`yarn run graphile-migrate commit --message "missing rls"`

Please always add a commit message, so that we can easily identify
what is done in the file from its name only.

### uncommit

This command is useful in development if you need to modify your latest commit
before you push/merge it, or if other DB commits have been made by other
developers and you need to 'rebase' your migration onto theirs. Moves the latest
commit out of the committed migrations folder and back to the current migration
(assuming the current migration is empty-ish). Removes the migration tracking
entry from **ONLY** the local database.

**Do not use after other databases have executed this committed migration otherwise they will fall out of sync.**

**Development only, and liable to cause conflicts with other developers - be careful.**

`yarn run graphile-migrate uncommit`

Assuming nothing else has changed, `graphile-migrate uncommit && graphile-migrate commit`
should result in the exact same hash.

### reset


Drops and re-creates the database, re-running all committed migrations from the
start. **HIGHLY DESTRUCTIVE**.

```txt
Options:
  --help    Show help                                                  [boolean]
  --shadow  Applies migrations to shadow DB.          [boolean] [default: false]
  --erase   This is your double opt-in to make it clear this DELETES EVERYTHING.
                                                      [boolean] [default: false]
```

`yarn run graphile-migrate reset --erase`


#### Initailizing an empty Database with Graphile Migrate

You can initialize an empty DB automaticaly with Graphile Migrate by running `reset` comand.

### run

Compiles a SQL file, inserting all the placeholders, and then runs it against
the database. Useful for seeding. If called from an action will automatically
run against the same database (via GM_DBURL envvar) unless --shadow or
--rootDatabase are supplied.

```txt
Options:
  --help          Show help                                            [boolean]
  --shadow        Apply to the shadow database (for development).
                                                      [boolean] [default: false]
  --root          Run the file using the root user (but application database).
                                                      [boolean] [default: false]
  --rootDatabase  Like --root, but also runs against the root database rather
                  than application database.          [boolean] [default: false]
```

`yarn run graphile-migrate run migrations/setup/extensions.sql`

## Default commands

### Create a new local database

Define or replace `MY_DATABASE` and run:

`ROOT_DATABASE_URL=postgres://admin:admin@localhost:5432/postgres DATABASE_URL=postgres://admin:admin@localhost:5432/${MY_DATABASE} SHADOW_DATABASE_URL=postgres://admin:admin@localhost:5432/local_shadow yarn run graphile-migrate reset --erase`

### Reset database

You might need to kill pending connections to the database before:

```SQL
SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE
  pg_stat_activity.datname = '${database}'
  AND pid <> pg_backend_pid();
```

Then run the same command as previous one:

`ROOT_DATABASE_URL=postgres://admin:admin@localhost:5432/postgres DATABASE_URL=postgres://admin:admin@localhost:5432/${MY_DATABASE} SHADOW_DATABASE_URL=postgres://admin:admin@localhost:5432/local_shadow yarn run graphile-migrate reset --erase`
