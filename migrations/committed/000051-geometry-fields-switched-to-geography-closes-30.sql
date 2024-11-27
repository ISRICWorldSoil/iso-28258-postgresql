--! Previous: sha1:f2adbfcb10b7e36e34bd50d9fab542c670403701
--! Hash: sha1:c9c275d05d2129663e981695311fee2c58122384
--! Message: Geometry fields switched to Geography (closes #30)

-- Enter migration here

ALTER TABLE core.site DROP CONSTRAINT IF EXISTS site_mandatory_geometry;
ALTER TABLE core.site DROP COLUMN IF EXISTS position;
ALTER TABLE core.site DROP COLUMN IF EXISTS extent;

ALTER TABLE core.site ADD COLUMN position GEOGRAPHY(Point);
ALTER TABLE core.site ADD COLUMN extent GEOGRAPHY(Polygon);
  
ALTER TABLE core.site ADD CONSTRAINT site_mandatory_geometry
CHECK ((position IS NOT NULL OR extent IS NOT NULL)
  AND NOT (position IS NOT NULL AND extent IS NOT NULL));

COMMENT ON COLUMN core.site.position
    IS 'Geodetic coordinates of the spatial position of the site. Note the uncertainty associated with the WGS84 datum ensemble.';

COMMENT ON COLUMN core.site.extent
    IS 'Site extent expressed with geodetic coordinates of the site. Note the uncertainty associated with the WGS84 datum ensemble.';


ALTER TABLE core.plot DROP COLUMN IF EXISTS position;

ALTER TABLE core.plot ADD COLUMN position GEOGRAPHY(Point);

COMMENT ON COLUMN core.plot.position
    IS 'Geodetic coordinates of the spatial position of the plot. Note the uncertainty associated with the WGS84 datum ensemble.';
