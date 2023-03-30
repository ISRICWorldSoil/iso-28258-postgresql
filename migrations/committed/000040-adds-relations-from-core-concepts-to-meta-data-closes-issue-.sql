--! Previous: sha1:a32a1133975549dea1d85334a15d2d6489b4b2bb
--! Hash: sha1:c90680791caaed4a91769aafb1b2a0a58d10fd7c
--! Message: Adds relations from core concepts to meta-data (closes issue #12)

-- Enter migration here

ALTER TABLE core.project DROP CONSTRAINT IF EXISTS fk_organisation_id;
ALTER TABLE core.project DROP COLUMN IF EXISTS organisation_id;
ALTER TABLE core.project ADD COLUMN organisation_id INTEGER;
ALTER TABLE core.project ADD CONSTRAINT fk_organisation_id 
    FOREIGN KEY (organisation_id)
    REFERENCES metadata.organisation (organisation_id);

COMMENT ON COLUMN core.project.organisation_id IS 'Organisation responsible for the Project.';


ALTER TABLE core.specimen DROP CONSTRAINT IF EXISTS fk_organisation_id;
ALTER TABLE core.specimen DROP COLUMN IF EXISTS organisation_id;
ALTER TABLE core.specimen ADD COLUMN organisation_id INTEGER;
ALTER TABLE core.specimen ADD CONSTRAINT fk_organisation_id 
    FOREIGN KEY (organisation_id)
    REFERENCES metadata.organisation (organisation_id);

COMMENT ON COLUMN core.specimen.organisation_id IS 'Organisation where the specimen is stored.';


ALTER TABLE core.observation_phys_chem DROP CONSTRAINT IF EXISTS fk_individual_id;
ALTER TABLE core.observation_phys_chem DROP COLUMN IF EXISTS individual_id;
ALTER TABLE core.observation_phys_chem ADD COLUMN individual_id INTEGER;
ALTER TABLE core.observation_phys_chem ADD CONSTRAINT fk_individual_id 
    FOREIGN KEY (individual_id)
    REFERENCES metadata.individual (individual_id);

COMMENT ON COLUMN core.specimen.organisation_id IS 'Individual that is responsible for, or carried out, the process that produced this result.';


ALTER TABLE core.observation_numerical_specimen DROP CONSTRAINT IF EXISTS fk_individual_id;
ALTER TABLE core.observation_numerical_specimen DROP COLUMN IF EXISTS individual_id;
ALTER TABLE core.observation_numerical_specimen ADD COLUMN individual_id INTEGER;
ALTER TABLE core.observation_numerical_specimen ADD CONSTRAINT fk_individual_id 
    FOREIGN KEY (individual_id)
    REFERENCES metadata.individual (individual_id);

COMMENT ON COLUMN core.observation_numerical_specimen.individual_id IS 'Individual that is responsible for, or carried out, the process that produced this result.';


DROP TABLE IF EXISTS core.plot_individual;
CREATE TABLE core.plot_individual (
    plot_id INTEGER NOT NULL,
    individual_id INTEGER NOT NULL,
    UNIQUE(plot_id, individual_id),
    CONSTRAINT fk_plot FOREIGN KEY (plot_id)
        REFERENCES core.plot (plot_id),
    CONSTRAINT fk_individual FOREIGN KEY (individual_id)
        REFERENCES metadata.individual (individual_id)
);

COMMENT ON TABLE core.plot_individual IS 'Identifies the individual(s) responsible for surveying a plot';
COMMENT ON COLUMN core.plot_individual.plot_id IS 'Foreign key to the plot table, identifies the plot surveyed';
COMMENT ON COLUMN core.plot_individual.individual_id IS 'Foreign key to the individual table, indicates the individual responsible for surveying the plot.';


DROP TABLE IF EXISTS core.surface_individual;
CREATE TABLE core.surface_individual (
    surface_id INTEGER NOT NULL,
    individual_id INTEGER NOT NULL,
    UNIQUE(surface_id, individual_id),
    CONSTRAINT fk_surface FOREIGN KEY (surface_id)
        REFERENCES core.surface (surface_id),
    CONSTRAINT fk_individual FOREIGN KEY (individual_id)
        REFERENCES metadata.individual (individual_id)
);

COMMENT ON TABLE core.surface_individual IS 'Identifies the individual(s) responsible for surveying a surface';
COMMENT ON COLUMN core.surface_individual.surface_id IS 'Foreign key to the surface table, identifies the surface surveyed';
COMMENT ON COLUMN core.surface_individual.individual_id IS 'Foreign key to the individual table, indicates the individual responsible for surveying the surface.';
