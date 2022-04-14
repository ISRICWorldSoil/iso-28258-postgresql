--! Previous: sha1:21eb696f197d2382b2f32ca939e0c63744407d13
--! Hash: sha1:7c11261f47530390efbc9708cbde789edbb54fbb
--! Message: Creates ProfileElement table

-- Enter migration here

DROP TABLE IF EXISTS core.element;
DROP TYPE IF EXISTS element_type;

CREATE TYPE element_type as ENUM ('Horizon', 'Layer'); 
COMMENT ON TYPE element_type IS 'Type of Profile Element';

CREATE TABLE core.element (
    element_id SERIAL PRIMARY KEY,
    type element_type NOT NULL,
    profile_id INT NOT NULL,
    order_element INT CHECK (order_element > 0),
    upper_depth INT NOT NULL CHECK (upper_depth >= 0),
    lower_depth INT NOT NULL CHECK (lower_depth > upper_depth AND upper_depth <= 200),
    CONSTRAINT fk_profile
      FOREIGN KEY(profile_id)
	  REFERENCES core.profile(profile_id)
);

COMMENT ON TABLE core.element IS 'ProfileElement is the super-class of Horizon and Layer, which share the same basic properties. Horizons develop in a layer, which in turn have been developed throught geogenesis or anthropogenic action. Layers can be used to describe common characteristics of a set of adjoining horizons. For the time being no assocation is previewed between Horizon and Layer.';

COMMENT ON COLUMN core.element.element_id IS 'Synthetic primary key';
COMMENT ON COLUMN core.element.type IS 'Type of profile element, Horizon or Layer';
COMMENT ON COLUMN core.element.profile_id IS 'Reference to the Profile to which this element belongs';
COMMENT ON COLUMN core.element.order_element IS 'Order of this element within the Profile';
COMMENT ON COLUMN core.element.upper_depth IS 'Upper depth of this profile element in centimetres.';
COMMENT ON COLUMN core.element.lower_depth IS 'Lower depth of this profile element in centimetres.';
