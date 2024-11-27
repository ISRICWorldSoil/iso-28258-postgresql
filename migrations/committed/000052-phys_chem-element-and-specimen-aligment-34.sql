--! Previous: sha1:c9c275d05d2129663e981695311fee2c58122384
--! Hash: sha1:cfc109c5a85c2664107aab6a7e7fd582df1932bf
--! Message: phys_chem element and specimen aligment #34

-- Drop tables
DROP TABLE IF EXISTS core.procedure_numerical_specimen CASCADE;
DROP TABLE IF EXISTS core.property_numerical_specimen CASCADE;

-- observation_phys_chem_specimen

ALTER TABLE IF EXISTS core.observation_numerical_specimen RENAME TO observation_phys_chem_specimen;
ALTER TABLE IF EXISTS core.observation_phys_chem_specimen DROP COLUMN IF EXISTS property_numerical_specimen_id;
ALTER TABLE IF EXISTS core.observation_phys_chem_specimen DROP COLUMN IF EXISTS procedure_numerical_specimen_id;

ALTER TABLE IF EXISTS core.observation_phys_chem_specimen ADD COLUMN IF NOT EXISTS property_phys_chem_id INTEGER NOT NULL;

COMMENT ON COLUMN core.observation_phys_chem_specimen.property_phys_chem_id
    IS 'Foreign key to the corresponding property';

ALTER TABLE IF EXISTS core.observation_phys_chem_specimen DROP CONSTRAINT IF EXISTS fk_property_phys_chem;
ALTER TABLE IF EXISTS core.observation_phys_chem_specimen 
    ADD CONSTRAINT fk_property_phys_chem FOREIGN KEY (property_phys_chem_id)
        REFERENCES core.property_phys_chem (property_phys_chem_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION;

ALTER TABLE IF EXISTS core.observation_phys_chem_specimen ADD COLUMN IF NOT EXISTS procedure_phys_chem_id INTEGER NOT NULL;
COMMENT ON COLUMN core.observation_phys_chem_specimen.procedure_phys_chem_id
    IS 'Foreign key to the corresponding procedure';

ALTER TABLE IF EXISTS core.observation_phys_chem_specimen DROP CONSTRAINT IF EXISTS fk_procedure_phys_chem;
ALTER TABLE IF EXISTS core.observation_phys_chem_specimen 
    ADD CONSTRAINT fk_procedure_phys_chem FOREIGN KEY (procedure_phys_chem_id)
        REFERENCES core.procedure_phys_chem (procedure_phys_chem_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION;

-- If the column exists in the table, rename it
DO
$$
    BEGIN
        ALTER TABLE IF EXISTS core.observation_phys_chem_specimen RENAME COLUMN observation_numerical_specimen_id TO observation_phys_chem_specimen_id;
    EXCEPTION
        WHEN undefined_column THEN -- No need to do anything
    END;
$$;

ALTER TABLE IF EXISTS core.observation_phys_chem_specimen DROP CONSTRAINT IF EXISTS observation_phys_chem_specimen_property_phys_chem_id_procedure_phys__key;
ALTER TABLE IF EXISTS core.observation_phys_chem_specimen 
    ADD CONSTRAINT observation_phys_chem_specimen_property_phys_chem_id_procedure_phys__key UNIQUE (property_phys_chem_id, procedure_phys_chem_id);


------- observation_phys_chem_element -------
ALTER TABLE IF EXISTS core.observation_phys_chem RENAME TO observation_phys_chem_element;

-- If the column exists in the table, rename it
DO
$$
    BEGIN
        ALTER TABLE IF EXISTS core.observation_phys_chem_element RENAME COLUMN observation_phys_chem_id TO observation_phys_chem_element_id;
    EXCEPTION
        WHEN undefined_column THEN -- No need to do anything
    END;
$$;


-------- result_phys_chem_element ---------
ALTER TABLE IF EXISTS core.result_phys_chem RENAME TO result_phys_chem_element;

-- If the column exists in the table, rename it
DO
$$
    BEGIN
        ALTER TABLE IF EXISTS core.result_phys_chem_element RENAME COLUMN result_phys_chem_id TO result_phys_chem_element_id;
    EXCEPTION
        WHEN undefined_column THEN -- No need to do anything
    END;
$$;

-- If the column exists in the table, rename it
DO
$$
    BEGIN
        ALTER TABLE IF EXISTS core.result_phys_chem_element RENAME COLUMN observation_phys_chem_id TO observation_phys_chem_element_id;
    EXCEPTION
        WHEN undefined_column THEN -- No need to do anything
    END;
$$;

-------- result_phys_chem_specimen ---------
ALTER TABLE IF EXISTS core.result_numerical_specimen RENAME TO result_phys_chem_specimen;


-- If the column exists in the table, rename it
DO
$$
    BEGIN
        ALTER TABLE IF EXISTS core.result_phys_chem_specimen RENAME COLUMN result_numerical_specimen_id TO result_phys_chem_specimen_id;
    EXCEPTION
        WHEN undefined_column THEN -- No need to do anything
    END;
$$;

-- If the column exists in the table, rename it
DO
$$
    BEGIN
        ALTER TABLE IF EXISTS core.result_phys_chem_specimen RENAME COLUMN observation_numerical_specimen_id TO observation_phys_chem_specimen_id;
    EXCEPTION
        WHEN undefined_column THEN -- No need to do anything
    END;
$$;
