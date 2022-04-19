--! Previous: sha1:c26e4467b186275059bc275272f82f4885bfbfe7
--! Hash: sha1:d6cec89b7ebe9a0943de917059fafa5862174af9
--! Message: Creates tables for descriptives thesaurus

-- Enter migration here

DROP TABLE IF EXISTS core.thesaurus_desc_surface;
DROP TABLE IF EXISTS core.thesaurus_desc_plot;
DROP TABLE IF EXISTS core.thesaurus_desc_profile;
DROP TABLE IF EXISTS core.thesaurus_desc_element;

CREATE TABLE core.thesaurus_desc_surface (
    thesaurus_desc_surface_id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    uri VARCHAR NOT NULL
);

COMMENT ON TABLE core.thesaurus_desc_surface IS 'Descriptive properties for the Surface feature of interest';
COMMENT ON COLUMN core.thesaurus_desc_surface.thesaurus_desc_surface_id IS 'Synthetic primary key for this term';
COMMENT ON COLUMN core.thesaurus_desc_surface.label IS 'Short label for this term';
COMMENT ON COLUMN core.thesaurus_desc_surface.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this term';

CREATE TABLE core.thesaurus_desc_plot (
    thesaurus_desc_plot_id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    uri VARCHAR NOT NULL
);

COMMENT ON TABLE core.thesaurus_desc_plot IS 'Descriptive properties for the Plot feature of interest';
COMMENT ON COLUMN core.thesaurus_desc_plot.thesaurus_desc_plot_id IS 'Synthetic primary key for this term';
COMMENT ON COLUMN core.thesaurus_desc_plot.label IS 'Short label for this term';
COMMENT ON COLUMN core.thesaurus_desc_plot.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this term';

CREATE TABLE core.thesaurus_desc_profile (
    thesaurus_desc_profile_id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    uri VARCHAR NOT NULL
);

COMMENT ON TABLE core.thesaurus_desc_profile IS 'Descriptive properties for the Profile feature of interest';
COMMENT ON COLUMN core.thesaurus_desc_profile.thesaurus_desc_profile_id IS 'Synthetic primary key for this term';
COMMENT ON COLUMN core.thesaurus_desc_profile.label IS 'Short label for this term';
COMMENT ON COLUMN core.thesaurus_desc_profile.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this term';

CREATE TABLE core.thesaurus_desc_element (
    thesaurus_desc_element_id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    uri VARCHAR NOT NULL
);

COMMENT ON TABLE core.thesaurus_desc_element IS 'Descriptive properties for the Element feature of interest';
COMMENT ON COLUMN core.thesaurus_desc_element.thesaurus_desc_element_id IS 'Synthetic primary key for this term';
COMMENT ON COLUMN core.thesaurus_desc_element.label IS 'Short label for this term';
COMMENT ON COLUMN core.thesaurus_desc_element.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this term';
