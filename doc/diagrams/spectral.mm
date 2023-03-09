erDiagram
  observation_spectral {
    INTEGER sensor_id
    INTEGER procedure_spectral_id
    INTEGER unit_of_measure_id
    NUMERIC value_min
    NUMERIC value_max
    INTEGER observation_spectral_id
  }
  unit_of_measure {
    VARCHAR label
    VARCHAR uri
    INTEGER unit_of_measure_id
  }
  element {
    INTEGER profile_id
    INTEGER order_element
    INTEGER upper_depth
    INTEGER lower_depth
    VARCHAR type
    INTEGER element_id
  }
  sensor {
    VARCHAR model
    VARCHAR make
    VARCHAR uri
    INTEGER sensor_id
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
  procedure_spectral {
    VARCHAR label
    NUMERIC wavelenght_max
    NUMERIC wavelenght_min
    NUMERIC resolution
    VARCHAR uri
    INTEGER procedure_spectral_id
  }
  observation_spectral ||--o{ procedure_spectral : fk_procedure_spectral
  observation_spectral ||--o{ sensor : fk_sensor
  observation_spectral ||--o{ unit_of_measure : observation_spectral_unit_of_measure_id_fkey
  result_spectral ||--o{ observation_spectral : fk_observation_spectral
  result_spectral ||--o{ element : result_spectral_element_id_fkey
  result_spectral ||--o{ individual : result_spectral_individual_id_fkey


