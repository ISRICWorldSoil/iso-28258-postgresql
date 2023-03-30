--! Previous: sha1:c8c8b36b4619213ef513f7a6a223cd2eb9febc72
--! Hash: sha1:1b896ce5aa7d9b8b65863184d3fe5cc448d048d0
--! Message: Adds missing unique constraints to result_phys_chem and result_specimen_numeric (closes #17)

-- Enter migration here

ALTER TABLE core.result_numerical_specimen DROP CONSTRAINT IF EXISTS result_numerical_specimen_unq_foi_obs;
ALTER TABLE core.result_numerical_specimen 
  ADD CONSTRAINT result_numerical_specimen_unq_foi_obs
  UNIQUE (specimen_id, observation_numerical_specimen_id);

ALTER TABLE core.result_phys_chem DROP CONSTRAINT IF EXISTS result_phys_chem_unq_foi_obs;
ALTER TABLE core.result_phys_chem 
  ADD CONSTRAINT result_phys_chem_unq_foi_obs
  UNIQUE (element_id, observation_phys_chem_id);
