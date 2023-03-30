--! Previous: sha1:b1bbaddedb0cf78e301de48918813c510238f3fe
--! Hash: sha1:70e638b6587543aaf5f6869a501feaef9292ce32
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
