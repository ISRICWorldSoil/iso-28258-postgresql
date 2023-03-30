--! Previous: sha1:70e638b6587543aaf5f6869a501feaef9292ce32
--! Hash: sha1:f2adbfcb10b7e36e34bd50d9fab542c670403701
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
