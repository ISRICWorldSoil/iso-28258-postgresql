--! Previous: sha1:b845aaf9d1e0c5004d5598eb0d76f310f714d137
--! Hash: sha1:89461e95c2364bc1606e190ea185efc7ccd7863e
--! Message: Creates tables for physio-chemical observations

-- Enter migration here

DROP TABLE IF EXISTS core.observation_phys_chem;
DROP TABLE IF EXISTS core.observation_phys_chem;

CREATE TABLE core.unit_of_measure (
    unit_of_measure_id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    uri VARCHAR NOT NULL
);

COMMENT ON TABLE core.unit_of_measure IS 'Unit of measure';
COMMENT ON COLUMN core.unit_of_measure.unit_of_measure_id IS 'Synthetic primary key for the property';
COMMENT ON COLUMN core.unit_of_measure.label IS 'Short label for this unit of measure';
COMMENT ON COLUMN core.unit_of_measure.uri IS 'URI to the corresponding unit of measuree in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this unit of measure';


CREATE TABLE core.observation_phys_chem (
    observation_phys_chem_id SERIAL PRIMARY KEY,
    property_phys_chem_id INT NOT NULL,
    procedure_phys_chem_id INT NOT NULL,
    unit_of_measure_id INT NOT NULL,
    UNIQUE(property_phys_chem_id, procedure_phys_chem_id),
    CONSTRAINT fk_property_phys_chem
      FOREIGN KEY(property_phys_chem_id)
	  REFERENCES core.property_phys_chem(property_phys_chem_id),
    CONSTRAINT fk_procedure_phys_chem
      FOREIGN KEY(procedure_phys_chem_id)
	  REFERENCES core.procedure_phys_chem(procedure_phys_chem_id),
    CONSTRAINT fk_unit_of_measure
      FOREIGN KEY(unit_of_measure_id)
	  REFERENCES core.unit_of_measure(unit_of_measure_id)
);

COMMENT ON TABLE core.observation_phys_chem IS 'Physio-chemical observations for the Element feature of interest';
COMMENT ON COLUMN core.observation_phys_chem.observation_phys_chem_id IS 'Synthetic primary key for the observation';
COMMENT ON COLUMN core.observation_phys_chem.property_phys_chem_id IS 'Foreign key to the corresponding property';
COMMENT ON COLUMN core.observation_phys_chem.procedure_phys_chem_id IS 'Foreign key to the corresponding procedure';
COMMENT ON COLUMN core.observation_phys_chem.unit_of_measure_id IS 'Foreign key to the corresponding unit of measure (if applicable)';
