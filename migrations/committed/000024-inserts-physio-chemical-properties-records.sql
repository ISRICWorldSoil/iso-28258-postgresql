--! Previous: sha1:dcab707873885f9817388f6a534b0b0efceebc6c
--! Hash: sha1:bfeb693624ef99c42e19a63c0330e2e11fa6cc28
--! Message: Inserts physio-chemical properties records

-- Enter migration here

DELETE FROM core.property_phys_chem;

INSERT INTO core.property_phys_chem (label, uri) VALUES ('Acidity - exchangeable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aciexc');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Aluminium (Al+++) - exchangeable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aluexc');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Available water capacity - volumetric (FC to WP)', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Avavol');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Base saturation - calculated', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bascal');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Boron (B) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Boron (B) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Calcium (Ca++) - exchangeable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calexc');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Calcium (Ca++) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Calcium (Ca++) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Carbon (C) - organic', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Carbon (C) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Cartot');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Copper (Cu) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Copper (Cu) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Hydrogen (H+) - exchangeable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Hydexc');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Iron (Fe) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Iron (Fe) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Magnesium (Mg++) - exchangeable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magexc');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Magnesium (Mg) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Magnesium (Mg) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Manganese (Mn) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Manganese (Mn) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Nitrogen (N) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Nittot');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Phosphorus (P) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Phosphorus (P) - retention', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoret');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Phosphorus (P) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Potassium (K+) - exchangeable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potexc');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Potassium (K) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Potassium (K) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Sodium (Na+) - exchangeable %', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodexp');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Sodium (Na) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Sodium (Na) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Sulfur (S) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Sulfur (S) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Clay texture fraction', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Sand texture fraction', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Silt texture fraction', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('Zinc (Zn) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext');
INSERT INTO core.property_phys_chem (label, uri) VALUES ('pH - Hydrogen potential', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH');
