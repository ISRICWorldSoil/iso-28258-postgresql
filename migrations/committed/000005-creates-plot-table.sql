--! Previous: sha1:5f0b39346b051a1241bd10b6f8601249c890e77f
--! Hash: sha1:013ce77c80875a35bd57625ff5b2f653239fa51f
--! Message: Creates Plot table

-- Enter migration here

DROP TABLE IF EXISTS core.plot;

CREATE TABLE core.plot (
  plot_id SERIAL PRIMARY KEY,
  plot_code VARCHAR,
  site_id INT NOT NULL,
  altitude NUMERIC CHECK (altitude > -100) CHECK (altitude < 8000),
  time_stamp DATE CHECK (time_stamp > '1900-01-01'),
  map_sheet_code VARCHAR,
  positional_accuracy NUMERIC,
  position GEOMETRY(Point, 4326),
  CONSTRAINT fk_site
    FOREIGN KEY(site_id)
    REFERENCES core.site(site_id)
);

COMMENT ON TABLE core.plot
    IS 'Elementary area or location where individual observations are made and/or samples are taken. Plot is the main spatial feature of interest in ISO-28258. Plot has three sub-classes: Borehole, Pit and Surface. Surface features its own table since it has its own properties and a different geometry.';

COMMENT ON COLUMN core.plot.plot_id
    IS 'Synthetic primary key.';

COMMENT ON COLUMN core.plot.plot_code
    IS 'Natural key, can be null.';

COMMENT ON COLUMN core.plot.altitude
    IS 'Altitude at the plot in metres, if known. Property re-used from GloSIS.';

COMMENT ON COLUMN core.plot.time_stamp
    IS 'Time stamp of the plot, if known. Property re-used from GloSIS.';

COMMENT ON COLUMN core.plot.map_sheet_code
    IS 'Code identifying the map sheet where the plot may be positioned. Property re-used from GloSIS.';

COMMENT ON COLUMN core.plot.position
    IS 'Geodetic coordinates of the spatial position of the plot. Note the uncertainty associated with WGS84 datum ensemble.';
