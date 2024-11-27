--! Previous: sha1:cfc109c5a85c2664107aab6a7e7fd582df1932bf
--! Hash: sha1:449d6d8c4eecc91a271400cb54e4dc5600b0a5c0
--! Message: update glosis uris #33

-- addressing the issue of the uri in the model #33
update core.procedure_phys_chem set uri =replace(uri, 'w3id.org/glosis/model/v1.0.0/', 'w3id.org/glosis/model/');
update core.procedure_phys_chem set uri =replace(uri, '#', '/');

update core.property_desc_element set uri =replace(uri, 'w3id.org/glosis/model/v1.0.0/', 'w3id.org/glosis/model/');
update core.property_desc_element set uri =replace(uri, '#', '/');

update core.property_desc_plot set uri =replace(uri, 'w3id.org/glosis/model/v1.0.0/', 'w3id.org/glosis/model/');
update core.property_desc_plot set uri =replace(uri, '#', '/');

update core.property_desc_profile set uri =replace(uri, 'w3id.org/glosis/model/v1.0.0/', 'w3id.org/glosis/model/');
update core.property_desc_profile set uri =replace(uri, '#', '/');

update core.property_desc_surface set uri =replace(uri, 'w3id.org/glosis/model/v1.0.0/', 'w3id.org/glosis/model/');
update core.property_desc_surface set uri =replace(uri, '#', '/');

update core.property_phys_chem set uri =replace(uri, 'w3id.org/glosis/model/v1.0.0/', 'w3id.org/glosis/model/');
update core.property_phys_chem set uri =replace(uri, '#', '/');

update core.thesaurus_desc_element set uri =replace(uri, 'w3id.org/glosis/model/v1.0.0/', 'w3id.org/glosis/model/');
update core.thesaurus_desc_element set uri =replace(uri, '#', '/');

update core.thesaurus_desc_plot set uri =replace(uri, 'w3id.org/glosis/model/v1.0.0/', 'w3id.org/glosis/model/');
update core.thesaurus_desc_plot set uri =replace(uri, '#', '/');

update core.thesaurus_desc_profile set uri =replace(uri, 'w3id.org/glosis/model/v1.0.0/', 'w3id.org/glosis/model/');
update core.thesaurus_desc_profile set uri =replace(uri, '#', '/');

update core.thesaurus_desc_surface set uri =replace(uri, 'w3id.org/glosis/model/v1.0.0/', 'w3id.org/glosis/model/');
update core.thesaurus_desc_surface set uri =replace(uri, '#', '/');

update core.unit_of_measure set uri =replace(uri, 'w3id.org/glosis/model/v1.0.0/', 'w3id.org/glosis/model/');
update core.unit_of_measure set uri =replace(uri, '#', '/');
