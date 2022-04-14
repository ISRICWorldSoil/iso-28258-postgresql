--! Previous: sha1:05221657b41516843f10cdfe6cab84f2538155b2
--! Hash: sha1:4b871926d8ccf5bb065ef1f8e6e9c0a0cbd49a99
--! Message: Creates Descriptive Procedure table

-- Enter migration here

DROP TABLE IF EXISTS core.procedure;

CREATE TABLE core.procedure (
    procedure_id SERIAL PRIMARY KEY,
    broader_id INT,
    label VARCHAR NOT NULL,
    uri VARCHAR NOT NULL,
    CONSTRAINT fk_broader
      FOREIGN KEY(broader_id)
	  REFERENCES core.procedure(procedure_id)
);

COMMENT ON TABLE core.procedure IS 'Procedures for the Surface feature of interest';
COMMENT ON COLUMN core.procedure.procedure_id IS 'Synthetic primary key for the procedure';
COMMENT ON COLUMN core.procedure.broader_id IS 'Foreign key to brader procedure in the hierarchy';
COMMENT ON COLUMN core.procedure.label IS 'Short label for this procedure';
COMMENT ON COLUMN core.procedure.uri IS 'URI to the corresponding in a controlled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this procedure';
