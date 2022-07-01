--! Previous: sha1:9287ea6ea576fcfd289a1f9a7526462ca58ad05a
--! Hash: sha1:269dfd53625fd28cbcf47d0fe4389237fec1914b
--! Message: Adds typical_profile field to Site (closes #9)

-- Enter migration here

ALTER TABLE core.site DROP COLUMN IF EXISTS typical_profile;

ALTER TABLE core.site ADD COLUMN typical_profile INTEGER;

ALTER TABLE core.site ADD CONSTRAINT country_geom_country_id_fkey 
    FOREIGN KEY (typical_profile)
    REFERENCES core.profile (profile_id);

COMMENT ON COLUMN core.site.typical_profile IS 'Foreign key to a profile providing a typical characterisation of this site.';
