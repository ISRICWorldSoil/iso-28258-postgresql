ISO-28258 Data Model
====================

Postgres data model implementing the ISO-28258 standard.

Concepts included
-----------------

- Project
- Site
- Plot
- Surface
- Profile
- Element
- Property
- Procedure
- Observation
- Result

Concepts not included
---------------------

- Horizon & Layer: as they are essentially the same in the domain, for now only ProfileElement is included.
- Sample
- Specimen

Open questions
--------------

- Is the Site concept necessary in this data model? (issue #1)

- Use Layer instead of ProfileElement? (issue #2)

- Should the data model also consider Samples and Specimens?

- Descritive observations do not have procedures. How relevant are they?

- Descriptive results allow for the same FoI to be associated to the same codelist more than once (issu #3) 

Diagrams
--------

```mermaid
erDiagram
  project {
    INTEGER project_id
    VARCHAR name
  }
  site_project {
    INTEGER site_id
    INTEGER project_id
  }
  project_related {
    INTEGER project_source_id
    INTEGER project_target_id
    VARCHAR role
  }
  site {
    INTEGER site_id
    VARCHAR site_code
    unknown position
    unknown extent
  }
  site_project ||--o{ site : fk_site
  site_project ||--o{ project : fk_project
  project_related ||--o{ project : fk_project_source
  project_related ||--o{ project : fk_project_target
```

