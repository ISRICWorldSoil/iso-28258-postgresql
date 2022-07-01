--! Previous: sha1:269dfd53625fd28cbcf47d0fe4389237fec1914b
--! Hash: sha1:0d17d4114bf58a98bb78d7c1c8713a6fd17184df
--! Message: Moves element_type to core schema (closes #16)

-- Enter migration here

ALTER TABLE core.element DROP COLUMN IF EXISTS type;

DROP TYPE IF EXISTS public.element_type;

CREATE TYPE core.element_type AS ENUM ('Horizon', 'Layer');

COMMENT ON TYPE core.element_type IS 'Type of Profile Element';

ALTER TABLE core.element ADD COLUMN type core.element_type NOT NULL;

COMMENT ON COLUMN core.element.type IS 'Type of profile element, Horizon or Layer';
