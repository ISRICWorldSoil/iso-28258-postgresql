--! Previous: sha1:b134728c44cf265b23f3f47939ab306d51bc2644
--! Hash: sha1:12270ba6b5a50d05b60dff8f1843ddbdd4391830
--! Message: Creates Physio-Chemical Procedure table

-- Enter migration here

DROP TABLE IF EXISTS core.procedure_phys_chem;

CREATE TABLE core.procedure_phys_chem (
    procedure_phys_chem_id SERIAL PRIMARY KEY,
    broader_id INT,
    label VARCHAR NOT NULL,
    uri VARCHAR NOT NULL,
    CONSTRAINT fk_broader
      FOREIGN KEY(broader_id)
	  REFERENCES core.procedure_phys_chem(procedure_phys_chem_id)
);

COMMENT ON TABLE core.procedure_phys_chem IS 'Physio-chemical Procedures for the Profile Element feature of interest';
COMMENT ON COLUMN core.procedure_phys_chem.procedure_phys_chem_id IS 'Synthetic primary key for the procedure';
COMMENT ON COLUMN core.procedure_phys_chem.broader_id IS 'Foreign key to brader procedure in the hierarchy';
COMMENT ON COLUMN core.procedure_phys_chem.label IS 'Short label for this procedure';
COMMENT ON COLUMN core.procedure_phys_chem.uri IS 'URI to the corresponding in a controlled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this procedure';
