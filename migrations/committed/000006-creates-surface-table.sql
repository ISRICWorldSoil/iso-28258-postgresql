--! Previous: sha1:013ce77c80875a35bd57625ff5b2f653239fa51f
--! Hash: sha1:6d221e634c0cee82c9087bd8fa98cc8fdd8d0717
--! Message: Creates Surface table

-- Enter migration here

DROP TABLE IF EXISTS core.surface;

CREATE TABLE core.surface (
    surface_id SERIAL PRIMARY KEY,
    super_surface_id INT,
    site_id INT NOT NULL,
    shape GEOMETRY(Polygon, 4326),
    CONSTRAINT fk_surface
      FOREIGN KEY(super_surface_id)
	  REFERENCES core.surface(surface_id),
    CONSTRAINT fk_site
      FOREIGN KEY(site_id)
	  REFERENCES core.site(site_id)
);

COMMENT ON TABLE core.surface IS 'Surface is a subtype of Plot with a shape geometry. Surfaces may be located within other
surfaces.';
COMMENT ON COLUMN core.surface.surface_id IS 'Reference to super-surface, used in case the surface is located within another surface.';
COMMENT ON COLUMN core.surface.site_id IS 'Foreign key to Site table';
COMMENT ON COLUMN core.surface.shape
    IS 'Site extent expressed with geodetic coordinates of the site. Note the uncertainty associated with the WGS84 datum ensemble.';
