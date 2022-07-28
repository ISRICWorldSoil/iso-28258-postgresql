--! Previous: sha1:457bf1d0cad19903130d5830718b6e77f9779ca7
--! Hash: sha1:d01fa494cdb9a27ccd377a8d304fd35daaac9b1c
--! Message: Creates missing UNIQUE constraints (closes #20)

-- Enter migration here


ALTER TABLE core.element DROP CONSTRAINT IF EXISTS unq_element_profile_order_element;
ALTER TABLE core.element ADD CONSTRAINT unq_element_profile_order_element UNIQUE (profile_id, order_element);

ALTER TABLE core.procedure_desc DROP CONSTRAINT IF EXISTS unq_procedure_desc_label;
ALTER TABLE core.procedure_desc ADD CONSTRAINT unq_procedure_desc_label UNIQUE (label);

ALTER TABLE core.procedure_numerical_specimen DROP CONSTRAINT IF EXISTS unq_procedure_numerical_specimen_label;
ALTER TABLE core.procedure_numerical_specimen ADD CONSTRAINT unq_procedure_numerical_specimen_label UNIQUE (label);

ALTER TABLE core.property_desc_specimen DROP CONSTRAINT IF EXISTS unq_property_desc_specimen_label;
ALTER TABLE core.property_desc_specimen ADD CONSTRAINT unq_property_desc_specimen_label UNIQUE (label);

ALTER TABLE core.property_numerical_specimen DROP CONSTRAINT IF EXISTS unq_property_numerical_specimen_label;
ALTER TABLE core.property_numerical_specimen ADD CONSTRAINT unq_property_numerical_specimen_label UNIQUE (label);

ALTER TABLE core.property_phys_chem DROP CONSTRAINT IF EXISTS unq_property_phys_chem_label;
ALTER TABLE core.property_phys_chem ADD CONSTRAINT unq_property_phys_chem_label UNIQUE (label);

ALTER TABLE core.property_phys_chem DROP CONSTRAINT IF EXISTS unq_property_phys_chem_uri;
ALTER TABLE core.property_phys_chem ADD CONSTRAINT unq_property_phys_chem_uri UNIQUE (uri);

ALTER TABLE core.specimen_storage DROP CONSTRAINT IF EXISTS unq_specimen_storage_label;
ALTER TABLE core.specimen_storage ADD CONSTRAINT unq_specimen_storage_label UNIQUE (label);

ALTER TABLE core.specimen_transport DROP CONSTRAINT IF EXISTS unq_specimen_transport_label;
ALTER TABLE core.specimen_transport ADD CONSTRAINT unq_specimen_transport_label UNIQUE (label);

ALTER TABLE core.surface DROP CONSTRAINT IF EXISTS unq_surface_super;
ALTER TABLE core.surface ADD CONSTRAINT unq_surface_super UNIQUE (surface_id, super_surface_id);

ALTER TABLE core.thesaurus_desc_specimen DROP CONSTRAINT IF EXISTS unq_thesaurus_desc_specimen_label;
ALTER TABLE core.thesaurus_desc_specimen ADD CONSTRAINT unq_thesaurus_desc_specimen_label UNIQUE (label);

ALTER TABLE core.unit_of_measure DROP CONSTRAINT IF EXISTS unq_unit_of_measure_uri;
ALTER TABLE core.unit_of_measure ADD CONSTRAINT unq_unit_of_measure_uri UNIQUE (uri);
