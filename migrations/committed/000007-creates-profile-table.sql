--! Previous: sha1:6d221e634c0cee82c9087bd8fa98cc8fdd8d0717
--! Hash: sha1:21eb696f197d2382b2f32ca939e0c63744407d13
--! Message: Creates Profile table

-- Enter migration here

CREATE TABLE core.profile (
    profile_id SERIAL PRIMARY KEY,
    profile_code VARCHAR,
    plot_id INT,
    surface_id INT,
    CONSTRAINT fk_plot_id
      FOREIGN KEY(plot_id)
	  REFERENCES core.plot(plot_id),
    CONSTRAINT fk_surface_id
      FOREIGN KEY(surface_id)
	  REFERENCES core.surface(surface_id),
    CONSTRAINT site_mandatory_foi
        CHECK ((plot_id IS NOT NULL OR surface_id IS NOT NULL)
          AND NOT (plot_id IS NOT NULL AND surface_id IS NOT NULL))
);

COMMENT ON TABLE core.profile IS 'An abstract, ordered set of soil horizons and/or layers.';
COMMENT ON COLUMN core.profile.profile_id IS 'Synthetic primary key';
COMMENT ON COLUMN core.profile.profile_code IS 'Natural primary key, if existing';
COMMENT ON COLUMN core.profile.plot_id IS 'Foreign key to Plot feature of interest';
COMMENT ON COLUMN core.profile.surface_id IS 'Foreign key to Surface feature of interest';
