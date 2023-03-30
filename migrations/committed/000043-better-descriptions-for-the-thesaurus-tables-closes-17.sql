--! Previous: sha1:fdcb8ef6da91b6e93f8e56a91d478d3fe1e54bc7
--! Hash: sha1:c8c8b36b4619213ef513f7a6a223cd2eb9febc72
--! Message: Better descriptions for the thesaurus tables (closes #17)

-- Enter migration here

COMMENT ON TABLE core.thesaurus_desc_element
    IS 'Vocabularies for the descriptive properties associated with the Element feature of interest. Corresponds to all GloSIS code-lists associated with the Horizon and Layer.';

COMMENT ON TABLE core.thesaurus_desc_profile
    IS 'Vocabularies for the descriptive properties associated with the Profile feature of interest. Contains the GloSIS code-lists for Profile.';

COMMENT ON TABLE core.thesaurus_desc_specimen
    IS 'Vocabularies for the descriptive properties associated with the Specimen feature of interest. This table is intended to host the code-lists necessary for descriptive observations on Specimen.';
