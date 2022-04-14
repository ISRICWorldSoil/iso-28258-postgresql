--! Previous: sha1:3ff289c28c97d5a6439586ca4b0ed7aa49a876b3
--! Hash: sha1:5170c2cef1301bc025bd87db6083244b0a78d9e6
--! Message: Creates Projects tables

-- Enter migration here

DROP TABLE IF EXISTS core.project;

CREATE TABLE core.project (
  project_id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL UNIQUE
);

COMMENT ON TABLE core.project
    IS 'Provides the context of the data collection as a prerequisite for the proper use or reuse of these data.';

COMMENT ON COLUMN core.project.project_id
    IS 'Synthetic primary key.';

COMMENT ON COLUMN core.project.name
    IS 'Natural key with project name.';


DROP TABLE IF EXISTS core.project_related;

CREATE TABLE core.project_related (
  project_source_id INT NOT NULL,
  project_target_id INT NOT NULL,
  role VARCHAR NOT NULL,
  CONSTRAINT fk_project_source
      FOREIGN KEY(project_source_id)
	  REFERENCES core.project(project_id),
  CONSTRAINT fk_project_target
      FOREIGN KEY(project_target_id)
	  REFERENCES core.project(project_id),
  UNIQUE(project_source_id, project_target_id)
);

COMMENT ON TABLE core.project_related
    IS 'Relationship between two projects, e.g. project B being a sub-project of project A.';

COMMENT ON COLUMN core.project_related.project_source_id
    IS 'Foreign key to source project.';

COMMENT ON COLUMN core.project_related.project_target_id
    IS 'Foreign key to targe project.';

COMMENT ON COLUMN core.project_related.role
    IS 'Role of source project in target project. This intended to be a code-list but no codes are given in the standard';
