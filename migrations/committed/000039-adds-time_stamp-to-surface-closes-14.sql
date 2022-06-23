--! Previous: sha1:810d7cec8f763a5833c48273736cede70d29bdf2
--! Hash: sha1:7a420f16c7548f52b3152de96a743835aea6cd2d
--! Message: Adds time_stamp to Surface (closes #14)

-- Enter migration here

ALTER TABLE core.surface DROP COLUMN IF EXISTS time_stamp;

ALTER TABLE core.surface ADD COLUMN time_stamp DATE;

COMMENT ON COLUMN core.surface.time_stamp
    IS 'Time stamp of the plot, if known. Property re-used from GloSIS.';
