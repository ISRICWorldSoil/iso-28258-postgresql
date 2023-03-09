erDiagram
  specimen {
    INTEGER specimen_id
    VARCHAR code
    INTEGER plot_id
    INTEGER specimen_prep_process_id
    INTEGER depth
  }
  element {
    INTEGER element_id
    VARCHAR type
    INTEGER profile_id
    INTEGER order_element
    INTEGER upper_depth
    INTEGER lower_depth
  }
  specimen_prep_process {
    INTEGER specimen_prep_process_id
    INTEGER specimen_transport_id
    INTEGER specimen_storage_id
    VARCHAR definition
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
  profile ||--o{ plot : fk_plot_id
  element ||--o{ profile : fk_profile
  specimen ||--o{ plot : fk_plot
  specimen ||--o{ specimen_prep_process : fk_specimen_prep_process
