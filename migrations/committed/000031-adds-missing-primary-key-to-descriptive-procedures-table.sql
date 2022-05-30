--! Previous: sha1:07a0ec67b6da94ec8903be6cad135934303d67a1
--! Hash: sha1:fff32570d3896eaf0d361fb6b9e053caa63aaa67
--! Message: Adds missing primary key to descriptive procedures table

-- Enter migration here

ALTER TABLE core.procedure_desc DROP CONSTRAINT IF EXISTS procedure_desc_pkey;
ALTER TABLE core.procedure_desc ADD PRIMARY KEY (procedure_desc_id);
