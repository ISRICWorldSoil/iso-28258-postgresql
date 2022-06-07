--! Previous: sha1:b5c2dc771cb6465ee251fe5074333baff62e5e8f
--! Hash: sha1:f979f6e6b90faf2561a4fa4924ba4877893f79e6
--! Message: Creates tables for numerical observations on Specimen (issue #6)

-- Enter migration here

DROP TABLE IF EXISTS core.property_numerical_specimen;

CREATE TABLE core.property_numerical_specimen (
    property_numerical_specimen_id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    definition VARCHAR NOT NULL
);

COMMENT ON TABLE core.property_numerical_specimen IS 'Properties for numerical observations on the Specimen feature of interest';
COMMENT ON COLUMN core.property_numerical_specimen.property_numerical_specimen_id IS 'Synthetic primary key for the property';
COMMENT ON COLUMN core.property_numerical_specimen.label IS 'Short label for this property';
COMMENT ON COLUMN core.property_numerical_specimen.definition IS 'Full semantic definition of this property, can be a URI to the corresponding code in a controled vocabulary (e.g. GloSIS).';


DROP TABLE IF EXISTS core.procedure_numerical_specimen;

CREATE TABLE core.procedure_numerical_specimen (
    procedure_numerical_specimen_id SERIAL PRIMARY KEY,
    broader_id INT,
    label VARCHAR NOT NULL,
    definition VARCHAR NOT NULL,
    CONSTRAINT fk_broader
      FOREIGN KEY(broader_id)
	  REFERENCES core.procedure_numerical_specimen(procedure_numerical_specimen_id)
);

COMMENT ON TABLE core.procedure_numerical_specimen IS 'Procedures for numerical observations on the Specimen feature of interest';
COMMENT ON COLUMN core.procedure_numerical_specimen.procedure_numerical_specimen_id IS 'Synthetic primary key for the procedure';
COMMENT ON COLUMN core.procedure_numerical_specimen.broader_id IS 'Foreign key to broader procedure in the hierarchy';
COMMENT ON COLUMN core.procedure_numerical_specimen.label IS 'Short label for this procedure';
COMMENT ON COLUMN core.procedure_numerical_specimen.definition IS 'Full semantic definition of this procedure, can be a URI to the corresponding in a controlled vocabulary (e.g. GloSIS).';


DROP TABLE IF EXISTS core.observation_numerical_specimen;

CREATE TABLE core.observation_numerical_specimen (
    observation_numerical_specimen_id SERIAL PRIMARY KEY,
    property_numerical_specimen_id INT NOT NULL,
    procedure_numerical_specimen_id INT NOT NULL,
    unit_of_measure_id INT NOT NULL,
    value_min NUMERIC,
    value_max NUMERIC,
    UNIQUE(property_numerical_specimen_id, procedure_numerical_specimen_id),
    CONSTRAINT fk_property_numerical_specimen
      FOREIGN KEY(property_numerical_specimen_id)
	  REFERENCES core.property_numerical_specimen(property_numerical_specimen_id),
    CONSTRAINT fk_procedure_numerical_specimen
      FOREIGN KEY(procedure_numerical_specimen_id)
	  REFERENCES core.procedure_numerical_specimen(procedure_numerical_specimen_id),
    CONSTRAINT fk_unit_of_measure
      FOREIGN KEY(unit_of_measure_id)
	  REFERENCES core.unit_of_measure(unit_of_measure_id)
);

COMMENT ON TABLE core.observation_numerical_specimen IS 'Numerical observations for the Specimen feature of interest';
COMMENT ON COLUMN core.observation_numerical_specimen.observation_numerical_specimen_id IS 'Synthetic primary key for the observation';
COMMENT ON COLUMN core.observation_numerical_specimen.property_numerical_specimen_id IS 'Foreign key to the corresponding property';
COMMENT ON COLUMN core.observation_numerical_specimen.procedure_numerical_specimen_id IS 'Foreign key to the corresponding procedure';
COMMENT ON COLUMN core.observation_numerical_specimen.unit_of_measure_id IS 'Foreign key to the corresponding unit of measure (if applicable)';
COMMENT ON COLUMN core.observation_numerical_specimen.value_min IS 'Minimum admissable value for this combination of property, procedure and unit of measure';
COMMENT ON COLUMN core.observation_numerical_specimen.value_max IS 'Maximum admissable value for this combination of property, procedure and unit of measure';


DROP TABLE IF EXISTS core.result_numerical_specimen;
DROP FUNCTION IF EXISTS core.check_result_value_specimen();
DROP TRIGGER IF EXISTS trg_check_result_value_specimen ON core.result_numerical_specimen; 

CREATE TABLE core.result_numerical_specimen (
    result_numerical_specimen_id SERIAL PRIMARY KEY,
    observation_numerical_specimen_id INT NOT NULL,
    specimen_id INT NOT NULL,
    value NUMERIC NOT NULL,
    CONSTRAINT fk_observation_numerical_specimen
      FOREIGN KEY(observation_numerical_specimen_id)
	  REFERENCES core.observation_numerical_specimen(observation_numerical_specimen_id),
    CONSTRAINT fk_specimen
      FOREIGN KEY(specimen_id)
	  REFERENCES core.specimen(specimen_id)
);

COMMENT ON TABLE core.result_numerical_specimen IS 'Numerical results for the Specimen feature interest.';
COMMENT ON COLUMN core.result_numerical_specimen.result_numerical_specimen_id IS 'Synthetic primary key.';
COMMENT ON COLUMN core.result_numerical_specimen.observation_numerical_specimen_id IS 'Foreign key to the corresponding numerical observation.';
COMMENT ON COLUMN core.result_numerical_specimen.specimen_id IS 'Foreign key to the corresponding Specimen instance.';
COMMENT ON COLUMN core.result_numerical_specimen.value IS 'Numerical value resulting from applying the refered observation to the refered specimen.';


CREATE OR REPLACE FUNCTION core.check_result_value_specimen()
  RETURNS trigger AS
$$
DECLARE
    observation core.observation_numerical_specimen%ROWTYPE;
BEGIN
    SELECT *
      INTO observation
      FROM core.observation_numerical_specimen
     WHERE observation_numerical_specimen_id = NEW.observation_numerical_specimen_id;

    IF NEW.value < observation.value_min OR NEW.value > observation.value_max THEN
        RAISE EXCEPTION 'Result value outside admissable bounds for the related observation.';
    ELSE
        RETURN NEW;
    END IF;
END;
$$
LANGUAGE 'plpgsql';

COMMENT ON FUNCTION core.check_result_value_specimen IS 'Checks if the value assigned to a result record is within the numerical bounds declared in the related observation (fields value_min and value_max).';


CREATE TRIGGER trg_check_result_value_specimen
  BEFORE INSERT OR UPDATE
  ON core.result_numerical_specimen
  FOR EACH ROW
  EXECUTE PROCEDURE core.check_result_value_specimen();

COMMENT ON TRIGGER trg_check_result_value_specimen ON core.result_numerical_specimen IS 'Verifies if the value assigned to the result is valid. See the function core.ceck_result_value function for implementation.';
