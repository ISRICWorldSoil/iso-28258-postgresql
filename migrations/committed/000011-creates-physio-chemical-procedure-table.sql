--! Previous: sha1:47d4488a16827c121f95b85ae440cc607b8c49ee
--! Hash: sha1:9cbc614ce74fde0e4a0c8ee5878074de5bcce423
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
