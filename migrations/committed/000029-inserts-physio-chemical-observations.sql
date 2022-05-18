--! Previous: sha1:a504ba67640774cc57014a0fc5df1d7d4d8ce745
--! Hash: sha1:dfa6fec946f81c49aec915bfad9e86e64a712f99
--! Message: Inserts physio-chemical observations

DELETE FROM core.observation_phys_chem;

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aciexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#acidityExchangeableProcedure-ExchAcid_ph0-kcl1m'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aciexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#acidityExchangeableProcedure-ExchAcid_ph0-nh4cl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aciexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#acidityExchangeableProcedure-ExchAcid_ph0-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aciexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#acidityExchangeableProcedure-ExchAcid_ph7-caoac'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aciexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#acidityExchangeableProcedure-ExchAcid_ph7-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aciexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#acidityExchangeableProcedure-ExchAcid_ph8-bacl2tea'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aciexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#acidityExchangeableProcedure-ExchAcid_ph8-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Avavol'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/unit#M3-PER-HundredM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#availableWaterHoldingCapacityProcedure-PAWHC_calcul-fc100wp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Avavol'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/unit#M3-PER-HundredM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#availableWaterHoldingCapacityProcedure-PAWHC_calcul-fc200wp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Avavol'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/unit#M3-PER-HundredM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#availableWaterHoldingCapacityProcedure-PAWHC_calcul-fc300wp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bascal'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#baseSaturationProcedure-BSat_calcul-cec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bascal'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#baseSaturationProcedure-BSat_calcul-ecec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityFineEarthProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-cl-fc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityFineEarthProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-cl-od'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityFineEarthProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-cl-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityFineEarthProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-co-fc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityFineEarthProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-co-od'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityFineEarthProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-co-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityFineEarthProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-rpl-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityFineEarthProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityFineEarthProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-unkn-fc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityFineEarthProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-unkn-od'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityWholeSoilProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityWholeSoilProcedure-BlkDensW_we-cl-fc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityWholeSoilProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityWholeSoilProcedure-BlkDensW_we-cl-od'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityWholeSoilProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityWholeSoilProcedure-BlkDensW_we-cl-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityWholeSoilProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityWholeSoilProcedure-BlkDensW_we-co-fc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityWholeSoilProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityWholeSoilProcedure-BlkDensW_we-co-od'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityWholeSoilProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityWholeSoilProcedure-BlkDensW_we-co-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityWholeSoilProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityWholeSoilProcedure-BlkDensW_we-rpl-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityWholeSoilProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityWholeSoilProcedure-BlkDensW_we-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonInorganicProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonInorganicProcedure-InOrgC_calcul-caco3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonInorganicProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonInorganicProcedure-InOrgC_calcul-tc-oc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_acid-dc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_acid-dc-ht'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_acid-dc-ht-analyser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_acid-dc-lt'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_acid-dc-lt-loi'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_acid-dc-mt'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_acid-dc-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_calcul-tc-ic'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_dc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_dc-ht'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_dc-ht-analyser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_dc-lt'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_dc-lt-loi'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_dc-mt'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_dc-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc-cro3-jackson'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc-cro3-kalembra'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc-cro3-knopp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc-cro3-kurmies'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc-cro3-nelson'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc-cro3-nrcs6a1c'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc-cro3-tiurin'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc-cro3-walkleyblack'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Cartot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonTotalProcedure-TotC_calcul-ic-oc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Cartot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonTotalProcedure-TotC_dc-ht'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Cartot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonTotalProcedure-TotC_dc-ht-analyser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Cartot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonTotalProcedure-TotC_dc-ht-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Cartot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonTotalProcedure-TotC_dc-mt'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coarseFragmentsProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#coarseFragmentsProcedure-CrsFrg_fld'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coarseFragmentsProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#coarseFragmentsProcedure-CrsFrg_fldcls'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coarseFragmentsProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#coarseFragmentsProcedure-CrsFrg_lab'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#effectiveCecProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#effectiveCecProcedure-EffCEC_calcul-b'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#effectiveCecProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#effectiveCecProcedure-EffCEC_calcul-ba'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#electricalConductivityProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/DeciS-PER-M'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#electricalConductivityProcedure-EC_ratio1-1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#electricalConductivityProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/DeciS-PER-M'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#electricalConductivityProcedure-EC_ratio1-10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#electricalConductivityProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/DeciS-PER-M'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#electricalConductivityProcedure-EC_ratio1-2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#electricalConductivityProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/DeciS-PER-M'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#electricalConductivityProcedure-EC_ratio1-2.5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#electricalConductivityProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/DeciS-PER-M'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#electricalConductivityProcedure-EC_ratio1-5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#electricalConductivityProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/DeciS-PER-M'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#electricalConductivityProcedure-ECe_sat'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#manganeseProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#manganeseProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#manganeseProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#manganeseProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph0-cohex'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#manganeseProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph0-nh4cl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#manganeseProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#manganeseProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac-aas'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#manganeseProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac-fp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#manganeseProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#manganeseProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph8-bacl2tea'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#manganeseProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph8-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodexp'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodexp'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodexp'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodexp'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph0-cohex'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodexp'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph0-nh4cl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodexp'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodexp'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac-aas'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodexp'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac-fp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodexp'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodexp'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph8-bacl2tea'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodexp'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph8-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Hydexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Hydexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Hydexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Hydexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph0-cohex'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Hydexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph0-nh4cl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Hydexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Hydexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac-aas'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Hydexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac-fp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Hydexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Hydexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph8-bacl2tea'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Hydexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph8-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph0-cohex'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph0-nh4cl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac-aas'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac-fp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph8-bacl2tea'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph8-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aluexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aluexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aluexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aluexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph0-cohex'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aluexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph0-nh4cl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aluexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aluexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac-aas'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aluexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac-fp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aluexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aluexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph8-bacl2tea'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aluexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph8-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph0-cohex'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph0-nh4cl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac-aas'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac-fp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph8-bacl2tea'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph8-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph0-cohex'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph0-nh4cl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac-aas'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac-fp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph8-bacl2tea'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magexc'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph8-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap14'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap15'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap20'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap21'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_c6h8o7-reeuwijk'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_cacl2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_capo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_dtpa'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_h2so4-truog'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-h2so4-nelson'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-kurtz-bray'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hno3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hotwater'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen-dabin'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_naoac-morgan'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4-co3-2-ambic1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4ch3ch-oh-cooh-leuven'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap14'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap15'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap20'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap21'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_c6h8o7-reeuwijk'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_cacl2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_capo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_dtpa'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_h2so4-truog'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-h2so4-nelson'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-kurtz-bray'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hno3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hotwater'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen-dabin'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_naoac-morgan'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4-co3-2-ambic1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4ch3ch-oh-cooh-leuven'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap14'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap15'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap20'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap21'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_c6h8o7-reeuwijk'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_cacl2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_capo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_dtpa'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_h2so4-truog'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-h2so4-nelson'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-kurtz-bray'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hno3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hotwater'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen-dabin'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_naoac-morgan'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4-co3-2-ambic1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4ch3ch-oh-cooh-leuven'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap14'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap15'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap20'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap21'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_c6h8o7-reeuwijk'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_cacl2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_capo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_dtpa'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_h2so4-truog'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-h2so4-nelson'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-kurtz-bray'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hno3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hotwater'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen-dabin'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_naoac-morgan'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4-co3-2-ambic1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4ch3ch-oh-cooh-leuven'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap14'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap15'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap20'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap21'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_c6h8o7-reeuwijk'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_cacl2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_capo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_dtpa'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_h2so4-truog'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-h2so4-nelson'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-kurtz-bray'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hno3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hotwater'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen-dabin'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_naoac-morgan'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4-co3-2-ambic1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4ch3ch-oh-cooh-leuven'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap14'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap15'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap20'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap21'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_c6h8o7-reeuwijk'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_cacl2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_capo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_dtpa'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_h2so4-truog'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-h2so4-nelson'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-kurtz-bray'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hno3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hotwater'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen-dabin'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_naoac-morgan'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4-co3-2-ambic1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4ch3ch-oh-cooh-leuven'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap14'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap15'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap20'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap21'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_c6h8o7-reeuwijk'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_cacl2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_capo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_dtpa'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_h2so4-truog'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-h2so4-nelson'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-kurtz-bray'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hno3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hotwater'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen-dabin'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_naoac-morgan'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4-co3-2-ambic1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4ch3ch-oh-cooh-leuven'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap14'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap15'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap20'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap21'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_c6h8o7-reeuwijk'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_cacl2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_capo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_dtpa'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_h2so4-truog'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-h2so4-nelson'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-kurtz-bray'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hno3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hotwater'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen-dabin'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_naoac-morgan'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4-co3-2-ambic1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4ch3ch-oh-cooh-leuven'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap14'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap15'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap20'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap21'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_c6h8o7-reeuwijk'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_cacl2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_capo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_dtpa'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_h2so4-truog'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-h2so4-nelson'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-kurtz-bray'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hno3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hotwater'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen-dabin'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_naoac-morgan'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4-co3-2-ambic1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4ch3ch-oh-cooh-leuven'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap14'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap15'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap20'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap21'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_c6h8o7-reeuwijk'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_cacl2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_capo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_dtpa'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_h2so4-truog'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-h2so4-nelson'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-kurtz-bray'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hno3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hotwater'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen-dabin'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_naoac-morgan'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4-co3-2-ambic1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4ch3ch-oh-cooh-leuven'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap14'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap15'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap20'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap21'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_c6h8o7-reeuwijk'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_cacl2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_capo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_dtpa'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_h2so4-truog'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-h2so4-nelson'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-kurtz-bray'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hno3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hotwater'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen-dabin'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_naoac-morgan'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4-co3-2-ambic1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4ch3ch-oh-cooh-leuven'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap14'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap15'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap20'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap21'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_c6h8o7-reeuwijk'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_cacl2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_capo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_dtpa'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_h2so4-truog'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-h2so4-nelson'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-kurtz-bray'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hno3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hotwater'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen-dabin'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_naoac-morgan'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4-co3-2-ambic1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4ch3ch-oh-cooh-leuven'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap14'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap15'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap20'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap21'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_c6h8o7-reeuwijk'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_cacl2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_capo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_dtpa'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_edta'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_h2so4-truog'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-h2so4-nelson'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-kurtz-bray'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hno3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hotwater'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen-dabin'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_naoac-morgan'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4-co3-2-ambic1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4ch3ch-oh-cooh-leuven'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#gypsumProcedure-CaSO4_gy01'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#gypsumProcedure-CaSO4_gy02'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#gypsumProcedure-CaSO4_gy03'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#gypsumProcedure-CaSO4_gy04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#gypsumProcedure-CaSO4_gy05'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#gypsumProcedure-CaSO4_gy06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#gypsumProcedure-CaSO4_gy07'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#hydraulicConductivityProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiM-PER-HR'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#hydraulicConductivityProcedure-KSat_calcul-ptf'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#hydraulicConductivityProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiM-PER-HR'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#hydraulicConductivityProcedure-KSat_calcul-ptf-genuchten'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#hydraulicConductivityProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiM-PER-HR'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#hydraulicConductivityProcedure-KSat_calcul-ptf-saxton'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#hydraulicConductivityProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiM-PER-HR'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#hydraulicConductivityProcedure-Ksat_bhole'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#hydraulicConductivityProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiM-PER-HR'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#hydraulicConductivityProcedure-Ksat_column'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#hydraulicConductivityProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiM-PER-HR'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#hydraulicConductivityProcedure-Ksat_dblring'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#hydraulicConductivityProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiM-PER-HR'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#hydraulicConductivityProcedure-Ksat_invbhole'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Nittot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_bremner'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Nittot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_calcul'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Nittot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_calcul-oc10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Nittot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_dc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Nittot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_dc-ht-dumas'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Nittot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_dc-ht-leco'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Nittot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_dc-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Nittot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_h2so4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Nittot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_kjeldahl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Nittot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_kjeldahl-nh4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Nittot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_nelson'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Nittot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_tn04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Nittot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_tn06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Nittot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_tn08'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#organicMatterProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#organicMatterProcedure-FulAcidC_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#organicMatterProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#organicMatterProcedure-HumAcidC_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#organicMatterProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#organicMatterProcedure-OrgM_calcul-oc1.73'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#organicMatterProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#organicMatterProcedure-TotHumC_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_ratio1-1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_ratio1-10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_ratio1-2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_ratio1-2.5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_ratio1-5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_sat'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_ratio1-1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_ratio1-10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_ratio1-2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_ratio1-2.5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_ratio1-5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_sat'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_unkn-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_ratio1-1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_ratio1-10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_ratio1-2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_ratio1-2.5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_ratio1-5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_sat'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_ratio1-1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_ratio1-10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_ratio1-2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_ratio1-2.5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_ratio1-5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_sat'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_ratio1-1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_ratio1-10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_ratio1-2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_ratio1-2.5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_ratio1-5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_sat'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_ratio1-1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_ratio1-10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_ratio1-2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_ratio1-2.5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_ratio1-5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_sat'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_unkn-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_ratio1-1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_ratio1-10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_ratio1-2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_ratio1-2.5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_ratio1-5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_sat'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_ratio1-1'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_ratio1-10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_ratio1-2'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_ratio1-2.5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_ratio1-5'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PH'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_sat'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoret'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/unit#GM-PER-HectoGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#phosphorusRetentionProcedure-RetentP_blakemore'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoret'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/unit#GM-PER-HectoGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#phosphorusRetentionProcedure-RetentP_unkn-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#porosityProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/unit#M3-PER-HundredM3'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#porosityProcedure-Poros_calcul-pf0'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#solubleSaltsProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/unit#CentiMOL-PER-L'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#solubleSaltsProcedure-SlbAn_calcul-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#solubleSaltsProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/unit#CentiMOL-PER-L'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#solubleSaltsProcedure-SlbCat_calcul-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-adj100'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-beaker'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-fld'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-adj100'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-beaker'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-fld'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-adj100'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-beaker'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-fld'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-adj100'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-beaker'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-fld'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-adj100'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-beaker'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-fld'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-adj100'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-beaker'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-fld'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-adj100'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-beaker'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-fld'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-adj100'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-beaker'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-fld'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-adj100'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-beaker'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-fld'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-hydrometer'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-hydrometer-bouy'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-laser'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-pipette'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-spec'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-ch3cooh-dc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-ch3cooh-nodc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-ch3cooh-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-dc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-h2so4-dc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-h2so4-nodc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-h2so4-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-h3po4-dc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-h3po4-nodc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-h3po4-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-hcl-dc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-hcl-nodc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-hcl-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-nodc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca01'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca02'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca03'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca05'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca07'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca08'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca09'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca11'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca12'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/GM-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_calcul-tc-oc'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_h2so4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl-aquaregia'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hclo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hno3-aquafortis'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_nh4-6mo7o24'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp03'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp05'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp07'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp08'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp09'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrd'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf-p'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xtf-t'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_h2so4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl-aquaregia'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hclo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hno3-aquafortis'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_nh4-6mo7o24'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp03'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp05'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp07'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp08'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp09'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrd'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf-p'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xtf-t'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_h2so4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl-aquaregia'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hclo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hno3-aquafortis'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_nh4-6mo7o24'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp03'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp05'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp07'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp08'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp09'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrd'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf-p'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xtf-t'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_h2so4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl-aquaregia'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hclo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hno3-aquafortis'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_nh4-6mo7o24'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp03'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp05'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp07'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp08'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp09'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrd'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf-p'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xtf-t'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_h2so4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl-aquaregia'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hclo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hno3-aquafortis'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_nh4-6mo7o24'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp03'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp05'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp07'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp08'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp09'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrd'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf-p'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xtf-t'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_h2so4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl-aquaregia'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hclo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hno3-aquafortis'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_nh4-6mo7o24'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp03'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp05'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp07'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp08'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp09'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrd'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf-p'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xtf-t'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_h2so4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl-aquaregia'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hclo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hno3-aquafortis'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_nh4-6mo7o24'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp03'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp05'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp07'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp08'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp09'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrd'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf-p'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xtf-t'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_h2so4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl-aquaregia'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hclo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hno3-aquafortis'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_nh4-6mo7o24'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp03'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp05'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp07'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp08'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp09'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrd'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf-p'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xtf-t'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_h2so4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl-aquaregia'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hclo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hno3-aquafortis'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_nh4-6mo7o24'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp03'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp05'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp07'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp08'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp09'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrd'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf-p'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xtf-t'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_h2so4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl-aquaregia'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hclo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hno3-aquafortis'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_nh4-6mo7o24'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp03'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp05'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp07'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp08'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp09'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrd'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf-p'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xtf-t'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_h2so4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl-aquaregia'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hclo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hno3-aquafortis'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_nh4-6mo7o24'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp03'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp05'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp07'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp08'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp09'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrd'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf-p'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/PERCENT'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xtf-t'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_h2so4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl-aquaregia'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hclo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hno3-aquafortis'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_nh4-6mo7o24'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp03'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp05'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp07'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp08'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp09'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrd'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf-p'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xtf-t'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_h2so4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl-aquaregia'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hclo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hno3-aquafortis'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_nh4-6mo7o24'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp03'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp05'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp07'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp08'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp09'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrd'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf-p'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xtf-t'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_h2so4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl-aquaregia'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hclo4'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hno3-aquafortis'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_nh4-6mo7o24'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp03'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp04'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp05'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp06'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp07'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp08'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp09'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp10'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_unkn'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrd'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf-p'));

INSERT INTO core.observation_phys_chem
       (property_phys_chem_id,
        unit_of_measure_id,
        procedure_phys_chem_id) 
VALUES ((SELECT property_phys_chem_id
           FROM core.property_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot'),
        (SELECT unit_of_measure_id
           FROM core.unit_of_measure
          WHERE uri LIKE 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM'),
        (SELECT procedure_phys_chem_id
           FROM core.procedure_phys_chem
          WHERE uri LIKE 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xtf-t'));
