erDiagram
  surface {
    INTEGER surface_id
    INTEGER super_surface_id
    INTEGER site_id
    NULL shape
  }
  site {
    INTEGER site_id
    VARCHAR site_code
    NULL position
    NULL extent
  }
  profile {
    INTEGER profile_id
    VARCHAR profile_code
    INTEGER plot_id
    INTEGER surface_id
  }
  plot {
    INTEGER plot_id
    VARCHAR plot_code
    INTEGER site_id
    NUMERIC altitude
    DATE time_stamp
    VARCHAR map_sheet_code
    NUMERIC positional_accuracy
    NULL position
  }
  plot ||--o{ site : fk_site
  surface ||--o{ surface : fk_surface
  surface ||--o{ site : fk_site
  profile ||--o{ plot : fk_plot_id
  profile ||--o{ surface : fk_surface_id
