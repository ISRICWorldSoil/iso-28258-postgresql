--! Previous: sha1:31f323326690ed633409553e5173a0748d1635b1
--! Hash: sha1:a32a1133975549dea1d85334a15d2d6489b4b2bb
--! Message: Adds time_stamp to Surface (closes #14)

-- Enter migration here

ALTER TABLE core.surface DROP COLUMN IF EXISTS time_stamp;

ALTER TABLE core.surface ADD COLUMN time_stamp DATE;

COMMENT ON COLUMN core.surface.time_stamp
    IS 'Time stamp of the plot, if known. Property re-used from GloSIS.';
