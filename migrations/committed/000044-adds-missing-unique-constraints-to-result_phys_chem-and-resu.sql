--! Previous: sha1:8b49f4c556c7b90b6b816980b92b73e7bc05ecdc
--! Hash: sha1:e3b5ab8615711e6fbfd06e78f0aa4d363bcdfff9
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
