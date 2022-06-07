--! Previous: sha1:ccbb4754ff05edb22ab65a646b38596a1d46d061
--! Hash: sha1:b5c2dc771cb6465ee251fe5074333baff62e5e8f
--! Message: Creates tables for descriptive observations for Specimen (issue #6)

-- Enter migration here

DROP TABLE IF EXISTS core.property_desc_specimen;

CREATE TABLE core.property_desc_specimen (
    property_desc_specimen_id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    definition VARCHAR NOT NULL
);

COMMENT ON TABLE core.property_desc_specimen IS 'Descriptive properties for the Specimen feature of interest';
COMMENT ON COLUMN core.property_desc_specimen.property_desc_specimen_id IS 'Synthetic primary key for the property';
COMMENT ON COLUMN core.property_desc_specimen.label IS 'Short label for this property';
COMMENT ON COLUMN core.property_desc_specimen.definition IS 'Full semantic definition of this property, can be a URI to the corresponding code in a controled vocabulary (e.g. GloSIS).';


DROP TABLE IF EXISTS core.thesaurus_desc_specimen;

CREATE TABLE core.thesaurus_desc_specimen (
    thesaurus_desc_specimen_id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    definition VARCHAR NOT NULL
);

COMMENT ON TABLE core.thesaurus_desc_specimen IS 'Descriptive properties for the Specimen feature of interest';
COMMENT ON COLUMN core.thesaurus_desc_specimen.thesaurus_desc_specimen_id IS 'Synthetic primary key for this term';
COMMENT ON COLUMN core.thesaurus_desc_specimen.label IS 'Short label for this term';
COMMENT ON COLUMN core.thesaurus_desc_specimen.definition IS 'Full semantic definition of this term, can be a URI to the corresponding code in a controled vocabulary (e.g. GloSIS).';


DROP TABLE IF EXISTS core.observation_desc_specimen;

CREATE TABLE core.observation_desc_specimen (
    observation_desc_specimen_id SERIAL PRIMARY KEY,
    property_desc_specimen_id INT NOT NULL,
    thesaurus_desc_specimen_id INT NOT NULL,
    UNIQUE(property_desc_specimen_id, thesaurus_desc_specimen_id),
    CONSTRAINT fk_property_desc_specimen
      FOREIGN KEY(property_desc_specimen_id)
	  REFERENCES core.property_desc_specimen(property_desc_specimen_id),
    CONSTRAINT fk_thesaurus_desc_specimen
      FOREIGN KEY(thesaurus_desc_specimen_id)
	  REFERENCES core.thesaurus_desc_specimen(thesaurus_desc_specimen_id)
);

COMMENT ON TABLE core.observation_desc_specimen IS 'Descriptive properties for the Specimen feature of interest';
COMMENT ON COLUMN core.observation_desc_specimen.observation_desc_specimen_id IS 'Synthetic primary key for the observation';
COMMENT ON COLUMN core.observation_desc_specimen.property_desc_specimen_id IS 'Foreign key to the corresponding property';
COMMENT ON COLUMN core.observation_desc_specimen.thesaurus_desc_specimen_id IS 'Foreign key to the corresponding thesaurus entry';


DROP TABLE IF EXISTS core.result_desc_specimen;

CREATE TABLE core.result_desc_specimen (
    observation_desc_specimen_id INT NOT NULL,
    specimen_id INT NOT NULL,
    PRIMARY KEY (observation_desc_specimen_id, specimen_id),
    CONSTRAINT fk_observation_desc_specimen
      FOREIGN KEY(observation_desc_specimen_id)
	  REFERENCES core.observation_desc_specimen(observation_desc_specimen_id),
    CONSTRAINT fk_specimen
      FOREIGN KEY(specimen_id)
	  REFERENCES core.specimen(specimen_id)
);

COMMENT ON TABLE core.result_desc_specimen IS 'Descriptive results for the Specimen feature interest.';
COMMENT ON COLUMN core.result_desc_specimen.observation_desc_specimen_id IS 'Foreign key to the corresponding descriptive observation.';
COMMENT ON COLUMN core.result_desc_specimen.specimen_id IS 'Foreign key to the corresponding Specimen feature of interest.';
