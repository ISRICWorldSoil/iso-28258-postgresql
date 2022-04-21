--! Previous: sha1:89461e95c2364bc1606e190ea185efc7ccd7863e
--! Hash: sha1:ea9d98f9093e33ade805c30f00f1a583cf51c4ed
--! Message: Creates phys-chem result table and associated assets

-- Enter migration here

ALTER TABLE core.observation_phys_chem DROP COLUMN IF EXISTS value_min;
ALTER TABLE core.observation_phys_chem DROP COLUMN IF EXISTS value_max;
DROP TABLE IF EXISTS core.result_phys_chem;
DROP FUNCTION IF EXISTS core.check_result_value();
DROP TRIGGER IF EXISTS trg_check_result_value ON core.result_phys_chem; 

ALTER TABLE core.observation_phys_chem 
  ADD COLUMN value_min NUMERIC;

ALTER TABLE core.observation_phys_chem 
  ADD COLUMN value_max NUMERIC;

COMMENT ON COLUMN core.observation_phys_chem.value_min IS 'Minimum admissable value for this combination of property, procedure and unit of measure';
COMMENT ON COLUMN core.observation_phys_chem.value_max IS 'Maximum admissable value for this combination of property, procedure and unit of measure';

CREATE TABLE core.result_phys_chem (
    result_phys_chem_id SERIAL PRIMARY KEY,
    observation_phys_chem_id INT NOT NULL,
    element_id INT NOT NULL,
    value NUMERIC NOT NULL,
    CONSTRAINT fk_observation_phys_chem
      FOREIGN KEY(observation_phys_chem_id)
	  REFERENCES core.observation_phys_chem(observation_phys_chem_id),
    CONSTRAINT fk_element
      FOREIGN KEY(element_id)
	  REFERENCES core.element(element_id)
);

COMMENT ON TABLE core.result_phys_chem IS 'Physio-chemical results for the Element feature interest.';
COMMENT ON COLUMN core.result_phys_chem.result_phys_chem_id IS 'Synthetic primary key.';
COMMENT ON COLUMN core.result_phys_chem.observation_phys_chem_id IS 'Foreign key to the corresponding physio-chemical observation.';
COMMENT ON COLUMN core.result_phys_chem.element_id IS 'Foreign key to the corresponding Element instance.';
COMMENT ON COLUMN core.result_phys_chem.value IS 'Numerical value resulting from applying the refered observation to the refered profile element.';

CREATE OR REPLACE FUNCTION core.check_result_value()
  RETURNS trigger AS
$$
DECLARE
    observation core.observation_phys_chem%ROWTYPE;
BEGIN
    SELECT * 
      INTO observation
      FROM core.observation_phys_chem
     WHERE observation_phys_chem_id = NEW.observation_phys_chem_id;
    
    IF NEW.value < observation.value_min OR NEW.value > observation.value_max THEN
        RAISE EXCEPTION 'Result value outside admissable bounds for the related observation.';
    ELSE
        RETURN NEW;
    END IF; 
END;
$$
LANGUAGE 'plpgsql';

COMMENT ON FUNCTION core.check_result_value IS 'Checks if the value assigned to a result record is within the numerical bounds declared in the related observations (fields value_min and value_max).';

CREATE TRIGGER trg_check_result_value
  BEFORE INSERT OR UPDATE
  ON core.result_phys_chem
  FOR EACH ROW
  EXECUTE PROCEDURE core.check_result_value();

COMMENT ON TRIGGER trg_check_result_value ON core.result_phys_chem IS 'Verifies if the value assigned to the result is valid. See the function core.ceck_result_valus function for implementation.';
