--! Previous: sha1:5170c2cef1301bc025bd87db6083244b0a78d9e6
--! Hash: sha1:5f0b39346b051a1241bd10b6f8601249c890e77f
--! Message: Creates Site tables

-- Enter migration here

DROP TABLE IF EXISTS core.site;

CREATE TABLE core.site (
  site_id SERIAL PRIMARY KEY,
  site_code VARCHAR,
  position GEOMETRY(Point, 4326),
  extent GEOMETRY(Polygon, 4326),
  CONSTRAINT site_mandatory_geometry
        CHECK ((position IS NOT NULL OR extent IS NOT NULL)
          AND NOT (position IS NOT NULL AND extent IS NOT NULL))
);

COMMENT ON TABLE core.site
    IS 'Defined area which is subject to a soil quality investigation. Site is not a spatial feature of interest, but provides the link between the spatial features of interest (Plot) to the Project. The geometry can either be a location (point) or extent (polygon) but not both at the same time.';

COMMENT ON COLUMN core.site.site_id
    IS 'Synthetic primary key.';

COMMENT ON COLUMN core.site.site_code
    IS 'Natural key, can be null.';

COMMENT ON COLUMN core.site.position
    IS 'Geodetic coordinates of the spatial position of the site. Note the uncertainty associated with WGS84 datum ensemble.';

COMMENT ON COLUMN core.site.extent
    IS 'Site extent expressed with geodetic coordinates of the site. Note the uncertainty associated with WGS84 datum ensemble.';


DROP TABLE IF EXISTS core.site_project;

CREATE TABLE core.site_project (
    site_id INT,
    project_id INT,
    PRIMARY KEY (site_id, project_id),
    CONSTRAINT fk_site
      FOREIGN KEY(site_id)
	  REFERENCES core.site(site_id),
    CONSTRAINT fk_project
      FOREIGN KEY(project_id)
	  REFERENCES core.project(project_id)
);

COMMENT ON TABLE core.site_project IS 'Many to many relation between Site and Project.';
COMMENT ON COLUMN core.site_project.site_id IS 'Foreign key to Site table';
COMMENT ON COLUMN core.site_project.project_id IS 'Foreign key to Project table';
