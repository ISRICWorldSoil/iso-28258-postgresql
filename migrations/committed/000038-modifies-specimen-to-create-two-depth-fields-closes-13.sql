--! Previous: sha1:63699086d88ebf55364f5685952bc5cf26a24bc0
--! Hash: sha1:810d7cec8f763a5833c48273736cede70d29bdf2
--! Message: Modifies Specimen to create two depth fields (closes #13)

-- Enter migration here

ALTER TABLE core.specimen DROP COLUMN IF EXISTS depth;

ALTER TABLE core.specimen ADD COLUMN upper_depth INTEGER NOT NULL;

ALTER TABLE core.specimen ADD COLUMN lower_depth INTEGER NOT NULL;

COMMENT ON COLUMN core.specimen.upper_depth
    IS 'Upper depth of this soil specimen in centimetres.';

COMMENT ON COLUMN core.specimen.lower_depth
    IS 'Lower depth of this soil specimen in centimetres.';
