--! Previous: sha1:7c11261f47530390efbc9708cbde789edbb54fbb
--! Hash: sha1:05221657b41516843f10cdfe6cab84f2538155b2
--! Message: Creates Descriptive Property tables

-- Enter migration here

DROP TABLE IF EXISTS core.property_desc_surface;
DROP TABLE IF EXISTS core.property_desc_site;
DROP TABLE IF EXISTS core.property_desc_profile;
DROP TABLE IF EXISTS core.property_desc_element;

CREATE TABLE core.property_desc_surface (
    property_desc_surface_id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    uri VARCHAR NOT NULL
);

COMMENT ON TABLE core.property_desc_surface IS 'Descriptive properties for the Surface feature of interest';
COMMENT ON COLUMN core.property_desc_surface.property_desc_surface_id IS 'Synthetic primary key for the property';
COMMENT ON COLUMN core.property_desc_surface.label IS 'Short label for this property';
COMMENT ON COLUMN core.property_desc_surface.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this property';

CREATE TABLE core.property_desc_site (
    property_desc_site_id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    uri VARCHAR NOT NULL
);

COMMENT ON TABLE core.property_desc_site IS 'Descriptive properties for the Site feature of interest';
COMMENT ON COLUMN core.property_desc_site.property_desc_site_id IS 'Synthetic primary key for the property';
COMMENT ON COLUMN core.property_desc_site.label IS 'Short label for this property';
COMMENT ON COLUMN core.property_desc_site.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this property';

CREATE TABLE core.property_desc_profile (
    property_desc_profile_id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    uri VARCHAR NOT NULL
);

COMMENT ON TABLE core.property_desc_profile IS 'Descriptive properties for the Profile feature of interest';
COMMENT ON COLUMN core.property_desc_profile.property_desc_profile_id IS 'Synthetic primary key for the property';
COMMENT ON COLUMN core.property_desc_profile.label IS 'Short label for this property';
COMMENT ON COLUMN core.property_desc_profile.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this property';

CREATE TABLE core.property_desc_element (
    property_desc_element_id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    uri VARCHAR NOT NULL
);

COMMENT ON TABLE core.property_desc_element IS 'Descriptive properties for the Element feature of interest';
COMMENT ON COLUMN core.property_desc_element.property_desc_element_id IS 'Synthetic primary key for the property';
COMMENT ON COLUMN core.property_desc_element.label IS 'Short label for this property';
COMMENT ON COLUMN core.property_desc_element.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this property';
