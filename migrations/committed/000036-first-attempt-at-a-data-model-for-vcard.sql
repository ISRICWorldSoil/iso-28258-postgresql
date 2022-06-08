--! Previous: sha1:f979f6e6b90faf2561a4fa4924ba4877893f79e6
--! Hash: sha1:6e4f9b01affa25f0c88cf558dd2d665091ca29f2
--! Message: First attempt at a data model for VCard

-- Enter migration here

CREATE SCHEMA IF NOT EXISTS metadata;

COMMENT ON SCHEMA metadata
    IS 'Meta-data model based on VCard: https://www.w3.org/TR/vcard-rdf';

DROP TABLE IF EXISTS metadata.organisation_individual;
DROP TABLE IF EXISTS metadata.organisation_unit;
DROP TABLE IF EXISTS metadata.organisation;
DROP TABLE IF EXISTS metadata.individual;
DROP TABLE IF EXISTS metadata.address;

CREATE TABLE metadata.address(
    address_id SERIAL PRIMARY KEY,
    street_address VARCHAR NOT NULL,
    postal_code VARCHAR NOT NULL,
    locality VARCHAR NOT NULL,
    country VARCHAR NOT NULL
);

COMMENT ON TABLE metadata.address IS 'Equivalent to the Address class in VCard, defined as delivery address for the associated object.';
COMMENT ON COLUMN metadata.address.address_id IS 'Synthetic primary key.';
COMMENT ON COLUMN metadata.address.street_address IS 'Street address data property in VCard, including house number, e.g. "Generaal Foulkesweg 108".';
COMMENT ON COLUMN metadata.address.postal_code IS 'Equivalent to the postal-code data property in VCard, e.g. "6701 PB".';
COMMENT ON COLUMN metadata.address.locality IS 'Locality data property in VCard, referring to a village, town, city, etc, e.g. "Wageningen".';
COMMENT ON COLUMN metadata.address.address_id IS 'Country data property in VCard.';

CREATE TABLE metadata.individual(
    individual_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    honorific_title VARCHAR,
    email VARCHAR,
    telephone VARCHAR,
    url VARCHAR,
    address_id INTEGER,
    CONSTRAINT fk_address_id FOREIGN KEY (address_id)
        REFERENCES metadata.address (address_id)
);

COMMENT ON TABLE metadata.individual IS 'Equivalent to the Individual class in VCard, defined as a single person or entity.';
COMMENT ON COLUMN metadata.individual.individual_id IS 'Synthetic primary key.';
COMMENT ON COLUMN metadata.individual.name IS 'Name of the individual, encompasses the data properties additional-name, given-name and family-name in VCard.';
COMMENT ON COLUMN metadata.individual.honorific_title IS 'Academic title or honorific rank associated to the individual. Encompasses the data properties honorific-prefix, honorific-suffix and title in VCard.';
COMMENT ON COLUMN metadata.individual.email IS 'Electronic mail address of the individual.';
COMMENT ON COLUMN metadata.individual.url IS 'Locator to a web page associated with the individual.';
COMMENT ON COLUMN metadata.individual.address_id IS 'Foreign key to address associated with the individual.';


CREATE TABLE metadata.organisation(
    organisation_id SERIAL PRIMARY KEY,
    parent_id INTEGER,
    name VARCHAR NOT NULL,
    email VARCHAR,
    telephone VARCHAR,
    url VARCHAR,
    address_id INTEGER,
    CONSTRAINT fk_address_id FOREIGN KEY (address_id)
        REFERENCES metadata.address (address_id),
    CONSTRAINT fk_parent_id FOREIGN KEY (parent_id)
        REFERENCES metadata.organisation (organisation_id)
);

COMMENT ON TABLE metadata.organisation IS 'Equivalent to the Organisation class in VCard, defined as a single entity, might also represent a business or government, a department or division within a business or government, a club, an association, or the like.';
COMMENT ON COLUMN metadata.organisation.organisation_id IS 'Synthetic primary key.';
COMMENT ON COLUMN metadata.organisation.parent_id IS 'Foreign key to the parent organisation, in case of a department or division of a larger organisation.';
COMMENT ON COLUMN metadata.organisation.name IS 'Name of the organisation.';
COMMENT ON COLUMN metadata.organisation.email IS 'Electronic mail address of the organisation.';
COMMENT ON COLUMN metadata.organisation.url IS 'Locator to a web page associated with the organisation.';
COMMENT ON COLUMN metadata.organisation.address_id IS 'Foreign key to address associated with the organisation.';


CREATE TABLE metadata.organisation_unit(
    organisation_unit_id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    organisation_id INTEGER NOT NULL,
    UNIQUE(name, organisation_id),
    CONSTRAINT fk_organisation_id FOREIGN KEY (organisation_id)
        REFERENCES metadata.organisation (organisation_id)
);

COMMENT ON TABLE metadata.organisation_unit IS 'Captures the data property organisation-unit and object property hasOrganisationUnit in VCard. Defines the internal structure of the organisation, apart from the departmental hierarchy.';
COMMENT ON COLUMN metadata.organisation_unit.organisation_unit_id IS 'Synthetic primary key.';
COMMENT ON COLUMN metadata.organisation_unit.organisation_id IS 'Foreign key to the enclosing organisation, in case of a department or division of a larger organisation.';
COMMENT ON COLUMN metadata.organisation_unit.name IS 'Name of the organisation unit.';


CREATE TABLE metadata.organisation_individual(
    individual_id INTEGER NOT NULL,
    organisation_id INTEGER NOT NULL,
    organisation_unit_id INTEGER,
    role VARCHAR,
    UNIQUE(individual_id, organisation_id),
    CONSTRAINT fk_individual_id FOREIGN KEY (individual_id)
        REFERENCES metadata.individual (individual_id),
    CONSTRAINT fk_organisation_id FOREIGN KEY (organisation_id)
        REFERENCES metadata.organisation (organisation_id),
    CONSTRAINT fk_organisation_unit_id FOREIGN KEY (organisation_unit_id)
        REFERENCES metadata.organisation_unit (organisation_unit_id)
);

COMMENT ON TABLE metadata.organisation_individual IS 'Relation between Individual and Organisation. Captures the object properties hasOrganisationName, org and organisation-name in VCard. In most cases means that the individual works at the organisation in the unit specified.';
COMMENT ON COLUMN metadata.organisation_individual.organisation_unit_id IS 'Foreign key to the organisational unit associating the individual with the organisation.';
COMMENT ON COLUMN metadata.organisation_individual.organisation_id IS 'Foreign key to the related organisation.';
COMMENT ON COLUMN metadata.organisation_individual.individual_id IS 'Foreign key to the related individual.'; 
COMMENT ON COLUMN metadata.organisation_individual.role IS 'Role of the individual within the organisation and respective organisational unit, e.g. "director", "secretary".';
