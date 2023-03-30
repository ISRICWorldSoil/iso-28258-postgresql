--! Previous: sha1:6e4f9b01affa25f0c88cf558dd2d665091ca29f2
--! Hash: sha1:b9d7712ae8e016f3ddad08868ad32b1e040309ad
--! Message: Corrects relations between observation_desc_specimen, procedure_desc and result_desc_specimen

-- Enter migration here

DROP TABLE IF EXISTS core.result_desc_specimen;


ALTER TABLE core.observation_desc_specimen 
 DROP CONSTRAINT IF EXISTS fk_observation_desc_specimen;

ALTER TABLE core.observation_desc_specimen 
 DROP COLUMN IF EXISTS observation_desc_specimen_id;

ALTER TABLE core.observation_desc_specimen 
 DROP COLUMN IF EXISTS procedure_desc_id;

ALTER TABLE core.observation_desc_specimen 
  ADD COLUMN procedure_desc_id INTEGER;

ALTER TABLE core.observation_desc_specimen 
  ADD CONSTRAINT fk_procedure_desc 
         FOREIGN KEY (procedure_desc_id)
      REFERENCES core.procedure_desc (procedure_desc_id);

CREATE TABLE IF NOT EXISTS core.result_desc_specimen
(
    specimen_id integer NOT NULL,
    property_desc_specimen_id integer NOT NULL,
    thesaurus_desc_specimen_id integer NOT NULL,
    UNIQUE (specimen_id, property_desc_specimen_id),
    CONSTRAINT fk_specimen FOREIGN KEY (specimen_id)
        REFERENCES core.specimen (specimen_id),
    CONSTRAINT result_desc_specimen_property_desc_specimen_id_thesaurus_des_fkey 
        FOREIGN KEY (property_desc_specimen_id, thesaurus_desc_specimen_id)
        REFERENCES core.observation_desc_specimen (property_desc_specimen_id, thesaurus_desc_specimen_id)
);

COMMENT ON TABLE core.result_desc_specimen
    IS 'Descriptive results for the Specimen feature interest.';

COMMENT ON COLUMN core.result_desc_specimen.specimen_id
    IS 'Foreign key to the corresponding Specimen feature of interest.';

COMMENT ON COLUMN core.result_desc_specimen.property_desc_specimen_id
    IS 'Partial foreign key to the corresponding Observation.';

COMMENT ON COLUMN core.result_desc_specimen.thesaurus_desc_specimen_id
    IS 'Partial foreign key to the corresponding Observation.';
