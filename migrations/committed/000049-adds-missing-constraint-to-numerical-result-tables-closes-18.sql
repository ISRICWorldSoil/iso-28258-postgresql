--! Previous: sha1:03bab9de6d34d9e5ff2f6d64cab3c84727538b89
--! Hash: sha1:b57a9b5b3838aed113bcb19969ee4a780ca69316
--! Message: Adds missing constraint to numerical result tables (closes #18)

-- Enter migration here

 ALTER TABLE core.result_phys_chem 
  DROP CONSTRAINT IF EXISTS result_phys_chem_unq;

 ALTER TABLE core.result_phys_chem 
   ADD CONSTRAINT result_phys_chem_unq 
UNIQUE (observation_phys_chem_id, element_id);

 ALTER TABLE core.result_numerical_specimen 
  DROP CONSTRAINT IF EXISTS result_numerical_specimen_unq;

 ALTER TABLE core.result_numerical_specimen
   ADD CONSTRAINT result_numerical_specimen_unq 
UNIQUE (observation_numerical_specimen_id, specimen_id);
