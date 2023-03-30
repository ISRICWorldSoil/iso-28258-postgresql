--! Previous: sha1:a23ee981beee66cda248a8c50805d23a841bc0ec
--! Hash: sha1:b1bbaddedb0cf78e301de48918813c510238f3fe
--! Message: Updates sequences associated with IDENTITY primary keys (issue #21)

-- Enter migration here

DO
$do$
BEGIN
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'property_desc_plot_property_desc_plot_id_seq') 
   THEN
       PERFORM setval('core.property_desc_plot_property_desc_plot_id_seq', 
                     (SELECT MAX(property_desc_plot_id) FROM core.property_desc_plot), true);
   END IF;
   
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'property_desc_plot_property_desc_plot_id_seq1') 
   THEN
       PERFORM setval('core.property_desc_plot_property_desc_plot_id_seq1', 
                     (SELECT MAX(property_desc_plot_id) FROM core.property_desc_plot), true);
   END IF;

  IF EXISTS (SELECT 0 FROM pg_class
              WHERE relname  = 'property_desc_surface_property_desc_surface_id_seq') 
  THEN
      PERFORM setval('core.property_desc_surface_property_desc_surface_id_seq', 
                    (SELECT MAX(property_desc_surface_id) FROM core.property_desc_surface), true);
  END IF;

  IF EXISTS (SELECT FROM pg_class
              WHERE relname  = 'property_desc_surface_property_desc_surface_id_seq1') 
  THEN
      PERFORM setval('core.property_desc_surface_property_desc_surface_id_seq1', 
                    (SELECT MAX(property_desc_surface_id) FROM core.property_desc_surface), true);
  END IF;

  IF EXISTS (SELECT FROM pg_class
              WHERE relname  = 'property_desc_profile_property_desc_profile_id_seq') 
  THEN
      PERFORM setval('core.property_desc_profile_property_desc_profile_id_seq', 
                    (SELECT MAX(property_desc_profile_id) FROM core.property_desc_profile), true);
  END IF;
  
  IF EXISTS (SELECT FROM pg_class
              WHERE relname  = 'property_desc_profile_property_desc_profile_id_seq1') 
  THEN
      PERFORM setval('core.property_desc_profile_property_desc_profile_id_seq1', 
                    (SELECT MAX(property_desc_profile_id) FROM core.property_desc_profile), true);
  END IF;
  
  IF EXISTS (SELECT FROM pg_class
              WHERE relname  = 'property_desc_element_property_desc_element_id_seq') 
  THEN
      PERFORM setval('core.property_desc_element_property_desc_element_id_seq', 
                    (SELECT MAX(property_desc_element_id) FROM core.property_desc_element), true);
  END IF;
  IF EXISTS (SELECT FROM pg_class
              WHERE relname  = 'property_desc_element_property_desc_element_id_seq1') 
  THEN
      PERFORM setval('core.property_desc_element_property_desc_element_id_seq1', 
                    (SELECT MAX(property_desc_element_id) FROM core.property_desc_element), true);
  END IF;
  
  IF EXISTS (SELECT FROM pg_class
              WHERE relname  = 'property_phys_chem_property_phys_chem_id_seq') 
  THEN
      PERFORM setval('core.property_phys_chem_property_phys_chem_id_seq', 
                    (SELECT MAX(property_phys_chem_id) FROM core.property_phys_chem), true);
  END IF;
  IF EXISTS (SELECT FROM pg_class
              WHERE relname  = 'property_phys_chem_property_phys_chem_id_seq1') 
  THEN
      PERFORM setval('core.property_phys_chem_property_phys_chem_id_seq1', 
                    (SELECT MAX(property_phys_chem_id) FROM core.property_phys_chem), true);
  END IF;

   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'procedure_phys_chem_procedure_phys_chem_id_seq') 
   THEN
       PERFORM setval('core.procedure_phys_chem_procedure_phys_chem_id_seq', 
                     (SELECT MAX(procedure_phys_chem_id) FROM core.procedure_phys_chem), true);
   END IF;
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'procedure_phys_chem_procedure_phys_chem_id_seq1') 
   THEN
       PERFORM setval('core.procedure_phys_chem_procedure_phys_chem_id_seq1', 
                     (SELECT MAX(procedure_phys_chem_id) FROM core.procedure_phys_chem), true);
   END IF;
   
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'procedure_desc_procedure_desc_id_seq') 
   THEN
       PERFORM setval('core.procedure_desc_procedure_desc_id_seq', 
                     (SELECT MAX(procedure_desc_id) FROM core.procedure_desc), true);
   END IF;
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'procedure_desc_procedure_desc_id_seq1') 
   THEN
       PERFORM setval('core.procedure_desc_procedure_desc_id_seq1', 
                     (SELECT MAX(procedure_desc_id) FROM core.procedure_desc), true);
   END IF;
   
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'thesaurus_desc_plot_thesaurus_desc_plot_id_seq') 
   THEN
       PERFORM setval('core.thesaurus_desc_plot_thesaurus_desc_plot_id_seq', 
                     (SELECT MAX(thesaurus_desc_plot_id) FROM core.thesaurus_desc_plot), true);
   END IF;
   
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'thesaurus_desc_plot_thesaurus_desc_plot_id_seq1') 
   THEN
       PERFORM setval('core.thesaurus_desc_plot_thesaurus_desc_plot_id_seq1', 
                     (SELECT MAX(thesaurus_desc_plot_id) FROM core.thesaurus_desc_plot), true);
   END IF;
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'thesaurus_desc_surface_thesaurus_desc_surface_id_seq') 
   THEN
       PERFORM setval('core.thesaurus_desc_surface_thesaurus_desc_surface_id_seq', 
                     (SELECT MAX(thesaurus_desc_surface_id) FROM core.thesaurus_desc_surface), true);
   END IF;
   
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'thesaurus_desc_surface_thesaurus_desc_surface_id_seq1') 
   THEN
       PERFORM setval('core.thesaurus_desc_surface_thesaurus_desc_surface_id_seq1', 
                     (SELECT MAX(thesaurus_desc_surface_id) FROM core.thesaurus_desc_surface), true);
   END IF;
   
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'thesaurus_desc_profile_thesaurus_desc_profile_id_seq') 
   THEN
       PERFORM setval('core.thesaurus_desc_profile_thesaurus_desc_profile_id_seq', 
                     (SELECT MAX(thesaurus_desc_profile_id) FROM core.thesaurus_desc_profile), true);
   END IF;
   
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'thesaurus_desc_profile_thesaurus_desc_profile_id_seq1') 
   THEN
       PERFORM setval('core.thesaurus_desc_profile_thesaurus_desc_profile_id_seq1', 
                     (SELECT MAX(thesaurus_desc_profile_id) FROM core.thesaurus_desc_profile), true);
   END IF;
   
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'thesaurus_desc_element_thesaurus_desc_element_id_seq') 
   THEN
       PERFORM setval('core.thesaurus_desc_element_thesaurus_desc_element_id_seq', 
                     (SELECT MAX(thesaurus_desc_element_id) FROM core.thesaurus_desc_element), true);
   END IF;
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'thesaurus_desc_element_thesaurus_desc_element_id_seq1') 
   THEN
       PERFORM setval('core.thesaurus_desc_element_thesaurus_desc_element_id_seq1', 
                     (SELECT MAX(thesaurus_desc_element_id) FROM core.thesaurus_desc_element), true);
   END IF;
   
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'observation_phys_chem_observation_phys_chem_id_seq') 
   THEN
       PERFORM setval('core.observation_phys_chem_observation_phys_chem_id_seq', 
                     (SELECT MAX(observation_phys_chem_id) FROM core.observation_phys_chem), true);
   END IF;
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'observation_phys_chem_observation_phys_chem_id_seq1') 
   THEN
       PERFORM setval('core.observation_phys_chem_observation_phys_chem_id_seq1', 
                     (SELECT MAX(observation_phys_chem_id) FROM core.observation_phys_chem), true);
   END IF;
   
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'unit_of_measure_unit_of_measure_id_seq') 
   THEN
       PERFORM setval('core.unit_of_measure_unit_of_measure_id_seq', 
                     (SELECT MAX(unit_of_measure_id) FROM core.unit_of_measure), true);
   END IF;
   IF EXISTS (SELECT FROM pg_class
               WHERE relname  = 'unit_of_measure_unit_of_measure_id_seq1') 
   THEN
       PERFORM setval('core.unit_of_measure_unit_of_measure_id_seq1', 
                     (SELECT MAX(unit_of_measure_id) FROM core.unit_of_measure), true);
   END IF;
   
END
$do$
;
