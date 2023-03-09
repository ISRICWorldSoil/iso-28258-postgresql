erDiagram
  model_spectral {
    VARCHAR uri
    VARCHAR name
    INTEGER model_spectral_id
  }
  result_derived {
    INTEGER observation_derived_id
    INTEGER result_spectral_id
    NUMERIC value
    INTEGER individual_id
    INTEGER result_derived_id
  }
  observation_phys_chem {
    INTEGER observation_phys_chem_id
    INTEGER property_phys_chem_id
    INTEGER procedure_phys_chem_id
    INTEGER unit_of_measure_id
    NUMERIC value_min
    NUMERIC value_max
  }
  result_spectral {
    INTEGER observation_spectral_id
    INTEGER element_id
    JSONB spectrum
    INTEGER individual_id
    INTEGER result_spectral_id
  }
  individual {
    VARCHAR name
    VARCHAR honorific_title
    VARCHAR email
    VARCHAR telephone
    VARCHAR url
    INTEGER address_id
    INTEGER individual_id
  }
  observation_derived {
    INTEGER observation_phys_chem_id
    INTEGER model_spectral_id
    INTEGER observation_derived_id
  }
  result_derived ||--o{ individual : result_derived_individual_id_fkey
  result_derived ||--o{ observation_derived : fk_observation_derived
  result_derived ||--o{ result_spectral : fk_result_spectral
  observation_derived ||--o{ model_spectral : fk_model_spectral
  observation_derived ||--o{ observation_phys_chem : observation_derived_observation_phys_chem_id_fkey

