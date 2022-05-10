--! Previous: sha1:cbb91e43842f87195c37b3bc08464a04f7c061b5
--! Hash: sha1:dcab707873885f9817388f6a534b0b0efceebc6c
--! Message: Inserts descriptive observations records

-- Enter migration here

DELETE FROM core.observation_desc_surface;

INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#saltThicknessProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#saltThicknessValueCode-C'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#saltThicknessProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#saltThicknessValueCode-F'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#saltThicknessProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#saltThicknessValueCode-M'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#saltThicknessProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#saltThicknessValueCode-N'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#saltThicknessProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#saltThicknessValueCode-V'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#sealingConsistenceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingConsistenceValueCode-E'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#sealingConsistenceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingConsistenceValueCode-H'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#sealingConsistenceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingConsistenceValueCode-S'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#sealingConsistenceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingConsistenceValueCode-V'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#saltCoverProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#saltCoverValueCode-0'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#saltCoverProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#saltCoverValueCode-1'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#saltCoverProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#saltCoverValueCode-2'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#saltCoverProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#saltCoverValueCode-3'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#saltCoverProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#saltCoverValueCode-4'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#sealingThicknessProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingThicknessValueCode-C'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#sealingThicknessProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingThicknessValueCode-F'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#sealingThicknessProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingThicknessValueCode-M'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#sealingThicknessProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingThicknessValueCode-N'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/surface#sealingThicknessProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingThicknessValueCode-V'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-B'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-C'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-F'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-L'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-M'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-S'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDepthProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDepthValueCode-D'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDepthProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDepthValueCode-M'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDepthProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDepthValueCode-S'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDepthProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDepthValueCode-V'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDistanceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-C'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDistanceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-D'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDistanceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-M'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDistanceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-V'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDistanceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-W'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksWidthProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-E'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksWidthProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-F'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksWidthProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-M'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksWidthProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-V'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksWidthProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-W'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-A'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-C'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-D'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-F'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-M'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-N'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-S'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-V'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockShapeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockShapeValueCode-A'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockShapeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockShapeValueCode-F'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockShapeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockShapeValueCode-R'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockShapeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockShapeValueCode-S'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-A'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-AC'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-AF'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-AM'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-AV'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-BL'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-C'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-CS'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-FM'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-MC'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-R'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RB'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RC'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RF'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RL'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RM'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RS'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-SB'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#weatheringFragmentsProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-F'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#weatheringFragmentsProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-S'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#weatheringFragmentsProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-W'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentCoverProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-A'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentCoverProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-C'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentCoverProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-D'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentCoverProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-F'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentCoverProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-M'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentCoverProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-N'));
INSERT INTO core.observation_desc_surface (property_desc_surface_id, thesaurus_desc_surface_id) VALUES ((SELECT property_desc_surface_id FROM core.property_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentCoverProperty'), (SELECT thesaurus_desc_surface_id FROM core.thesaurus_desc_surface WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-V'));


DELETE FROM core.observation_desc_profile;

INSERT INTO core.observation_desc_profile (property_desc_profile_id, thesaurus_desc_profile_id) VALUES ((SELECT property_desc_profile_id FROM core.property_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/profile#profileDescriptionStatusProperty'), (SELECT thesaurus_desc_profile_id FROM core.thesaurus_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-2.1'));
INSERT INTO core.observation_desc_profile (property_desc_profile_id, thesaurus_desc_profile_id) VALUES ((SELECT property_desc_profile_id FROM core.property_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/profile#profileDescriptionStatusProperty'), (SELECT thesaurus_desc_profile_id FROM core.thesaurus_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-4.1'));
INSERT INTO core.observation_desc_profile (property_desc_profile_id, thesaurus_desc_profile_id) VALUES ((SELECT property_desc_profile_id FROM core.property_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/profile#profileDescriptionStatusProperty'), (SELECT thesaurus_desc_profile_id FROM core.thesaurus_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-1.1'));
INSERT INTO core.observation_desc_profile (property_desc_profile_id, thesaurus_desc_profile_id) VALUES ((SELECT property_desc_profile_id FROM core.property_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/profile#profileDescriptionStatusProperty'), (SELECT thesaurus_desc_profile_id FROM core.thesaurus_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-3.1'));
INSERT INTO core.observation_desc_profile (property_desc_profile_id, thesaurus_desc_profile_id) VALUES ((SELECT property_desc_profile_id FROM core.property_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/profile#profileDescriptionStatusProperty'), (SELECT thesaurus_desc_profile_id FROM core.thesaurus_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-1'));
INSERT INTO core.observation_desc_profile (property_desc_profile_id, thesaurus_desc_profile_id) VALUES ((SELECT property_desc_profile_id FROM core.property_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/profile#profileDescriptionStatusProperty'), (SELECT thesaurus_desc_profile_id FROM core.thesaurus_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-4'));
INSERT INTO core.observation_desc_profile (property_desc_profile_id, thesaurus_desc_profile_id) VALUES ((SELECT property_desc_profile_id FROM core.property_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/profile#profileDescriptionStatusProperty'), (SELECT thesaurus_desc_profile_id FROM core.thesaurus_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-2'));
INSERT INTO core.observation_desc_profile (property_desc_profile_id, thesaurus_desc_profile_id) VALUES ((SELECT property_desc_profile_id FROM core.property_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/profile#profileDescriptionStatusProperty'), (SELECT thesaurus_desc_profile_id FROM core.thesaurus_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-5'));
INSERT INTO core.observation_desc_profile (property_desc_profile_id, thesaurus_desc_profile_id) VALUES ((SELECT property_desc_profile_id FROM core.property_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/profile#profileDescriptionStatusProperty'), (SELECT thesaurus_desc_profile_id FROM core.thesaurus_desc_profile WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-3'));


DELETE FROM core.observation_desc_plot;

-- Correction necessary due to GloSIS issue #52  :
-- https://github.com/rapw3k/glosis/issues/52
DELETE FROM core.property_desc_plot
 WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#CropClassProperty'
    OR uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty';

INSERT INTO core.property_desc_plot
       (uri, label)
VALUES ('http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty',
        'cropClassProperty');

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fo_Cl'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_Ry'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fr_Ba'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_Mi'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fo_Ma'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fi_Co'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_Ba'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fo_Ha'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_Wh'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fr'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_Pa'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fo'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fi'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fo_Le'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_Ma'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fr_Ap'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_Ri'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fo_Al'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fr_Ci'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_So'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fo_Gr'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_Oa'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fo_Pu'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fi_Ju'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fr_Gr'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fr_Ma'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fr_Me'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Lu'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Lu_Cc'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Lu_Co'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Lu_Te'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Lu_To'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi_Cc'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi_Gr'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi_Li'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi_Op'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi_Ra'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi_Se'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi_So'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi_Su'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ol'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ot'));

    INSERT INTO core.observation_desc_plot
           (property_desc_plot_id, thesaurus_desc_plot_id)
    VALUES ((SELECT property_desc_plot_id
               FROM core.property_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
            (SELECT thesaurus_desc_plot_id
               FROM core.thesaurus_desc_plot
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ot_Pa'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ot_Ru'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ot_Sc'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Pu'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Pu_Be'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Pu_Le'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Pu_Pe'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ro'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ro_Ca'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ro_Po'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ro_Su'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ro_Ya'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ve'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionCategoryProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-A'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionCategoryProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-AD'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionCategoryProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-AM'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionCategoryProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-AS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionCategoryProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-AZ'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionCategoryProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-M'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionCategoryProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-N'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionCategoryProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-NK'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionCategoryProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-W'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionCategoryProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WA'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionCategoryProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WD'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionCategoryProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WG'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionCategoryProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WR'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionCategoryProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionCategoryProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WT'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-I'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IB'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IB1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IB2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IB3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-II'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-II1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-II2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IU1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IU2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IU3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-M'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB5'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB6'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MU1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-S'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC5'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SE1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SE2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SO'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SO1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SO2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SO3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-U'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UA'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UA1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UA2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UC'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UC1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UC2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UE1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UE2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UF'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UF1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UF2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UG'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UG1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UG2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UG3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UK'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UK1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UK2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UL'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UL1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UL2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UM'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UM1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UM2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UO'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UO1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UO2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UR'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UR1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU5'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionDegreeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionDegreeValueCode-E'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionDegreeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionDegreeValueCode-M'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionDegreeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionDegreeValueCode-S'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionDegreeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionDegreeValueCode-V'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landformComplexProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-CU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landformComplexProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-DO'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landformComplexProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-DU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landformComplexProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-IM'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landformComplexProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-IN'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landformComplexProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-KA'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landformComplexProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-RI'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landformComplexProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-TE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landformComplexProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-WE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentDepositionProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-A'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentDepositionProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-AD'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentDepositionProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-AM'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentDepositionProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-AS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentDepositionProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-AZ'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentDepositionProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-M'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentDepositionProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-N'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentDepositionProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-NK'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentDepositionProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-W'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentDepositionProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WA'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentDepositionProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WD'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentDepositionProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WG'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentDepositionProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WR'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentDepositionProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentDepositionProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WT'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-AC'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-AD'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-BP'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-BR'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-BU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-CL'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-CR'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-DU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-FE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-IB'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-ID'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-IF'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-IP'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-IS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-IU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-LF'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-LV'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-ME'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-MI'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-MO'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-MP'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-MR'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-MS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-MU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-N'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-NK'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-PL'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-PO'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-SA'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-SC'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-TE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-VE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-VM'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-VS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-VU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionActivityPeriodProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionActivityPeriodValueCode-A'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionActivityPeriodProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionActivityPeriodValueCode-H'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionActivityPeriodProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionActivityPeriodValueCode-N'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionActivityPeriodProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionActivityPeriodValueCode-R'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionActivityPeriodProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionActivityPeriodValueCode-X'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionTotalAreaAffectedProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionTotalAreaAffectedValueCode-0'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionTotalAreaAffectedProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionTotalAreaAffectedValueCode-1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionTotalAreaAffectedProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionTotalAreaAffectedValueCode-2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionTotalAreaAffectedProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionTotalAreaAffectedValueCode-3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionTotalAreaAffectedProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionTotalAreaAffectedValueCode-4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionTotalAreaAffectedProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionTotalAreaAffectedValueCode-5'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-A'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AA'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AA1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AA2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AA3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AA4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AA5'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AA6'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AP'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AP1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AP2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AT'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AT1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AT2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AT3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AT4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-F'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-FN'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-FN1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-FN2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-FP'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-H'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-HE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-HE1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-HE2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-HE3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-HI'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-HI1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-HI2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-M'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-MF'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-MP'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-Oi'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-P'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-PD'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-PD1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-PD2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-PN'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-PN1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-PN2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-PN3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-S'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-SC'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-SD'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-SI'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-SR'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-ST'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-SX'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-U'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-Y'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-I'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IB'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IB1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IB2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IB3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-II'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-II1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-II2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IU1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IU2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IU3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-M'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB5'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB6'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MU1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-S'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC5'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SE1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SE2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SO'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SO1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SO2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SO3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-U'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UA'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UA1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UA2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UC'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UC1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UC2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UE1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UE2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UF'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UF1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UF2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UG'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UG1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UG2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UG3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UK'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UK1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UK2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UL'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UL1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UL2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UM'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UM1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UM2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UO'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UO1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UO2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UR'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UR1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU5'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#surfaceAgeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-Ha'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#surfaceAgeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-Hn'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#surfaceAgeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-O'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#surfaceAgeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-T'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#surfaceAgeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-Ya'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#surfaceAgeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-Yn'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#surfaceAgeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-lPf'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#surfaceAgeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-lPi'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#surfaceAgeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-lPp'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#surfaceAgeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-oPf'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#surfaceAgeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-oPi'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#surfaceAgeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-oPp'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#surfaceAgeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-vYa'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#surfaceAgeProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-vYn'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatheringRockProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-F'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatheringRockProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-S'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatheringRockProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-W'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeFormValueCode-C'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeFormValueCode-S'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeFormValueCode-T'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeFormValueCode-V'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeFormValueCode-X'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeGradientClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-01'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeGradientClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-02'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeGradientClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-03'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeGradientClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-04'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeGradientClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-05'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeGradientClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-06'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeGradientClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-07'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeGradientClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-08'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeGradientClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-09'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeGradientClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-10'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsPastProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-OV'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsPastProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-PC'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsPastProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-RA'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsPastProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-SL'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsPastProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-SN'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsPastProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-SU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsPastProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsPastProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsPastProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsPastProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsPastProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC5'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsPastProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC6'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#rockOutcropsCoverProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsCoverValueCode-A'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#rockOutcropsCoverProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsCoverValueCode-C'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#rockOutcropsCoverProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsCoverValueCode-D'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#rockOutcropsCoverProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsCoverValueCode-F'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#rockOutcropsCoverProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsCoverValueCode-M'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#rockOutcropsCoverProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsCoverValueCode-N'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#rockOutcropsCoverProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsCoverValueCode-V'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#physiographyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-BOdl'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#physiographyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-BOf'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#physiographyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-CR'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#physiographyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-HI'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#physiographyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-IN'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#physiographyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-LO'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#physiographyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-LS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#physiographyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-MS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#physiographyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-TS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#physiographyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-UP'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#rockOutcropsDistanceProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsDistanceValueCode-1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#rockOutcropsDistanceProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsDistanceValueCode-2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#rockOutcropsDistanceProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsDistanceValueCode-3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#rockOutcropsDistanceProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsDistanceValueCode-4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#rockOutcropsDistanceProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsDistanceValueCode-5'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopePathwaysProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-CC'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopePathwaysProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-CS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopePathwaysProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-CV'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopePathwaysProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-SC'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopePathwaysProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-SS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopePathwaysProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-SV'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopePathwaysProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-VC'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopePathwaysProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-VS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopePathwaysProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-VV'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-L'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-LD'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-LL'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-LP'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-LV'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-S'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-SE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-SH'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-SM'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-SP'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-SV'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-T'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-TE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-TH'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-TM'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-TV'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-I'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IB'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IB1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IB2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IB3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-II'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-II1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-II2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IU1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IU2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IU3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-M'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB5'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB6'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MU1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-S'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC5'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SE1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SE2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SO'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SO1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SO2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SO3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-U'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UA'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UA1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UA2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UC'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UC1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UC2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UE1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UE2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UF'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UF1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UF2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UG'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UG1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UG2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UG3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UK'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UK1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UK2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UL'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UL1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UL2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UM'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UM1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UM2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UO'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UO1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UO2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UR'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UR1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU5'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsCurrentProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-OV'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsCurrentProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-PC'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsCurrentProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-RA'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsCurrentProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-SL'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsCurrentProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-SN'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsCurrentProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-SU'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsCurrentProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC1'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsCurrentProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC2'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsCurrentProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC3'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsCurrentProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC4'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsCurrentProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC5'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsCurrentProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC6'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-B'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-D'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-DD'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-DE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-DS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-DT'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-DX'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-F'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-FC'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-FD'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-FE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-FS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-FX'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-H'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-HF'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-HM'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-HS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-HT'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-M'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-S'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-SD'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-SE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-SS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-SX'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-W'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-WD'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-WE'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-WS'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-WX'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#weatheringFragmentsProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-F'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#weatheringFragmentsProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-S'));

   INSERT INTO core.observation_desc_plot
          (property_desc_plot_id, thesaurus_desc_plot_id)
   VALUES ((SELECT property_desc_plot_id
              FROM core.property_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#weatheringFragmentsProperty'),
           (SELECT thesaurus_desc_plot_id
              FROM core.thesaurus_desc_plot
             WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-W'));


DELETE FROM core.observation_desc_element;

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-CC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-CH'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-CS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-GB'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-H'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-HC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-JA'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-MN'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-PF'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-S'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-SA'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-SF'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-SI'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-SL'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-SN'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-SP'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-ST'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationDegreeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationDegreeValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationDegreeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationDegreeValueCode-I'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationDegreeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationDegreeValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationDegreeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationDegreeValueCode-N'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationDegreeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationDegreeValueCode-W'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationDegreeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationDegreeValueCode-Y'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingContrastProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingContrastValueCode-D'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingContrastProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingContrastValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingContrastProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingContrastValueCode-P'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#biologicalAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalAbundanceValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#biologicalAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalAbundanceValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#biologicalAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalAbundanceValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#biologicalAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalAbundanceValueCode-N'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#voidsClassificationProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsClassificationValueCode-B'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#voidsClassificationProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsClassificationValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#voidsClassificationProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsClassificationValueCode-I'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#voidsClassificationProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsClassificationValueCode-P'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#voidsClassificationProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsClassificationValueCode-V'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcKindProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcKindProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-IC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcKindProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-IP'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcKindProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-N'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcKindProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-O'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcKindProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-R'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcKindProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-S'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcKindProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-SC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcKindProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-T'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityMineralProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityMineralValueCode-BD1'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityMineralProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityMineralValueCode-BD2'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityMineralProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityMineralValueCode-BD3'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityMineralProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityMineralValueCode-BD4'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityMineralProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityMineralValueCode-BD5'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingAbundanceValueCode-A'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingAbundanceValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingAbundanceValueCode-D'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingAbundanceValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingAbundanceValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingAbundanceValueCode-N'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingAbundanceValueCode-V'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceDryProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-EHA'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceDryProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-HA'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceDryProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-HVH'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceDryProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-LO'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceDryProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-SHA'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceDryProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-SHH'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceDryProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-SO'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceDryProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-SSH'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceDryProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-VHA'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumFormsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumFormsValueCode-D'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumFormsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumFormsValueCode-G'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumFormsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumFormsValueCode-HL'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumFormsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumFormsValueCode-SC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-CS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-FM'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-GB'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-GY'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-JA'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-K'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-KQ'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-NK'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-Q'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-S'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-SA'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#boundaryDistinctnessProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryDistinctnessValueCode-A'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#boundaryDistinctnessProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryDistinctnessValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#boundaryDistinctnessProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryDistinctnessValueCode-D'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#boundaryDistinctnessProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryDistinctnessValueCode-G'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationFabricProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationFabricValueCode-D'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationFabricProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationFabricValueCode-Pi'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationFabricProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationFabricValueCode-Pl'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationFabricProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationFabricValueCode-V'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesSizeValueCode-A'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesSizeValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesSizeValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesSizeValueCode-V'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#porosityClassProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#porosityClassValueCode-1'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#porosityClassProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#porosityClassValueCode-2'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#porosityClassProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#porosityClassValueCode-3'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#porosityClassProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#porosityClassValueCode-4'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#porosityClassProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#porosityClassValueCode-5'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesAbundanceValueCode-A'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesAbundanceValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesAbundanceValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesAbundanceValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesAbundanceValueCode-N'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesAbundanceValueCode-V'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#voidsDiameterProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#voidsDiameterProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#voidsDiameterProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-FF'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#voidsDiameterProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-FM'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#voidsDiameterProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#voidsDiameterProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-MC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#voidsDiameterProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-V'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#voidsDiameterProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-VC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#structureGradeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#structureGradeValueCode-MO'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#structureGradeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#structureGradeValueCode-MS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#structureGradeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#structureGradeValueCode-ST'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#structureGradeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#structureGradeValueCode-WE'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#structureGradeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#structureGradeValueCode-WM'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#biologicalFeaturesProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-A'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#biologicalFeaturesProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-B'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#biologicalFeaturesProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-BI'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#biologicalFeaturesProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-BO'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#biologicalFeaturesProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#biologicalFeaturesProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-E'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#biologicalFeaturesProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-I'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#biologicalFeaturesProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-P'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#biologicalFeaturesProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-T'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#poresSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#poresSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#poresSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-FF'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#poresSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-FM'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#poresSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#poresSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-MC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#poresSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-V'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#poresSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-VC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#structureSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#structureSizeValueCode-CO'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#structureSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#structureSizeValueCode-EC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#structureSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#structureSizeValueCode-FI'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#structureSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#structureSizeValueCode-ME'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#structureSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#structureSizeValueCode-VC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#structureSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#structureSizeValueCode-VF'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcShapeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcShapeValueCode-A'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcShapeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcShapeValueCode-E'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcShapeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcShapeValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcShapeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcShapeValueCode-I'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcShapeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcShapeValueCode-R'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatDrainageProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDrainageValueCode-DC1'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatDrainageProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDrainageValueCode-DC2'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatDrainageProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDrainageValueCode-DC3'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatDrainageProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDrainageValueCode-DC4'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#sandyTextureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-CS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#sandyTextureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-CSL'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#sandyTextureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-FS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#sandyTextureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-FSL'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#sandyTextureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-LCS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#sandyTextureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-LFS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#sandyTextureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-LVFS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#sandyTextureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-MS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#sandyTextureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-US'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#sandyTextureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-VFS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-CS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-FM'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-FO'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-GY'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-I'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-K'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-KQ'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-NK'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-P'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationNatureProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-Q'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityPeatProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityPeatValueCode-BD1'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityPeatProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityPeatValueCode-BD2'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityPeatProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityPeatValueCode-BD3'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityPeatProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityPeatValueCode-BD4'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityPeatProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityPeatValueCode-BD5'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralFragmentsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralFragmentsValueCode-FE'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralFragmentsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralFragmentsValueCode-MI'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralFragmentsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralFragmentsValueCode-QU'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesBoundaryClassificationProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryClassificationValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesBoundaryClassificationProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryClassificationValueCode-D'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesBoundaryClassificationProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryClassificationValueCode-S'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatDecompostionProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-D1'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatDecompostionProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-D2'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatDecompostionProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-D3'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatDecompostionProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-D4'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatDecompostionProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-D5.1'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatDecompostionProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-D5.2'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatDecompostionProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-Fibric'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatDecompostionProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-Hemic'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatDecompostionProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-Sapric'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatVolumeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatVolumeValueCode-SV1'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatVolumeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatVolumeValueCode-SV2'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatVolumeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatVolumeValueCode-SV3'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatVolumeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatVolumeValueCode-SV4'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatVolumeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#peatVolumeValueCode-SV5'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#boundaryTopographyProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryTopographyValueCode-B'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#boundaryTopographyProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryTopographyValueCode-I'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#boundaryTopographyProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryTopographyValueCode-S'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#boundaryTopographyProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryTopographyValueCode-W'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonatesContentProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesContentValueCode-EX'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonatesContentProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesContentValueCode-MO'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonatesContentProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesContentValueCode-N'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonatesContentProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesContentValueCode-SL'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonatesContentProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesContentValueCode-ST'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-BB'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-BL'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-BR'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-BS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-BU'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-GE'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-GR'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-GS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-MC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-RB'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-RE'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-RS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-RY'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-WH'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-YB'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-YE'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-YR'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#plasticityProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#plasticityValueCode-NPL'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#plasticityProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#plasticityValueCode-PL'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#plasticityProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#plasticityValueCode-PVP'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#plasticityProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#plasticityValueCode-SPL'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#plasticityProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#plasticityValueCode-SPP'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#plasticityProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#plasticityValueCode-VPL'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesContrastProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#contrastValueCode-D'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesContrastProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#contrastValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesContrastProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#contrastValueCode-P'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceMoistProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceMoistValueCode-EFI'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceMoistProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceMoistValueCode-FI'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceMoistProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceMoistValueCode-FR'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceMoistProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceMoistValueCode-LO'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceMoistProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceMoistValueCode-VFI'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceMoistProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceMoistValueCode-VFR'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcVolumeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcVolumeValueCode-A'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcVolumeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcVolumeValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcVolumeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcVolumeValueCode-D'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcVolumeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcVolumeValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcVolumeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcVolumeValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcVolumeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcVolumeValueCode-N'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcVolumeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcVolumeValueCode-V'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#saltContentProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#saltContentValueCode-EX'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#saltContentProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#saltContentValueCode-MO'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#saltContentProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#saltContentValueCode-N'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#saltContentProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#saltContentValueCode-SL'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#saltContentProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#saltContentValueCode-ST'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#saltContentProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#saltContentValueCode-VST'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumContentProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumContentValueCode-EX'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumContentProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumContentValueCode-MO'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumContentProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumContentValueCode-N'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumContentProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumContentValueCode-SL'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumContentProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumContentValueCode-ST'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingFormProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingFormValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingFormProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingFormValueCode-CI'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingFormProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingFormValueCode-DC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingFormProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingFormValueCode-DE'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingFormProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingFormValueCode-DI'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingFormProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingFormValueCode-O'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcHardnessProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcHardnessValueCode-B'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcHardnessProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcHardnessValueCode-H'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcHardnessProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcHardnessValueCode-S'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#poresAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#poresAbundanceValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#poresAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#poresAbundanceValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#poresAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#poresAbundanceValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#poresAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#poresAbundanceValueCode-N'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#poresAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#poresAbundanceValueCode-V'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcSizeValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcSizeValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcSizeValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcSizeValueCode-V'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#stickinessProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#stickinessValueCode-NST'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#stickinessProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#stickinessValueCode-SSS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#stickinessProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#stickinessValueCode-SST'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#stickinessProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#stickinessValueCode-ST'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#stickinessProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#stickinessValueCode-SVS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#stickinessProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#stickinessValueCode-VST'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingLocationProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingLocationValueCode-BR'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingLocationProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingLocationValueCode-CF'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingLocationProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingLocationValueCode-LA'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingLocationProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingLocationValueCode-NS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingLocationProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingLocationValueCode-P'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingLocationProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingLocationValueCode-PH'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingLocationProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingLocationValueCode-PV'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingLocationProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingLocationValueCode-VO'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonatesFormsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesFormsValueCode-D'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonatesFormsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesFormsValueCode-HC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonatesFormsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesFormsValueCode-HHC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonatesFormsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesFormsValueCode-HL'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonatesFormsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesFormsValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonatesFormsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesFormsValueCode-PM'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonatesFormsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesFormsValueCode-SC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#rootsAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rootsAbundanceValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#rootsAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rootsAbundanceValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#rootsAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rootsAbundanceValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#rootsAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rootsAbundanceValueCode-N'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#rootsAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rootsAbundanceValueCode-V'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationContinuityProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationContinuityValueCode-B'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationContinuityProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationContinuityValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationContinuityProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationContinuityValueCode-D'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-B'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-L'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-S'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDepthProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDepthValueCode-D'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDepthProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDepthValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDepthProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDepthValueCode-S'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDepthProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDepthValueCode-V'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDistanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDistanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-D'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDistanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDistanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-V'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksDistanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-W'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksWidthProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-E'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksWidthProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksWidthProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksWidthProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-V'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#cracksWidthProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-W'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-A'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-D'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-N'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-S'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-V'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockShapeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockShapeValueCode-A'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockShapeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockShapeValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockShapeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockShapeValueCode-R'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockShapeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockShapeValueCode-S'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-A'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-AC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-AF'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-AM'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-AV'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-BL'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-CS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-FM'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-MC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-R'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RB'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RC'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RF'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RL'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RM'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RS'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-SB'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#weatheringFragmentsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#weatheringFragmentsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-S'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#weatheringFragmentsProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-W'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentCoverProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-A'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentCoverProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-C'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentCoverProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-D'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentCoverProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-F'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentCoverProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-M'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentCoverProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-N'));

    INSERT INTO core.observation_desc_element
           (property_desc_element_id, thesaurus_desc_element_id)
    VALUES ((SELECT property_desc_element_id
               FROM core.property_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/common#fragmentCoverProperty'),
            (SELECT thesaurus_desc_element_id
               FROM core.thesaurus_desc_element
              WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-V'));
