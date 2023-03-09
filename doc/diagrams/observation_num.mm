erDiagram
  result_phys_chem {
    INTEGER result_phys_chem_id
    INTEGER observation_phys_chem_id
    INTEGER element_id
    NUMERIC value
  }
  property_phys_chem {
    INTEGER property_phys_chem_id
    VARCHAR label
    VARCHAR uri
  }
  unit_of_measure {
    INTEGER unit_of_measure_id
    VARCHAR label
    VARCHAR uri
  }
  observation_phys_chem {
    INTEGER observation_phys_chem_id
    INTEGER property_phys_chem_id
    INTEGER procedure_phys_chem_id
    INTEGER unit_of_measure_id
    NUMERIC value_min
    NUMERIC value_max
  }
  element {
    INTEGER element_id
    element_type type
    INTEGER profile_id
    INTEGER order_element
    INTEGER upper_depth
    INTEGER lower_depth
  }
  procedure_phys_chem {
    INTEGER procedure_phys_chem_id
    INTEGER broader_id
    VARCHAR label
    VARCHAR uri
  }
  observation_phys_chem ||--o{ procedure_phys_chem : fk_procedure_phys_chem
  observation_phys_chem ||--o{ unit_of_measure : fk_unit_of_measure
  observation_phys_chem ||--o{ property_phys_chem : fk_property_phys_chem
  result_phys_chem ||--o{ element : fk_element
  result_phys_chem ||--o{ observation_phys_chem : fk_observation_phys_chem
