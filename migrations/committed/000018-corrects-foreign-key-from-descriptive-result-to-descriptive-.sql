--! Previous: sha1:fd9d2777699ec643268f3e12b835590a0568ae5f
--! Hash: sha1:1415df6697495728de48edf9ab6a080a74e1a98c
--! Message: Corrects foreign key from descriptive Result to descriptive Observation

-- Enter migration here

ALTER TABLE core.result_desc_surface DROP COLUMN IF EXISTS observation_desc_surface_id;
ALTER TABLE core.result_desc_surface DROP COLUMN IF EXISTS property_desc_surface_id;
ALTER TABLE core.result_desc_surface DROP COLUMN IF EXISTS thesaurus_desc_surface_id;
ALTER TABLE core.result_desc_surface DROP CONSTRAINT IF EXISTS fk_observation_desc_surface;
ALTER TABLE core.result_desc_surface DROP CONSTRAINT IF EXISTS unq_result_desc_surface;

ALTER TABLE core.result_desc_plot DROP COLUMN IF EXISTS observation_desc_plot_id;
ALTER TABLE core.result_desc_plot DROP COLUMN IF EXISTS property_desc_plot_id;
ALTER TABLE core.result_desc_plot DROP COLUMN IF EXISTS thesaurus_desc_plot_id;
ALTER TABLE core.result_desc_plot DROP CONSTRAINT IF EXISTS fk_observation_desc_plot;
ALTER TABLE core.result_desc_plot DROP CONSTRAINT IF EXISTS unq_result_desc_plot;

ALTER TABLE core.result_desc_profile DROP COLUMN IF EXISTS observation_desc_profile_id;
ALTER TABLE core.result_desc_profile DROP COLUMN IF EXISTS property_desc_profile_id;
ALTER TABLE core.result_desc_profile DROP COLUMN IF EXISTS thesaurus_desc_profile_id;
ALTER TABLE core.result_desc_profile DROP CONSTRAINT IF EXISTS fk_observation_desc_profile;
ALTER TABLE core.result_desc_profile DROP CONSTRAINT IF EXISTS unq_result_desc_profile;

ALTER TABLE core.result_desc_element DROP COLUMN IF EXISTS observation_desc_element_id;
ALTER TABLE core.result_desc_element DROP COLUMN IF EXISTS property_desc_element_id;
ALTER TABLE core.result_desc_element DROP COLUMN IF EXISTS thesaurus_desc_element_id;
ALTER TABLE core.result_desc_element DROP CONSTRAINT IF EXISTS fk_observation_desc_element;
ALTER TABLE core.result_desc_element DROP CONSTRAINT IF EXISTS unq_result_desc_element;

ALTER TABLE core.observation_desc_surface DROP CONSTRAINT IF EXISTS observation_desc_surface_pkey CASCADE;
ALTER TABLE core.observation_desc_surface DROP COLUMN IF EXISTS observation_desc_surface_id CASCADE;

ALTER TABLE core.observation_desc_plot DROP COLUMN IF EXISTS observation_desc_plot_id CASCADE;
ALTER TABLE core.observation_desc_plot DROP CONSTRAINT IF EXISTS observation_desc_plot_pkey CASCADE;

ALTER TABLE core.observation_desc_profile DROP COLUMN IF EXISTS observation_desc_profile_id CASCADE;
ALTER TABLE core.observation_desc_profile DROP CONSTRAINT IF EXISTS observation_desc_profile_pkey CASCADE;

ALTER TABLE core.observation_desc_element DROP COLUMN IF EXISTS observation_desc_element_id CASCADE;
ALTER TABLE core.observation_desc_element DROP CONSTRAINT IF EXISTS observation_desc_element_pkey CASCADE;

ALTER TABLE core.observation_desc_surface ADD PRIMARY KEY (property_desc_surface_id, thesaurus_desc_surface_id);

ALTER TABLE core.observation_desc_plot ADD PRIMARY KEY (property_desc_plot_id, thesaurus_desc_plot_id);

ALTER TABLE core.observation_desc_profile ADD PRIMARY KEY (property_desc_profile_id, thesaurus_desc_profile_id);

ALTER TABLE core.observation_desc_element ADD PRIMARY KEY (property_desc_element_id, thesaurus_desc_element_id);

ALTER TABLE core.result_desc_surface ADD COLUMN property_desc_surface_id INT NOT NULL;
ALTER TABLE core.result_desc_surface ADD COLUMN thesaurus_desc_surface_id INT NOT NULL;
ALTER TABLE core.result_desc_surface
  ADD FOREIGN KEY (property_desc_surface_id, thesaurus_desc_surface_id)   
  REFERENCES core.observation_desc_surface(property_desc_surface_id, thesaurus_desc_surface_id);
ALTER TABLE core.result_desc_surface ADD CONSTRAINT unq_result_desc_surface UNIQUE (surface_id, property_desc_surface_id);

ALTER TABLE core.result_desc_plot ADD COLUMN property_desc_plot_id INT NOT NULL;
ALTER TABLE core.result_desc_plot ADD COLUMN thesaurus_desc_plot_id INT NOT NULL;
ALTER TABLE core.result_desc_plot
  ADD FOREIGN KEY (property_desc_plot_id, thesaurus_desc_plot_id)   
  REFERENCES core.observation_desc_plot(property_desc_plot_id, thesaurus_desc_plot_id);
ALTER TABLE core.result_desc_plot ADD CONSTRAINT unq_result_desc_plot UNIQUE (plot_id, property_desc_plot_id);

ALTER TABLE core.result_desc_profile ADD COLUMN property_desc_profile_id INT NOT NULL;
ALTER TABLE core.result_desc_profile ADD COLUMN thesaurus_desc_profile_id INT NOT NULL;
ALTER TABLE core.result_desc_profile
  ADD FOREIGN KEY (property_desc_profile_id, thesaurus_desc_profile_id)   
  REFERENCES core.observation_desc_profile(property_desc_profile_id, thesaurus_desc_profile_id);
ALTER TABLE core.result_desc_profile ADD CONSTRAINT unq_result_desc_profile UNIQUE (profile_id, property_desc_profile_id);

ALTER TABLE core.result_desc_element ADD COLUMN property_desc_element_id INT NOT NULL;
ALTER TABLE core.result_desc_element ADD COLUMN thesaurus_desc_element_id INT NOT NULL;
ALTER TABLE core.result_desc_element
  ADD FOREIGN KEY (property_desc_element_id, thesaurus_desc_element_id)   
  REFERENCES core.observation_desc_element(property_desc_element_id, thesaurus_desc_element_id);
ALTER TABLE core.result_desc_element ADD CONSTRAINT unq_result_desc_element UNIQUE (element_id, property_desc_element_id);
