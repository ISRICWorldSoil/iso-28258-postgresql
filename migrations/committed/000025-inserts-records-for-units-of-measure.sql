--! Previous: sha1:bfeb693624ef99c42e19a63c0330e2e11fa6cc28
--! Hash: sha1:c3e801f1045e773aa4d9746208c4fa5917b16cdd
--! Message: Inserts records for units of measure

-- Enter migration here

DELETE FROM core.unit_of_measure;

INSERT INTO core.unit_of_measure (label, uri) VALUES ('Percent', 'http://qudt.org/vocab/unit/PERCENT');
INSERT INTO core.unit_of_measure (label, uri) VALUES ('Centimole per kilogram', 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM');
INSERT INTO core.unit_of_measure (label, uri) VALUES ('Gram Per Kilogram', 'http://qudt.org/vocab/unit/GM-PER-KiloGM');
INSERT INTO core.unit_of_measure (label, uri) VALUES ('Acidity', 'http://qudt.org/vocab/unit/PH');
INSERT INTO core.unit_of_measure (label, uri) VALUES ('Centimol Per Litre', 'http://w3id.org/glosis/model/v1.0.0/unit#CentiMOL-PER-L');
INSERT INTO core.unit_of_measure (label, uri) VALUES ('Gram Per Hectogram', 'http://w3id.org/glosis/model/v1.0.0/unit#GM-PER-HectoGM');
INSERT INTO core.unit_of_measure (label, uri) VALUES ('Cubic metre per one hundred cubic metre', 'http://w3id.org/glosis/model/v1.0.0/unit#M3-PER-HundredM3');
