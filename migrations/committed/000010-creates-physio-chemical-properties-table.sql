--! Previous: sha1:05221657b41516843f10cdfe6cab84f2538155b2
--! Hash: sha1:b134728c44cf265b23f3f47939ab306d51bc2644
--! Message: Creates physio-chemical properties table

-- Enter migration here

DROP TABLE IF EXISTS core.property_phys_chem;

CREATE TABLE core.property_phys_chem (
    property_phys_chem_id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    uri VARCHAR NOT NULL
);

COMMENT ON TABLE core.property_phys_chem IS 'Physio-chemical properties for the Element feature of interest';
COMMENT ON COLUMN core.property_phys_chem.property_phys_chem_id IS 'Synthetic primary key for the property';
COMMENT ON COLUMN core.property_phys_chem.label IS 'Short label for this property';
COMMENT ON COLUMN core.property_phys_chem.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this property';
