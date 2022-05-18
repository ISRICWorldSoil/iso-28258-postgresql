--! Previous: sha1:906d8b08c68a3d23272ffe8856e34075a3732527
--! Hash: sha1:a504ba67640774cc57014a0fc5df1d7d4d8ce745
--! Message: Inserts complete set of units of measure

DELETE FROM core.unit_of_measure;

INSERT INTO core.unit_of_measure (label, uri) VALUES ('Centimetre Per Hour', 'http://qudt.org/vocab/unit/CentiM-PER-HR');
INSERT INTO core.unit_of_measure (label, uri) VALUES ('Percent', 'http://qudt.org/vocab/unit/PERCENT');
INSERT INTO core.unit_of_measure (label, uri) VALUES ('Centimole per kilogram', 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM');
INSERT INTO core.unit_of_measure (label, uri) VALUES ('decisiemens per metre', 'http://qudt.org/vocab/unit/DeciS-PER-M');
INSERT INTO core.unit_of_measure (label, uri) VALUES ('Gram Per Kilogram', 'http://qudt.org/vocab/unit/GM-PER-KiloGM');
INSERT INTO core.unit_of_measure (label, uri) VALUES ('Kilogram Per Cubic Decimetre', 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3');
INSERT INTO core.unit_of_measure (label, uri) VALUES ('Acidity', 'http://qudt.org/vocab/unit/PH');
INSERT INTO core.unit_of_measure (label, uri) VALUES ('Centimol Per Litre', 'http://w3id.org/glosis/model/v1.0.0/unit#CentiMOL-PER-L');
INSERT INTO core.unit_of_measure (label, uri) VALUES ('Gram Per Hectogram', 'http://w3id.org/glosis/model/v1.0.0/unit#GM-PER-HectoGM');
INSERT INTO core.unit_of_measure (label, uri) VALUES ('Cubic metre per one hundred cubic metre', 'http://w3id.org/glosis/model/v1.0.0/unit#M3-PER-HundredM3');
