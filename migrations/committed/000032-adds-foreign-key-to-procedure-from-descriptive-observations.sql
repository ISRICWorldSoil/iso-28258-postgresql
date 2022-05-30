--! Previous: sha1:fff32570d3896eaf0d361fb6b9e053caa63aaa67
--! Hash: sha1:3a76d60d831c24215b1b3109f770f81b1fbc1c84
--! Message: Adds foreign key to procedure from descriptive observations

-- Enter migration here

ALTER TABLE core.observation_desc_surface 
 DROP COLUMN IF EXISTS procedure_desc_id;
ALTER TABLE core.observation_desc_surface 
  ADD COLUMN procedure_desc_id INTEGER;
ALTER TABLE core.observation_desc_surface 
  ADD CONSTRAINT fk_procedure_desc FOREIGN KEY (procedure_desc_id)
      REFERENCES core.procedure_desc (procedure_desc_id);

ALTER TABLE core.observation_desc_plot
 DROP COLUMN IF EXISTS procedure_desc_id;
ALTER TABLE core.observation_desc_plot 
  ADD COLUMN procedure_desc_id INTEGER;
ALTER TABLE core.observation_desc_plot 
  ADD CONSTRAINT fk_procedure_desc FOREIGN KEY (procedure_desc_id)
      REFERENCES core.procedure_desc (procedure_desc_id);

ALTER TABLE core.observation_desc_profile 
 DROP COLUMN IF EXISTS procedure_desc_id;
ALTER TABLE core.observation_desc_profile 
  ADD COLUMN procedure_desc_id INTEGER;
ALTER TABLE core.observation_desc_profile 
  ADD CONSTRAINT fk_procedure_desc FOREIGN KEY (procedure_desc_id)
      REFERENCES core.procedure_desc (procedure_desc_id);

ALTER TABLE core.observation_desc_element
 DROP COLUMN IF EXISTS procedure_desc_id;
ALTER TABLE core.observation_desc_element 
  ADD COLUMN procedure_desc_id INTEGER;
ALTER TABLE core.observation_desc_element 
  ADD CONSTRAINT fk_procedure_desc FOREIGN KEY (procedure_desc_id)
      REFERENCES core.procedure_desc (procedure_desc_id);

UPDATE core.observation_desc_surface
   SET procedure_desc_id = (SELECT procedure_desc_id 
                              FROM core.procedure_desc
                             WHERE label LIKE 'FAO GfSD 2006');

UPDATE core.observation_desc_plot
   SET procedure_desc_id = (SELECT procedure_desc_id 
                              FROM core.procedure_desc
                             WHERE label LIKE 'FAO GfSD 2006');

UPDATE core.observation_desc_profile
   SET procedure_desc_id = (SELECT procedure_desc_id 
                              FROM core.procedure_desc
                             WHERE label LIKE 'FAO GfSD 2006');

UPDATE core.observation_desc_element
   SET procedure_desc_id = (SELECT procedure_desc_id 
                              FROM core.procedure_desc
                             WHERE label LIKE 'FAO GfSD 2006');

ALTER TABLE core.observation_desc_surface 
ALTER COLUMN procedure_desc_id SET NOT NULL;

ALTER TABLE core.observation_desc_plot 
ALTER COLUMN procedure_desc_id SET NOT NULL;

ALTER TABLE core.observation_desc_profile 
ALTER COLUMN procedure_desc_id SET NOT NULL;

ALTER TABLE core.observation_desc_element 
ALTER COLUMN procedure_desc_id SET NOT NULL;
