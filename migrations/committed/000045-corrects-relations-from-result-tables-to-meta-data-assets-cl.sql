--! Previous: sha1:1b896ce5aa7d9b8b65863184d3fe5cc448d048d0
--! Hash: sha1:a2b72c713a38b5b8ede960a596a6b0bd2b042a06
--! Message: Corrects relations from result tables to meta-data assets (closes #19)

-- Enter migration here

ALTER TABLE core.observation_phys_chem DROP COLUMN IF EXISTS individual_id;

ALTER TABLE core.result_phys_chem DROP CONSTRAINT IF EXISTS fk_individual_id; 
ALTER TABLE core.result_phys_chem DROP COLUMN IF EXISTS individual_id;
ALTER TABLE core.result_phys_chem ADD COLUMN individual_id INTEGER;
ALTER TABLE core.result_phys_chem ADD CONSTRAINT fk_individual_id 
    FOREIGN KEY (individual_id)
    REFERENCES metadata.individual (individual_id);


ALTER TABLE core.observation_numerical_specimen DROP COLUMN IF EXISTS individual_id;

ALTER TABLE core.result_numerical_specimen DROP CONSTRAINT IF EXISTS fk_organisation_id;
ALTER TABLE core.result_numerical_specimen DROP COLUMN IF EXISTS organisation_id;
ALTER TABLE core.result_numerical_specimen ADD COLUMN organisation_id INTEGER;
ALTER TABLE core.result_numerical_specimen ADD CONSTRAINT fk_organisation_id
    FOREIGN KEY (organisation_id)
    REFERENCES metadata.organisation (organisation_id);
