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
