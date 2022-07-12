--! Previous: sha1:0d17d4114bf58a98bb78d7c1c8713a6fd17184df
--! Hash: sha1:8b49f4c556c7b90b6b816980b92b73e7bc05ecdc
--! Message: Better descriptions for the thesaurus tables (closes #17)

-- Enter migration here

COMMENT ON TABLE core.thesaurus_desc_element
    IS 'Vocabularies for the descriptive properties associated with the Element feature of interest. Corresponds to all GloSIS code-lists associated with the Horizon and Layer.';

COMMENT ON TABLE core.thesaurus_desc_profile
    IS 'Vocabularies for the descriptive properties associated with the Profile feature of interest. Contains the GloSIS code-lists for Profile.';

COMMENT ON TABLE core.thesaurus_desc_specimen
    IS 'Vocabularies for the descriptive properties associated with the Specimen feature of interest. This table is intended to host the code-lists necessary for descriptive observations on Specimen.';
