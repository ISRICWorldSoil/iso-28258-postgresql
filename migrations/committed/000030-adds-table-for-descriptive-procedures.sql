--! Previous: sha1:dfa6fec946f81c49aec915bfad9e86e64a712f99
--! Hash: sha1:07a0ec67b6da94ec8903be6cad135934303d67a1
--! Message: Adds table for descriptive procedures

-- Enter migration here

DROP TABLE IF EXISTS core.procedure_desc;
CREATE TABLE core.procedure_desc (
    procedure_desc_id SERIAL NOT NULL,
    label VARCHAR NOT NULL,
    reference VARCHAR, 
    uri VARCHAR NOT NULL,
    UNIQUE(uri)
);

COMMENT ON TABLE core.procedure_desc
    IS 'Descriptive Procedures for all features of interest. In most cases the procedure is described in a document such as the FAO Guidelines for Soil Description or the World Reference Base of Soil Resources.';

COMMENT ON COLUMN core.procedure_desc.procedure_desc_id
    IS 'Synthetic primary key for the procedure.';

COMMENT ON COLUMN core.procedure_desc.label
    IS 'Short label for this procedure.';

COMMENT ON COLUMN core.procedure_desc.reference
    IS 'Long and human readable reference to the publication.';

COMMENT ON COLUMN core.procedure_desc.uri
    IS 'URI to the corresponding publication, optimally a DOI. Follow this URI for the full definition of the procedure.';


INSERT INTO core.procedure_desc (label, reference, uri)
VALUES ('FAO GfSD 2006', 
        'Food and Agriculture Organisation of the United Nations, Guidelines for Soil Description, Fourth Edition, 2006.', 
        'https://www.fao.org/publications/card/en/c/903943c7-f56a-521a-8d32-459e7e0cdae9/');
