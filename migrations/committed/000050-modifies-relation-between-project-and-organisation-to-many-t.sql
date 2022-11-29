--! Previous: sha1:b57a9b5b3838aed113bcb19969ee4a780ca69316
--! Hash: sha1:b4a1e049de64cf731268c891bb5924ba8bfafb6e
--! Message: Modifies relation between project and organisation to many-to-many (closes #23)

-- Enter migration here

ALTER TABLE core.project DROP COLUMN IF EXISTS organisation_id;

DROP TABLE IF EXISTS core.project_organisation;

CREATE TABLE core.project_organisation(
    project_id INTEGER,
    organisation_id INTEGER,
    PRIMARY KEY (project_id, organisation_id),
    CONSTRAINT fk_organisation FOREIGN KEY (organisation_id)
        REFERENCES metadata.organisation (organisation_id),
    CONSTRAINT fk_project FOREIGN KEY (project_id)
        REFERENCES core.project (project_id)
);
