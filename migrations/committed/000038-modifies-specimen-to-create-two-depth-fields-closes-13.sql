--! Previous: sha1:b9d7712ae8e016f3ddad08868ad32b1e040309ad
--! Hash: sha1:31f323326690ed633409553e5173a0748d1635b1
--! Message: Modifies Specimen to create two depth fields (closes #13)

-- Enter migration here

ALTER TABLE core.specimen DROP COLUMN IF EXISTS depth;
ALTER TABLE core.specimen DROP COLUMN IF EXISTS upper_depth;
ALTER TABLE core.specimen DROP COLUMN IF EXISTS lower_depth;

ALTER TABLE core.specimen ADD COLUMN upper_depth INTEGER NOT NULL;

ALTER TABLE core.specimen ADD COLUMN lower_depth INTEGER NOT NULL;

COMMENT ON COLUMN core.specimen.upper_depth
    IS 'Upper depth of this soil specimen in centimetres.';

COMMENT ON COLUMN core.specimen.lower_depth
    IS 'Lower depth of this soil specimen in centimetres.';
