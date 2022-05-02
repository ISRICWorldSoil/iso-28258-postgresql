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

### Project and Site

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

### Features of Interest

```mermaid
erDiagram
  surface {
    INTEGER surface_id
    INTEGER super_surface_id
    INTEGER site_id
    unknown shape
  }
  site {
    INTEGER site_id
    VARCHAR site_code
    unknown position
    unknown extent
  }
  profile {
    INTEGER profile_id
    VARCHAR profile_code
    INTEGER plot_id
    INTEGER surface_id
  }
  element {
    INTEGER element_id
    element_type type
    INTEGER profile_id
    INTEGER order_element
    INTEGER upper_depth
    INTEGER lower_depth
  }
  plot {
    INTEGER plot_id
    VARCHAR plot_code
    INTEGER site_id
    NUMERIC altitude
    DATE time_stamp
    VARCHAR map_sheet_code
    NUMERIC positional_accuracy
    unknown position
  }
  plot ||--o{ site : fk_site
  surface ||--o{ site : fk_site
  surface ||--o{ surface : fk_surface
  profile ||--o{ plot : fk_plot_id
  profile ||--o{ surface : fk_surface_id
  element ||--o{ profile : fk_profile
```

### Descriptive Observations

```mermaid
erDiagram
  observation_desc_surface {
    INTEGER property_desc_surface_id
    INTEGER thesaurus_desc_surface_id
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
  observation_desc_surface ||--o{ thesaurus_desc_surface : fk_thesaurus_desc_surface
  observation_desc_surface ||--o{ property_desc_surface : fk_property_desc_surface
  result_desc_surface ||--o{ observation_desc_surface : result_desc_surface_property_desc_surface_id_thesaurus_des_fkey
  result_desc_surface ||--o{ observation_desc_surface : result_desc_surface_property_desc_surface_id_thesaurus_des_fkey
  result_desc_surface ||--o{ surface : fk_surface
```

### Physio-chemical Observations

```mermaid
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
```
