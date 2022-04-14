--! Previous: sha1:4b871926d8ccf5bb065ef1f8e6e9c0a0cbd49a99
--! Hash: sha1:c571684b0060125152930746e31b19aec294b506
--! Message: Creates Physio-Chemical Property table

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
