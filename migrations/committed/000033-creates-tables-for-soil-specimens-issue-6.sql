--! Previous: sha1:3a76d60d831c24215b1b3109f770f81b1fbc1c84
--! Hash: sha1:ccbb4754ff05edb22ab65a646b38596a1d46d061
--! Message: Creates tables for soil specimens (issue #6)

-- Enter migration here

DROP TABLE IF EXISTS core.specimen_transport;
CREATE TABLE core.specimen_transport(
    specimen_transport_id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    definition VARCHAR,
    UNIQUE(definition)
);

COMMENT ON TABLE core.specimen_transport IS 'Modes of transport of a soil Specimen, part of the Specimen preparation process.';
COMMENT ON COLUMN core.specimen_transport.specimen_transport_id IS 'Synthetic primary key for the transport mode.';
COMMENT ON COLUMN core.specimen_transport.label IS 'Short label for the transport mode.';
COMMENT ON COLUMN core.specimen_transport.definition IS 'Long definition providing all the necessary details for the transport mode.';


DROP TABLE IF EXISTS core.specimen_storage;
CREATE TABLE core.specimen_storage(
    specimen_storage_id SERIAL PRIMARY KEY,
    label VARCHAR NOT NULL,
    definition VARCHAR,
    UNIQUE(definition)
);

COMMENT ON TABLE core.specimen_storage IS 'Modes of storage of a soil Specimen, part of the Specimen preparation process.';
COMMENT ON COLUMN core.specimen_storage.specimen_storage_id IS 'Synthetic primary key for the storage mode.';
COMMENT ON COLUMN core.specimen_storage.label IS 'Short label for the storage mode.';
COMMENT ON COLUMN core.specimen_storage.definition IS 'Long definition providing all the necessary details for the storage mode.';


DROP TABLE IF EXISTS core.specimen_prep_process;
CREATE TABLE core.specimen_prep_process(
    specimen_prep_process_id SERIAL PRIMARY KEY,
    specimen_transport_id INTEGER,
    specimen_storage_id INTEGER,
    definition VARCHAR NOT NULL,
    UNIQUE(definition),
    CONSTRAINT fk_specimen_transport
      FOREIGN KEY(specimen_transport_id)
      REFERENCES core.specimen_transport(specimen_transport_id),
    CONSTRAINT fk_specimen_storage
      FOREIGN KEY(specimen_storage_id)
      REFERENCES core.specimen_storage(specimen_storage_id)
);

COMMENT ON TABLE core.specimen_prep_process IS 'Describes the preparation process of a soil Specimen. Contains information that does not result from observation(s).';
COMMENT ON COLUMN core.specimen_prep_process.specimen_prep_process_id IS 'Synthetic primary key for the preparation process';
COMMENT ON COLUMN core.specimen_prep_process.specimen_transport_id IS 'Foreign key for the corresponding mode of transport';
COMMENT ON COLUMN core.specimen_prep_process.specimen_storage_id IS 'Foreign key for the corresponding mode of storage';
COMMENT ON COLUMN core.specimen_prep_process.definition IS 'Further details necessary to define the preparation process.';


DROP TABLE IF EXISTS core.specimen;
CREATE TABLE core.specimen(
    specimen_id SERIAL PRIMARY KEY,
    code VARCHAR,
    plot_id INTEGER NOT NULL,
    specimen_prep_process_id INTEGER,
    depth INTEGER NOT NULL,
    UNIQUE(code),
    CONSTRAINT fk_plot
      FOREIGN KEY(plot_id)
      REFERENCES core.plot(plot_id),
    CONSTRAINT fk_specimen_prep_process
      FOREIGN KEY(specimen_prep_process_id)
      REFERENCES core.specimen_prep_process(specimen_prep_process_id)
);
 
COMMENT ON TABLE core.specimen IS 'Soil Specimen is defined in ISO-28258 as: "a subtype of SF_Specimen. Soil Specimen may be taken in the Site, Plot, Profile, or ProfileElement including their subtypes." In this database Specimen is for now only associated to Plot for simplification.';
COMMENT ON COLUMN core.specimen.specimen_id IS 'Synthetic primary key for the soil Specimen.';
COMMENT ON COLUMN core.specimen.code IS 'External code used to identify the soil Specimen (if used).';
COMMENT ON COLUMN core.specimen.plot_id IS 'Foreign key to the associated soil Plot';
COMMENT ON COLUMN core.specimen.specimen_prep_process_id IS 'Foreign key to the preparation process used on this soil Specimen.';
COMMENT ON COLUMN core.specimen.depth IS 'Soil depth in centimetres at which the Specimen was collected.';
