--! Previous: sha1:9cbc614ce74fde0e4a0c8ee5878074de5bcce423
--! Hash: sha1:c26e4467b186275059bc275272f82f4885bfbfe7
--! Message: Recreates tables for descriptive properties

-- Enter migration here

DROP TABLE IF EXISTS core.property_desc_surface;
DROP TABLE IF EXISTS core.property_desc_plot;
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

CREATE TABLE core.property_desc_plot (
    property_desc_plot_id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    uri VARCHAR NOT NULL
);

COMMENT ON TABLE core.property_desc_plot IS 'Descriptive properties for the Plot feature of interest';
COMMENT ON COLUMN core.property_desc_plot.property_desc_plot_id IS 'Synthetic primary key for the property';
COMMENT ON COLUMN core.property_desc_plot.label IS 'Short label for this property';
COMMENT ON COLUMN core.property_desc_plot.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this property';

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
