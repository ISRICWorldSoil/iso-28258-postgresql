erDiagram
  observation_desc_surface {
    INTEGER property_desc_surface_id
    INTEGER thesaurus_desc_surface_id
    INTEGER procedure_desc_id
  }
  surface {
    INTEGER surface_id
    INTEGER super_surface_id
    INTEGER site_id
    unknown shape
  }
  property_desc_surface {
    INTEGER property_desc_surface_id
    VARCHAR label
    VARCHAR uri
  }
  result_desc_surface {
    INTEGER surface_id
    INTEGER property_desc_surface_id
    INTEGER thesaurus_desc_surface_id
  }
  thesaurus_desc_surface {
    INTEGER thesaurus_desc_surface_id
    VARCHAR label
    VARCHAR uri
  }
  procedure_desc {
    INTEGER procedure_desc_id
    VARCHAR label
    VARCHAR reference
    VARCHAR uri
  }
  observation_desc_surface ||--o{ thesaurus_desc_surface : fk_thesaurus_desc_surface
  observation_desc_surface ||--o{ property_desc_surface : fk_property_desc_surface
  observation_desc_surface ||--o{ procedure_desc : fk_procedure_desc_surface
  result_desc_surface ||--o{ observation_desc_surface : result_desc_surface_property_desc_surface_id_thesaurus_des_fkey
  result_desc_surface ||--o{ observation_desc_surface : result_desc_surface_property_desc_surface_id_thesaurus_des_fkey
  result_desc_surface ||--o{ surface : fk_surface
