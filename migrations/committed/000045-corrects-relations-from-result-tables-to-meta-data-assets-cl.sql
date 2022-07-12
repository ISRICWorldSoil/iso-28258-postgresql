--! Previous: sha1:e3b5ab8615711e6fbfd06e78f0aa4d363bcdfff9
--! Hash: sha1:457bf1d0cad19903130d5830718b6e77f9779ca7
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
