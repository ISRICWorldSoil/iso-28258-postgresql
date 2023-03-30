--! Previous: sha1:c90680791caaed4a91769aafb1b2a0a58d10fd7c
--! Hash: sha1:e6cef9fae3d43dc4774cab0183d9a65cadb51970
--! Message: Adds typical_profile field to Site (closes #9)

-- Enter migration here

ALTER TABLE core.site DROP COLUMN IF EXISTS typical_profile;

ALTER TABLE core.site ADD COLUMN typical_profile INTEGER;

ALTER TABLE core.site ADD CONSTRAINT country_geom_country_id_fkey 
    FOREIGN KEY (typical_profile)
    REFERENCES core.profile (profile_id);

COMMENT ON COLUMN core.site.typical_profile IS 'Foreign key to a profile providing a typical characterisation of this site.';
