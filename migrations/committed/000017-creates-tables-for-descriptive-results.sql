--! Previous: sha1:ea9d98f9093e33ade805c30f00f1a583cf51c4ed
--! Hash: sha1:fd9d2777699ec643268f3e12b835590a0568ae5f
--! Message: Creates tables for descriptive results

-- Enter migration here

DROP TABLE IF EXISTS core.result_desc_surface;

CREATE TABLE core.result_desc_surface (
    observation_desc_surface_id INT NOT NULL,
    surface_id INT NOT NULL,
    PRIMARY KEY (observation_desc_surface_id, surface_id),
    CONSTRAINT fk_observation_desc_surface
      FOREIGN KEY(observation_desc_surface_id)
	  REFERENCES core.observation_desc_surface(observation_desc_surface_id),
    CONSTRAINT fk_surface
      FOREIGN KEY(surface_id)
	  REFERENCES core.surface(surface_id)
);

COMMENT ON TABLE core.result_desc_surface IS 'Descriptive results for the Surface feature interest.';
COMMENT ON COLUMN core.result_desc_surface.observation_desc_surface_id IS 'Foreign key to the corresponding descriptive observation.';
COMMENT ON COLUMN core.result_desc_surface.surface_id IS 'Foreign key to the corresponding Surface feature of interest.';

CREATE TABLE core.result_desc_plot (
    observation_desc_plot_id INT NOT NULL,
    plot_id INT NOT NULL,
    PRIMARY KEY (observation_desc_plot_id, plot_id),
    CONSTRAINT fk_observation_desc_plot
      FOREIGN KEY(observation_desc_plot_id)
	  REFERENCES core.observation_desc_plot(observation_desc_plot_id),
    CONSTRAINT fk_plot
      FOREIGN KEY(plot_id)
	  REFERENCES core.plot(plot_id)
);

COMMENT ON TABLE core.result_desc_plot IS 'Descriptive results for the Plot feature interest.';
COMMENT ON COLUMN core.result_desc_plot.observation_desc_plot_id IS 'Foreign key to the corresponding descriptive observation.';
COMMENT ON COLUMN core.result_desc_plot.plot_id IS 'Foreign key to the corresponding Plot feature of interest.';

CREATE TABLE core.result_desc_profile (
    observation_desc_profile_id INT NOT NULL,
    profile_id INT NOT NULL,
    PRIMARY KEY (observation_desc_profile_id, profile_id),
    CONSTRAINT fk_observation_desc_profile
      FOREIGN KEY(observation_desc_profile_id)
	  REFERENCES core.observation_desc_profile(observation_desc_profile_id),
    CONSTRAINT fk_profile
      FOREIGN KEY(profile_id)
	  REFERENCES core.profile(profile_id)
);

COMMENT ON TABLE core.result_desc_profile IS 'Descriptive results for the Profile feature interest.';
COMMENT ON COLUMN core.result_desc_profile.observation_desc_profile_id IS 'Foreign key to the corresponding descriptive observation.';
COMMENT ON COLUMN core.result_desc_profile.profile_id IS 'Foreign key to the corresponding Profile feature of interest.';

CREATE TABLE core.result_desc_element (
    observation_desc_element_id INT NOT NULL,
    element_id INT NOT NULL,
    PRIMARY KEY (observation_desc_element_id, element_id),
    CONSTRAINT fk_observation_desc_element
      FOREIGN KEY(observation_desc_element_id)
	  REFERENCES core.observation_desc_element(observation_desc_element_id),
    CONSTRAINT fk_element
      FOREIGN KEY(element_id)
	  REFERENCES core.element(element_id)
);

COMMENT ON TABLE core.result_desc_element IS 'Descriptive results for the Element feature interest.';
COMMENT ON COLUMN core.result_desc_element.observation_desc_element_id IS 'Foreign key to the corresponding descriptive observation.';
COMMENT ON COLUMN core.result_desc_element.element_id IS 'Foreign key to the corresponding Element feature of interest.';
