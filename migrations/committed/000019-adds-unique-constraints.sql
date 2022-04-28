--! Previous: sha1:1415df6697495728de48edf9ab6a080a74e1a98c
--! Hash: sha1:6b396e3c5a3f83de9bde83ad56961c6ee4adb9a8
--! Message: Adds unique constraints

-- Enter migration here

ALTER TABLE core.property_desc_surface DROP CONSTRAINT IF EXISTS unq_property_desc_surface_label;
ALTER TABLE core.property_desc_surface DROP CONSTRAINT IF EXISTS unq_property_desc_surface_uri;

ALTER TABLE core.property_desc_plot DROP CONSTRAINT IF EXISTS unq_property_desc_plot_label;
ALTER TABLE core.property_desc_plot DROP CONSTRAINT IF EXISTS unq_property_desc_plot_uri;

ALTER TABLE core.property_desc_profile DROP CONSTRAINT IF EXISTS unq_property_desc_profile_label;
ALTER TABLE core.property_desc_profile DROP CONSTRAINT IF EXISTS unq_property_desc_profile_uri;

ALTER TABLE core.property_desc_element DROP CONSTRAINT IF EXISTS unq_property_desc_element_label;
ALTER TABLE core.property_desc_element DROP CONSTRAINT IF EXISTS unq_property_desc_element_uri;

ALTER TABLE core.thesaurus_desc_surface DROP CONSTRAINT IF EXISTS unq_thesaurus_desc_surface_label;
ALTER TABLE core.thesaurus_desc_surface DROP CONSTRAINT IF EXISTS unq_thesaurus_desc_surface_uri;

ALTER TABLE core.thesaurus_desc_plot DROP CONSTRAINT IF EXISTS unq_thesaurus_desc_plot_label;
ALTER TABLE core.thesaurus_desc_plot DROP CONSTRAINT IF EXISTS unq_thesaurus_desc_plot_uri;

ALTER TABLE core.thesaurus_desc_profile DROP CONSTRAINT IF EXISTS unq_thesaurus_desc_profile_label;
ALTER TABLE core.thesaurus_desc_profile DROP CONSTRAINT IF EXISTS unq_thesaurus_desc_profile_uri;

ALTER TABLE core.thesaurus_desc_element DROP CONSTRAINT IF EXISTS unq_thesaurus_desc_element_label;
ALTER TABLE core.thesaurus_desc_element DROP CONSTRAINT IF EXISTS unq_thesaurus_desc_element_uri;

ALTER TABLE core.procedure_phys_chem DROP CONSTRAINT IF EXISTS unq_procedure_phys_chem_label;
ALTER TABLE core.procedure_phys_chem DROP CONSTRAINT IF EXISTS unq_procedure_phys_chem_uri;

ALTER TABLE core.plot DROP CONSTRAINT IF EXISTS unq_plot_code;

ALTER TABLE core.profile DROP CONSTRAINT IF EXISTS unq_profile_code;

ALTER TABLE core.project DROP CONSTRAINT IF EXISTS unq_project_name;

ALTER TABLE core.site DROP CONSTRAINT IF EXISTS unq_site_code;


ALTER TABLE core.property_desc_surface ADD CONSTRAINT unq_property_desc_surface_label UNIQUE (label);
ALTER TABLE core.property_desc_surface ADD CONSTRAINT unq_property_desc_surface_uri UNIQUE (uri);

ALTER TABLE core.property_desc_plot ADD CONSTRAINT unq_property_desc_plot_label UNIQUE (label);
ALTER TABLE core.property_desc_plot ADD CONSTRAINT unq_property_desc_plot_uri UNIQUE (uri);

ALTER TABLE core.property_desc_profile ADD CONSTRAINT unq_property_desc_profile_label UNIQUE (label);
ALTER TABLE core.property_desc_profile ADD CONSTRAINT unq_property_desc_profile_uri UNIQUE (uri);

ALTER TABLE core.property_desc_element ADD CONSTRAINT unq_property_desc_element_label UNIQUE (label);
ALTER TABLE core.property_desc_element ADD CONSTRAINT unq_property_desc_element_uri UNIQUE (uri);

ALTER TABLE core.thesaurus_desc_surface ADD CONSTRAINT unq_thesaurus_desc_surface_label UNIQUE (label);
ALTER TABLE core.thesaurus_desc_surface ADD CONSTRAINT unq_thesaurus_desc_surface_uri UNIQUE (uri);

ALTER TABLE core.thesaurus_desc_plot ADD CONSTRAINT unq_thesaurus_desc_plot_label UNIQUE (label);
ALTER TABLE core.thesaurus_desc_plot ADD CONSTRAINT unq_thesaurus_desc_plot_uri UNIQUE (uri);

ALTER TABLE core.thesaurus_desc_profile ADD CONSTRAINT unq_thesaurus_desc_profile_label UNIQUE (label);
ALTER TABLE core.thesaurus_desc_profile ADD CONSTRAINT unq_thesaurus_desc_profile_uri UNIQUE (uri);

ALTER TABLE core.thesaurus_desc_element ADD CONSTRAINT unq_thesaurus_desc_element_label UNIQUE (label);
ALTER TABLE core.thesaurus_desc_element ADD CONSTRAINT unq_thesaurus_desc_element_uri UNIQUE (uri);

ALTER TABLE core.procedure_phys_chem ADD CONSTRAINT unq_procedure_phys_chem_label UNIQUE (label);
ALTER TABLE core.procedure_phys_chem ADD CONSTRAINT unq_procedure_phys_chem_uri UNIQUE (uri);

ALTER TABLE core.plot ADD CONSTRAINT unq_plot_code UNIQUE (plot_code);

ALTER TABLE core.profile ADD CONSTRAINT unq_profile_code UNIQUE (profile_code);

ALTER TABLE core.project ADD CONSTRAINT unq_project_name UNIQUE (name);

ALTER TABLE core.site ADD CONSTRAINT unq_site_code UNIQUE (site_code);
