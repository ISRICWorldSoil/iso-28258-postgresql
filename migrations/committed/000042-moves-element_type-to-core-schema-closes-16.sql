--! Previous: sha1:e6cef9fae3d43dc4774cab0183d9a65cadb51970
--! Hash: sha1:fdcb8ef6da91b6e93f8e56a91d478d3fe1e54bc7
--! Message: Moves element_type to core schema (closes #16)

-- Enter migration here

ALTER TABLE core.element DROP COLUMN IF EXISTS type;

DROP TYPE IF EXISTS public.element_type;
DROP TYPE IF EXISTS core.element_type;

CREATE TYPE core.element_type AS ENUM ('Horizon', 'Layer');
COMMENT ON TYPE core.element_type IS 'Type of Profile Element';

ALTER TABLE core.element ADD COLUMN type core.element_type NOT NULL;
COMMENT ON COLUMN core.element.type IS 'Type of profile element, Horizon or Layer';
