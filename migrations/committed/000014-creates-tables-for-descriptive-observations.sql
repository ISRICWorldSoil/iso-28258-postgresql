--! Previous: sha1:d6cec89b7ebe9a0943de917059fafa5862174af9
--! Hash: sha1:fc21753c7e8689427d370a0a24b5ed21ed003595
--! Message: Creates tables for descriptive observations

-- Enter migration here

DROP TABLE IF EXISTS core.observation_desc_surface;
DROP TABLE IF EXISTS core.observation_desc_plot;
DROP TABLE IF EXISTS core.observation_desc_profile;
DROP TABLE IF EXISTS core.observation_desc_element;

CREATE TABLE core.observation_desc_surface (
    observation_desc_surface_id SERIAL PRIMARY KEY,
    property_desc_surface_id INT NOT NULL,
    thesaurus_desc_surface_id INT NOT NULL,
    UNIQUE(property_desc_surface_id, thesaurus_desc_surface_id)
);

COMMENT ON TABLE core.observation_desc_surface IS 'Descriptive properties for the Surface feature of interest';
COMMENT ON COLUMN core.observation_desc_surface.observation_desc_surface_id IS 'Synthetic primary key for the observation';
COMMENT ON COLUMN core.observation_desc_surface.property_desc_surface_id IS 'Foreign key to the corresponding property';
COMMENT ON COLUMN core.observation_desc_surface.thesaurus_desc_surface_id IS 'Foreign key to the corresponding thesaurus entry';

CREATE TABLE core.observation_desc_plot (
    observation_desc_plot_id SERIAL PRIMARY KEY,
    property_desc_plot_id INT NOT NULL,
    thesaurus_desc_plot_id INT NOT NULL,
    UNIQUE(property_desc_plot_id, thesaurus_desc_plot_id)
);

COMMENT ON TABLE core.observation_desc_plot IS 'Descriptive properties for the Surface feature of interest';
COMMENT ON COLUMN core.observation_desc_plot.observation_desc_plot_id IS 'Synthetic primary key for the observation';
COMMENT ON COLUMN core.observation_desc_plot.property_desc_plot_id IS 'Foreign key to the corresponding property';
COMMENT ON COLUMN core.observation_desc_plot.thesaurus_desc_plot_id IS 'Foreign key to the corresponding thesaurus entry';

CREATE TABLE core.observation_desc_profile (
    observation_desc_profile_id SERIAL PRIMARY KEY,
    property_desc_profile_id INT NOT NULL,
    thesaurus_desc_profile_id INT NOT NULL,
    UNIQUE(property_desc_profile_id, thesaurus_desc_profile_id)
);

COMMENT ON TABLE core.observation_desc_profile IS 'Descriptive properties for the Surface feature of interest';
COMMENT ON COLUMN core.observation_desc_profile.observation_desc_profile_id IS 'Synthetic primary key for the observation';
COMMENT ON COLUMN core.observation_desc_profile.property_desc_profile_id IS 'Foreign key to the corresponding property';
COMMENT ON COLUMN core.observation_desc_profile.thesaurus_desc_profile_id IS 'Foreign key to the corresponding thesaurus entry';

CREATE TABLE core.observation_desc_element (
    observation_desc_element_id SERIAL PRIMARY KEY,
    property_desc_element_id INT NOT NULL,
    thesaurus_desc_element_id INT NOT NULL,
    UNIQUE(property_desc_element_id, thesaurus_desc_element_id)
);

COMMENT ON TABLE core.observation_desc_element IS 'Descriptive properties for the Surface feature of interest';
COMMENT ON COLUMN core.observation_desc_element.observation_desc_element_id IS 'Synthetic primary key for the observation';
COMMENT ON COLUMN core.observation_desc_element.property_desc_element_id IS 'Foreign key to the corresponding property';
COMMENT ON COLUMN core.observation_desc_element.thesaurus_desc_element_id IS 'Foreign key to the corresponding thesaurus entry';
