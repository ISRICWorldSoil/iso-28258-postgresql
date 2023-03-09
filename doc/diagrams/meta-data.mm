erDiagram
  organisation_individual {
    INTEGER individual_id
    INTEGER organisation_id
    INTEGER organisation_unit_id
    VARCHAR role
  }
  organisation {
    INTEGER organisation_id
    INTEGER parent_id
    VARCHAR name
    VARCHAR email
    VARCHAR telephone
    VARCHAR url
    INTEGER address_id
  }
  organisation_unit {
    INTEGER organisation_unit_id
    VARCHAR name
    INTEGER organisation_id
  }
  address {
    INTEGER address_id
    VARCHAR street_address
    VARCHAR postal_code
    VARCHAR locality
    VARCHAR country
  }
  individual {
    INTEGER individual_id
    VARCHAR name
    VARCHAR honorific_title
    VARCHAR email
    VARCHAR telephone
    VARCHAR url
    INTEGER address_id
  }
  individual ||--o{ address : fk_address_id
  organisation ||--o{ address : fk_address_id
  organisation ||--o{ organisation : fk_parent_id
  organisation_unit ||--o{ organisation : fk_organisation_id
  organisation_individual ||--o{ organisation_unit : fk_organisation_unit_id
  organisation_individual ||--o{ individual : fk_individual_id
  organisation_individual ||--o{ organisation : fk_organisation_id


