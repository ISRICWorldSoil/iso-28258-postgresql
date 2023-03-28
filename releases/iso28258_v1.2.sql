--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6 (Ubuntu 14.6-1.pgdg22.04+1)
-- Dumped by pg_dump version 14.6 (Ubuntu 14.6-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: core; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA core;


--
-- Name: SCHEMA core; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA core IS 'Core entities and relations from the ISO-28258 domain model';


--
-- Name: metadata; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA metadata;


--
-- Name: SCHEMA metadata; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA metadata IS 'Meta-data model based on VCard: https://www.w3.org/TR/vcard-rdf';


--
-- Name: element_type; Type: TYPE; Schema: core; Owner: -
--

CREATE TYPE core.element_type AS ENUM (
    'Horizon',
    'Layer'
);


--
-- Name: TYPE element_type; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TYPE core.element_type IS 'Type of Profile Element';


--
-- Name: check_result_value(); Type: FUNCTION; Schema: core; Owner: -
--

CREATE FUNCTION core.check_result_value() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
    observation core.observation_phys_chem%ROWTYPE;
BEGIN
    SELECT * 
      INTO observation
      FROM core.observation_phys_chem
     WHERE observation_phys_chem_id = NEW.observation_phys_chem_id;
    
    IF NEW.value < observation.value_min OR NEW.value > observation.value_max THEN
        RAISE EXCEPTION 'Result value outside admissable bounds for the related observation.';
    ELSE
        RETURN NEW;
    END IF; 
END;
$$;


--
-- Name: FUNCTION check_result_value(); Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON FUNCTION core.check_result_value() IS 'Checks if the value assigned to a result record is within the numerical bounds declared in the related observations (fields value_min and value_max).';


--
-- Name: check_result_value_specimen(); Type: FUNCTION; Schema: core; Owner: -
--

CREATE FUNCTION core.check_result_value_specimen() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
    observation core.observation_numerical_specimen%ROWTYPE;
BEGIN
    SELECT *
      INTO observation
      FROM core.observation_numerical_specimen
     WHERE observation_numerical_specimen_id = NEW.observation_numerical_specimen_id;

    IF NEW.value < observation.value_min OR NEW.value > observation.value_max THEN
        RAISE EXCEPTION 'Result value outside admissable bounds for the related observation.';
    ELSE
        RETURN NEW;
    END IF;
END;
$$;


--
-- Name: FUNCTION check_result_value_specimen(); Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON FUNCTION core.check_result_value_specimen() IS 'Checks if the value assigned to a result record is within the numerical bounds declared in the related observation (fields value_min and value_max).';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: element; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.element (
    profile_id integer NOT NULL,
    order_element integer,
    upper_depth integer NOT NULL,
    lower_depth integer NOT NULL,
    type core.element_type NOT NULL,
    element_id integer NOT NULL,
    CONSTRAINT element_check CHECK (((lower_depth > upper_depth) AND (upper_depth <= 200))),
    CONSTRAINT element_order_element_check CHECK ((order_element > 0)),
    CONSTRAINT element_upper_depth_check CHECK ((upper_depth >= 0))
);


--
-- Name: TABLE element; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.element IS 'ProfileElement is the super-class of Horizon and Layer, which share the same basic properties. Horizons develop in a layer, which in turn have been developed throught geogenesis or anthropogenic action. Layers can be used to describe common characteristics of a set of adjoining horizons. For the time being no assocation is previewed between Horizon and Layer.';


--
-- Name: COLUMN element.profile_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.element.profile_id IS 'Reference to the Profile to which this element belongs';


--
-- Name: COLUMN element.order_element; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.element.order_element IS 'Order of this element within the Profile';


--
-- Name: COLUMN element.upper_depth; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.element.upper_depth IS 'Upper depth of this profile element in centimetres.';


--
-- Name: COLUMN element.lower_depth; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.element.lower_depth IS 'Lower depth of this profile element in centimetres.';


--
-- Name: COLUMN element.type; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.element.type IS 'Type of profile element, Horizon or Layer';


--
-- Name: COLUMN element.element_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.element.element_id IS 'Synthetic primary key.';


--
-- Name: element_element_id_seq; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.element ALTER COLUMN element_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.element_element_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: observation_desc_element; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.observation_desc_element (
    property_desc_element_id integer NOT NULL,
    thesaurus_desc_element_id integer NOT NULL,
    procedure_desc_id integer NOT NULL
);


--
-- Name: TABLE observation_desc_element; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.observation_desc_element IS 'Descriptive properties for the Surface feature of interest';


--
-- Name: COLUMN observation_desc_element.property_desc_element_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_desc_element.property_desc_element_id IS 'Foreign key to the corresponding property';


--
-- Name: COLUMN observation_desc_element.thesaurus_desc_element_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_desc_element.thesaurus_desc_element_id IS 'Foreign key to the corresponding thesaurus entry';


--
-- Name: observation_desc_plot; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.observation_desc_plot (
    property_desc_plot_id integer NOT NULL,
    thesaurus_desc_plot_id integer NOT NULL,
    procedure_desc_id integer NOT NULL
);


--
-- Name: TABLE observation_desc_plot; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.observation_desc_plot IS 'Descriptive properties for the Surface feature of interest';


--
-- Name: COLUMN observation_desc_plot.property_desc_plot_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_desc_plot.property_desc_plot_id IS 'Foreign key to the corresponding property';


--
-- Name: COLUMN observation_desc_plot.thesaurus_desc_plot_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_desc_plot.thesaurus_desc_plot_id IS 'Foreign key to the corresponding thesaurus entry';


--
-- Name: observation_desc_profile; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.observation_desc_profile (
    property_desc_profile_id integer NOT NULL,
    thesaurus_desc_profile_id integer NOT NULL,
    procedure_desc_id integer NOT NULL
);


--
-- Name: TABLE observation_desc_profile; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.observation_desc_profile IS 'Descriptive properties for the Surface feature of interest';


--
-- Name: COLUMN observation_desc_profile.property_desc_profile_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_desc_profile.property_desc_profile_id IS 'Foreign key to the corresponding property';


--
-- Name: COLUMN observation_desc_profile.thesaurus_desc_profile_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_desc_profile.thesaurus_desc_profile_id IS 'Foreign key to the corresponding thesaurus entry';


--
-- Name: observation_desc_specimen; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.observation_desc_specimen (
    property_desc_specimen_id integer NOT NULL,
    thesaurus_desc_specimen_id integer NOT NULL,
    procedure_desc_id integer
);


--
-- Name: TABLE observation_desc_specimen; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.observation_desc_specimen IS 'Descriptive properties for the Specimen feature of interest';


--
-- Name: COLUMN observation_desc_specimen.property_desc_specimen_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_desc_specimen.property_desc_specimen_id IS 'Foreign key to the corresponding property';


--
-- Name: COLUMN observation_desc_specimen.thesaurus_desc_specimen_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_desc_specimen.thesaurus_desc_specimen_id IS 'Foreign key to the corresponding thesaurus entry';


--
-- Name: observation_desc_surface; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.observation_desc_surface (
    property_desc_surface_id integer NOT NULL,
    thesaurus_desc_surface_id integer NOT NULL,
    procedure_desc_id integer NOT NULL
);


--
-- Name: TABLE observation_desc_surface; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.observation_desc_surface IS 'Descriptive properties for the Surface feature of interest';


--
-- Name: COLUMN observation_desc_surface.property_desc_surface_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_desc_surface.property_desc_surface_id IS 'Foreign key to the corresponding property';


--
-- Name: COLUMN observation_desc_surface.thesaurus_desc_surface_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_desc_surface.thesaurus_desc_surface_id IS 'Foreign key to the corresponding thesaurus entry';


--
-- Name: observation_numerical_specimen; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.observation_numerical_specimen (
    observation_numerical_specimen_id integer NOT NULL,
    property_numerical_specimen_id integer NOT NULL,
    procedure_numerical_specimen_id integer NOT NULL,
    unit_of_measure_id integer NOT NULL,
    value_min numeric,
    value_max numeric
);


--
-- Name: TABLE observation_numerical_specimen; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.observation_numerical_specimen IS 'Numerical observations for the Specimen feature of interest';


--
-- Name: COLUMN observation_numerical_specimen.observation_numerical_specimen_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_numerical_specimen.observation_numerical_specimen_id IS 'Synthetic primary key for the observation';


--
-- Name: COLUMN observation_numerical_specimen.property_numerical_specimen_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_numerical_specimen.property_numerical_specimen_id IS 'Foreign key to the corresponding property';


--
-- Name: COLUMN observation_numerical_specimen.procedure_numerical_specimen_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_numerical_specimen.procedure_numerical_specimen_id IS 'Foreign key to the corresponding procedure';


--
-- Name: COLUMN observation_numerical_specimen.unit_of_measure_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_numerical_specimen.unit_of_measure_id IS 'Foreign key to the corresponding unit of measure (if applicable)';


--
-- Name: COLUMN observation_numerical_specimen.value_min; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_numerical_specimen.value_min IS 'Minimum admissable value for this combination of property, procedure and unit of measure';


--
-- Name: COLUMN observation_numerical_specimen.value_max; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_numerical_specimen.value_max IS 'Maximum admissable value for this combination of property, procedure and unit of measure';


--
-- Name: observation_numerical_specime_observation_numerical_specime_seq; Type: SEQUENCE; Schema: core; Owner: -
--

CREATE SEQUENCE core.observation_numerical_specime_observation_numerical_specime_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: observation_numerical_specime_observation_numerical_specime_seq; Type: SEQUENCE OWNED BY; Schema: core; Owner: -
--

ALTER SEQUENCE core.observation_numerical_specime_observation_numerical_specime_seq OWNED BY core.observation_numerical_specimen.observation_numerical_specimen_id;


--
-- Name: observation_phys_chem; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.observation_phys_chem (
    observation_phys_chem_id integer NOT NULL,
    property_phys_chem_id integer NOT NULL,
    procedure_phys_chem_id integer NOT NULL,
    unit_of_measure_id integer NOT NULL,
    value_min numeric,
    value_max numeric
);


--
-- Name: TABLE observation_phys_chem; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.observation_phys_chem IS 'Physio-chemical observations for the Element feature of interest';


--
-- Name: COLUMN observation_phys_chem.observation_phys_chem_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_phys_chem.observation_phys_chem_id IS 'Synthetic primary key for the observation';


--
-- Name: COLUMN observation_phys_chem.property_phys_chem_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_phys_chem.property_phys_chem_id IS 'Foreign key to the corresponding property';


--
-- Name: COLUMN observation_phys_chem.procedure_phys_chem_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_phys_chem.procedure_phys_chem_id IS 'Foreign key to the corresponding procedure';


--
-- Name: COLUMN observation_phys_chem.unit_of_measure_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_phys_chem.unit_of_measure_id IS 'Foreign key to the corresponding unit of measure (if applicable)';


--
-- Name: COLUMN observation_phys_chem.value_min; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_phys_chem.value_min IS 'Minimum admissable value for this combination of property, procedure and unit of measure';


--
-- Name: COLUMN observation_phys_chem.value_max; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.observation_phys_chem.value_max IS 'Maximum admissable value for this combination of property, procedure and unit of measure';


--
-- Name: observation_phys_chem_observation_phys_chem_id_seq; Type: SEQUENCE; Schema: core; Owner: -
--

CREATE SEQUENCE core.observation_phys_chem_observation_phys_chem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: observation_phys_chem_observation_phys_chem_id_seq; Type: SEQUENCE OWNED BY; Schema: core; Owner: -
--

ALTER SEQUENCE core.observation_phys_chem_observation_phys_chem_id_seq OWNED BY core.observation_phys_chem.observation_phys_chem_id;


--
-- Name: plot; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.plot (
    plot_code character varying,
    site_id integer NOT NULL,
    altitude numeric,
    time_stamp date,
    map_sheet_code character varying,
    positional_accuracy numeric,
    "position" public.geometry(Point,4326),
    plot_id integer NOT NULL,
    CONSTRAINT plot_altitude_check CHECK ((altitude > ('-100'::integer)::numeric)),
    CONSTRAINT plot_altitude_check1 CHECK ((altitude < (8000)::numeric)),
    CONSTRAINT plot_time_stamp_check CHECK ((time_stamp > '1900-01-01'::date))
);


--
-- Name: TABLE plot; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.plot IS 'Elementary area or location where individual observations are made and/or samples are taken. Plot is the main spatial feature of interest in ISO-28258. Plot has three sub-classes: Borehole, Pit and Surface. Surface features its own table since it has its own properties and a different geometry.';


--
-- Name: COLUMN plot.plot_code; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.plot.plot_code IS 'Natural key, can be null.';


--
-- Name: COLUMN plot.altitude; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.plot.altitude IS 'Altitude at the plot in metres, if known. Property re-used from GloSIS.';


--
-- Name: COLUMN plot.time_stamp; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.plot.time_stamp IS 'Time stamp of the plot, if known. Property re-used from GloSIS.';


--
-- Name: COLUMN plot.map_sheet_code; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.plot.map_sheet_code IS 'Code identifying the map sheet where the plot may be positioned. Property re-used from GloSIS.';


--
-- Name: COLUMN plot."position"; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.plot."position" IS 'Geodetic coordinates of the spatial position of the plot. Note the uncertainty associated with WGS84 datum ensemble.';


--
-- Name: COLUMN plot.plot_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.plot.plot_id IS 'Synthetic primary key.';


--
-- Name: plot_individual; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.plot_individual (
    plot_id integer NOT NULL,
    individual_id integer NOT NULL
);


--
-- Name: TABLE plot_individual; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.plot_individual IS 'Identifies the individual(s) responsible for surveying a plot';


--
-- Name: COLUMN plot_individual.plot_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.plot_individual.plot_id IS 'Foreign key to the plot table, identifies the plot surveyed';


--
-- Name: COLUMN plot_individual.individual_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.plot_individual.individual_id IS 'Foreign key to the individual table, indicates the individual responsible for surveying the plot.';


--
-- Name: plot_plot_id_seq; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.plot ALTER COLUMN plot_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.plot_plot_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: procedure_desc; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.procedure_desc (
    label character varying NOT NULL,
    reference character varying,
    uri character varying NOT NULL,
    procedure_desc_id integer NOT NULL
);


--
-- Name: TABLE procedure_desc; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.procedure_desc IS 'Descriptive Procedures for all features of interest. In most cases the procedure is described in a document such as the FAO Guidelines for Soil Description or the World Reference Base of Soil Resources.';


--
-- Name: COLUMN procedure_desc.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.procedure_desc.label IS 'Short label for this procedure.';


--
-- Name: COLUMN procedure_desc.reference; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.procedure_desc.reference IS 'Long and human readable reference to the publication.';


--
-- Name: COLUMN procedure_desc.uri; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.procedure_desc.uri IS 'URI to the corresponding publication, optimally a DOI. Follow this URI for the full definition of the procedure.';


--
-- Name: COLUMN procedure_desc.procedure_desc_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.procedure_desc.procedure_desc_id IS 'Synthetic primary key.';


--
-- Name: procedure_desc_procedure_desc_id_seq1; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.procedure_desc ALTER COLUMN procedure_desc_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.procedure_desc_procedure_desc_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: procedure_numerical_specimen; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.procedure_numerical_specimen (
    broader_id integer,
    label character varying NOT NULL,
    definition character varying NOT NULL,
    procedure_numerical_specimen_id integer NOT NULL
);


--
-- Name: TABLE procedure_numerical_specimen; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.procedure_numerical_specimen IS 'Procedures for numerical observations on the Specimen feature of interest';


--
-- Name: COLUMN procedure_numerical_specimen.broader_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.procedure_numerical_specimen.broader_id IS 'Foreign key to broader procedure in the hierarchy';


--
-- Name: COLUMN procedure_numerical_specimen.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.procedure_numerical_specimen.label IS 'Short label for this procedure';


--
-- Name: COLUMN procedure_numerical_specimen.definition; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.procedure_numerical_specimen.definition IS 'Full semantic definition of this procedure, can be a URI to the corresponding in a controlled vocabulary (e.g. GloSIS).';


--
-- Name: COLUMN procedure_numerical_specimen.procedure_numerical_specimen_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.procedure_numerical_specimen.procedure_numerical_specimen_id IS 'Synthetic primary key.';


--
-- Name: procedure_numerical_specimen_procedure_numerical_specimen_i_seq; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.procedure_numerical_specimen ALTER COLUMN procedure_numerical_specimen_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.procedure_numerical_specimen_procedure_numerical_specimen_i_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: procedure_phys_chem; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.procedure_phys_chem (
    broader_id integer,
    label character varying NOT NULL,
    uri character varying NOT NULL,
    procedure_phys_chem_id integer NOT NULL
);


--
-- Name: TABLE procedure_phys_chem; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.procedure_phys_chem IS 'Physio-chemical Procedures for the Profile Element feature of interest';


--
-- Name: COLUMN procedure_phys_chem.broader_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.procedure_phys_chem.broader_id IS 'Foreign key to brader procedure in the hierarchy';


--
-- Name: COLUMN procedure_phys_chem.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.procedure_phys_chem.label IS 'Short label for this procedure';


--
-- Name: COLUMN procedure_phys_chem.uri; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.procedure_phys_chem.uri IS 'URI to the corresponding in a controlled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this procedure';


--
-- Name: COLUMN procedure_phys_chem.procedure_phys_chem_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.procedure_phys_chem.procedure_phys_chem_id IS 'Synthetic primary key.';


--
-- Name: procedure_phys_chem_procedure_phys_chem_id_seq1; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.procedure_phys_chem ALTER COLUMN procedure_phys_chem_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.procedure_phys_chem_procedure_phys_chem_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: profile; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.profile (
    profile_code character varying,
    plot_id integer,
    surface_id integer,
    profile_id integer NOT NULL,
    CONSTRAINT site_mandatory_foi CHECK ((((plot_id IS NOT NULL) OR (surface_id IS NOT NULL)) AND (NOT ((plot_id IS NOT NULL) AND (surface_id IS NOT NULL)))))
);


--
-- Name: TABLE profile; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.profile IS 'An abstract, ordered set of soil horizons and/or layers.';


--
-- Name: COLUMN profile.profile_code; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.profile.profile_code IS 'Natural primary key, if existing';


--
-- Name: COLUMN profile.plot_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.profile.plot_id IS 'Foreign key to Plot feature of interest';


--
-- Name: COLUMN profile.surface_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.profile.surface_id IS 'Foreign key to Surface feature of interest';


--
-- Name: COLUMN profile.profile_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.profile.profile_id IS 'Synthetic primary key.';


--
-- Name: profile_profile_id_seq; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.profile ALTER COLUMN profile_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.profile_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: project; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.project (
    name character varying NOT NULL,
    project_id integer NOT NULL
);


--
-- Name: TABLE project; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.project IS 'Provides the context of the data collection as a prerequisite for the proper use or reuse of these data.';


--
-- Name: COLUMN project.name; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.project.name IS 'Natural key with project name.';


--
-- Name: COLUMN project.project_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.project.project_id IS 'Synthetic primary key.';


--
-- Name: project_organisation; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.project_organisation (
    project_id integer NOT NULL,
    organisation_id integer NOT NULL
);


--
-- Name: project_project_id_seq; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.project ALTER COLUMN project_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.project_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: project_related; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.project_related (
    project_source_id integer NOT NULL,
    project_target_id integer NOT NULL,
    role character varying NOT NULL
);


--
-- Name: TABLE project_related; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.project_related IS 'Relationship between two projects, e.g. project B being a sub-project of project A.';


--
-- Name: COLUMN project_related.project_source_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.project_related.project_source_id IS 'Foreign key to source project.';


--
-- Name: COLUMN project_related.project_target_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.project_related.project_target_id IS 'Foreign key to targe project.';


--
-- Name: COLUMN project_related.role; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.project_related.role IS 'Role of source project in target project. This intended to be a code-list but no codes are given in the standard';


--
-- Name: property_desc_element; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.property_desc_element (
    label character varying NOT NULL,
    uri character varying NOT NULL,
    property_desc_element_id integer NOT NULL
);


--
-- Name: TABLE property_desc_element; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.property_desc_element IS 'Descriptive properties for the Element feature of interest';


--
-- Name: COLUMN property_desc_element.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_desc_element.label IS 'Short label for this property';


--
-- Name: COLUMN property_desc_element.uri; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_desc_element.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this property';


--
-- Name: COLUMN property_desc_element.property_desc_element_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_desc_element.property_desc_element_id IS 'Synthetic primary key.';


--
-- Name: property_desc_element_property_desc_element_id_seq1; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.property_desc_element ALTER COLUMN property_desc_element_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.property_desc_element_property_desc_element_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: property_desc_plot; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.property_desc_plot (
    label character varying NOT NULL,
    uri character varying NOT NULL,
    property_desc_plot_id integer NOT NULL
);


--
-- Name: TABLE property_desc_plot; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.property_desc_plot IS 'Descriptive properties for the Plot feature of interest';


--
-- Name: COLUMN property_desc_plot.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_desc_plot.label IS 'Short label for this property';


--
-- Name: COLUMN property_desc_plot.uri; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_desc_plot.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this property';


--
-- Name: COLUMN property_desc_plot.property_desc_plot_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_desc_plot.property_desc_plot_id IS 'Synthetic primary key.';


--
-- Name: property_desc_plot_property_desc_plot_id_seq1; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.property_desc_plot ALTER COLUMN property_desc_plot_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.property_desc_plot_property_desc_plot_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: property_desc_profile; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.property_desc_profile (
    label character varying NOT NULL,
    uri character varying NOT NULL,
    property_desc_profile_id integer NOT NULL
);


--
-- Name: TABLE property_desc_profile; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.property_desc_profile IS 'Descriptive properties for the Profile feature of interest';


--
-- Name: COLUMN property_desc_profile.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_desc_profile.label IS 'Short label for this property';


--
-- Name: COLUMN property_desc_profile.uri; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_desc_profile.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this property';


--
-- Name: COLUMN property_desc_profile.property_desc_profile_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_desc_profile.property_desc_profile_id IS 'Synthetic primary key.';


--
-- Name: property_desc_profile_property_desc_profile_id_seq1; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.property_desc_profile ALTER COLUMN property_desc_profile_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.property_desc_profile_property_desc_profile_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: property_desc_specimen; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.property_desc_specimen (
    label character varying NOT NULL,
    definition character varying NOT NULL,
    property_desc_specimen_id integer NOT NULL
);


--
-- Name: TABLE property_desc_specimen; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.property_desc_specimen IS 'Descriptive properties for the Specimen feature of interest';


--
-- Name: COLUMN property_desc_specimen.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_desc_specimen.label IS 'Short label for this property';


--
-- Name: COLUMN property_desc_specimen.definition; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_desc_specimen.definition IS 'Full semantic definition of this property, can be a URI to the corresponding code in a controled vocabulary (e.g. GloSIS).';


--
-- Name: COLUMN property_desc_specimen.property_desc_specimen_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_desc_specimen.property_desc_specimen_id IS 'Synthetic primary key.';


--
-- Name: property_desc_specimen_property_desc_specimen_id_seq1; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.property_desc_specimen ALTER COLUMN property_desc_specimen_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.property_desc_specimen_property_desc_specimen_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: property_desc_surface; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.property_desc_surface (
    label character varying NOT NULL,
    uri character varying NOT NULL,
    property_desc_surface_id integer NOT NULL
);


--
-- Name: TABLE property_desc_surface; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.property_desc_surface IS 'Descriptive properties for the Surface feature of interest';


--
-- Name: COLUMN property_desc_surface.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_desc_surface.label IS 'Short label for this property';


--
-- Name: COLUMN property_desc_surface.uri; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_desc_surface.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this property';


--
-- Name: COLUMN property_desc_surface.property_desc_surface_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_desc_surface.property_desc_surface_id IS 'Synthetic primary key.';


--
-- Name: property_desc_surface_property_desc_surface_id_seq1; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.property_desc_surface ALTER COLUMN property_desc_surface_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.property_desc_surface_property_desc_surface_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: property_numerical_specimen; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.property_numerical_specimen (
    property_numerical_specimen_id integer NOT NULL,
    label character varying NOT NULL,
    definition character varying NOT NULL
);


--
-- Name: TABLE property_numerical_specimen; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.property_numerical_specimen IS 'Properties for numerical observations on the Specimen feature of interest';


--
-- Name: COLUMN property_numerical_specimen.property_numerical_specimen_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_numerical_specimen.property_numerical_specimen_id IS 'Synthetic primary key for the property';


--
-- Name: COLUMN property_numerical_specimen.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_numerical_specimen.label IS 'Short label for this property';


--
-- Name: COLUMN property_numerical_specimen.definition; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_numerical_specimen.definition IS 'Full semantic definition of this property, can be a URI to the corresponding code in a controled vocabulary (e.g. GloSIS).';


--
-- Name: property_numerical_specimen_property_numerical_specimen_id_seq; Type: SEQUENCE; Schema: core; Owner: -
--

CREATE SEQUENCE core.property_numerical_specimen_property_numerical_specimen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: property_numerical_specimen_property_numerical_specimen_id_seq; Type: SEQUENCE OWNED BY; Schema: core; Owner: -
--

ALTER SEQUENCE core.property_numerical_specimen_property_numerical_specimen_id_seq OWNED BY core.property_numerical_specimen.property_numerical_specimen_id;


--
-- Name: property_phys_chem; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.property_phys_chem (
    label character varying NOT NULL,
    uri character varying NOT NULL,
    property_phys_chem_id integer NOT NULL
);


--
-- Name: TABLE property_phys_chem; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.property_phys_chem IS 'Physio-chemical properties for the Element feature of interest';


--
-- Name: COLUMN property_phys_chem.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_phys_chem.label IS 'Short label for this property';


--
-- Name: COLUMN property_phys_chem.uri; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_phys_chem.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this property';


--
-- Name: COLUMN property_phys_chem.property_phys_chem_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.property_phys_chem.property_phys_chem_id IS 'Synthetic primary key.';


--
-- Name: property_phys_chem_property_phys_chem_id_seq1; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.property_phys_chem ALTER COLUMN property_phys_chem_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.property_phys_chem_property_phys_chem_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: result_desc_element; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.result_desc_element (
    element_id integer NOT NULL,
    property_desc_element_id integer NOT NULL,
    thesaurus_desc_element_id integer NOT NULL
);


--
-- Name: TABLE result_desc_element; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.result_desc_element IS 'Descriptive results for the Element feature interest.';


--
-- Name: COLUMN result_desc_element.element_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.result_desc_element.element_id IS 'Foreign key to the corresponding Element feature of interest.';


--
-- Name: result_desc_plot; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.result_desc_plot (
    plot_id integer NOT NULL,
    property_desc_plot_id integer NOT NULL,
    thesaurus_desc_plot_id integer NOT NULL
);


--
-- Name: TABLE result_desc_plot; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.result_desc_plot IS 'Descriptive results for the Plot feature interest.';


--
-- Name: COLUMN result_desc_plot.plot_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.result_desc_plot.plot_id IS 'Foreign key to the corresponding Plot feature of interest.';


--
-- Name: result_desc_profile; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.result_desc_profile (
    profile_id integer NOT NULL,
    property_desc_profile_id integer NOT NULL,
    thesaurus_desc_profile_id integer NOT NULL
);


--
-- Name: TABLE result_desc_profile; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.result_desc_profile IS 'Descriptive results for the Profile feature interest.';


--
-- Name: COLUMN result_desc_profile.profile_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.result_desc_profile.profile_id IS 'Foreign key to the corresponding Profile feature of interest.';


--
-- Name: result_desc_specimen; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.result_desc_specimen (
    specimen_id integer NOT NULL,
    property_desc_specimen_id integer NOT NULL,
    thesaurus_desc_specimen_id integer NOT NULL
);


--
-- Name: TABLE result_desc_specimen; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.result_desc_specimen IS 'Descriptive results for the Specimen feature interest.';


--
-- Name: COLUMN result_desc_specimen.specimen_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.result_desc_specimen.specimen_id IS 'Foreign key to the corresponding Specimen feature of interest.';


--
-- Name: COLUMN result_desc_specimen.property_desc_specimen_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.result_desc_specimen.property_desc_specimen_id IS 'Partial foreign key to the corresponding Observation.';


--
-- Name: COLUMN result_desc_specimen.thesaurus_desc_specimen_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.result_desc_specimen.thesaurus_desc_specimen_id IS 'Partial foreign key to the corresponding Observation.';


--
-- Name: result_desc_surface; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.result_desc_surface (
    surface_id integer NOT NULL,
    property_desc_surface_id integer NOT NULL,
    thesaurus_desc_surface_id integer NOT NULL
);


--
-- Name: TABLE result_desc_surface; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.result_desc_surface IS 'Descriptive results for the Surface feature interest.';


--
-- Name: COLUMN result_desc_surface.surface_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.result_desc_surface.surface_id IS 'Foreign key to the corresponding Surface feature of interest.';


--
-- Name: result_numerical_specimen; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.result_numerical_specimen (
    result_numerical_specimen_id integer NOT NULL,
    observation_numerical_specimen_id integer NOT NULL,
    specimen_id integer NOT NULL,
    value numeric NOT NULL,
    organisation_id integer
);


--
-- Name: TABLE result_numerical_specimen; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.result_numerical_specimen IS 'Numerical results for the Specimen feature interest.';


--
-- Name: COLUMN result_numerical_specimen.result_numerical_specimen_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.result_numerical_specimen.result_numerical_specimen_id IS 'Synthetic primary key.';


--
-- Name: COLUMN result_numerical_specimen.observation_numerical_specimen_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.result_numerical_specimen.observation_numerical_specimen_id IS 'Foreign key to the corresponding numerical observation.';


--
-- Name: COLUMN result_numerical_specimen.specimen_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.result_numerical_specimen.specimen_id IS 'Foreign key to the corresponding Specimen instance.';


--
-- Name: COLUMN result_numerical_specimen.value; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.result_numerical_specimen.value IS 'Numerical value resulting from applying the refered observation to the refered specimen.';


--
-- Name: result_numerical_specimen_result_numerical_specimen_id_seq; Type: SEQUENCE; Schema: core; Owner: -
--

CREATE SEQUENCE core.result_numerical_specimen_result_numerical_specimen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: result_numerical_specimen_result_numerical_specimen_id_seq; Type: SEQUENCE OWNED BY; Schema: core; Owner: -
--

ALTER SEQUENCE core.result_numerical_specimen_result_numerical_specimen_id_seq OWNED BY core.result_numerical_specimen.result_numerical_specimen_id;


--
-- Name: result_phys_chem; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.result_phys_chem (
    result_phys_chem_id integer NOT NULL,
    observation_phys_chem_id integer NOT NULL,
    element_id integer NOT NULL,
    value numeric NOT NULL,
    individual_id integer
);


--
-- Name: TABLE result_phys_chem; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.result_phys_chem IS 'Physio-chemical results for the Element feature interest.';


--
-- Name: COLUMN result_phys_chem.result_phys_chem_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.result_phys_chem.result_phys_chem_id IS 'Synthetic primary key.';


--
-- Name: COLUMN result_phys_chem.observation_phys_chem_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.result_phys_chem.observation_phys_chem_id IS 'Foreign key to the corresponding physio-chemical observation.';


--
-- Name: COLUMN result_phys_chem.element_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.result_phys_chem.element_id IS 'Foreign key to the corresponding Element instance.';


--
-- Name: COLUMN result_phys_chem.value; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.result_phys_chem.value IS 'Numerical value resulting from applying the refered observation to the refered profile element.';


--
-- Name: result_phys_chem_result_phys_chem_id_seq; Type: SEQUENCE; Schema: core; Owner: -
--

CREATE SEQUENCE core.result_phys_chem_result_phys_chem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: result_phys_chem_result_phys_chem_id_seq; Type: SEQUENCE OWNED BY; Schema: core; Owner: -
--

ALTER SEQUENCE core.result_phys_chem_result_phys_chem_id_seq OWNED BY core.result_phys_chem.result_phys_chem_id;


--
-- Name: site; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.site (
    site_code character varying,
    "position" public.geometry(Point,4326),
    extent public.geometry(Polygon,4326),
    typical_profile integer,
    site_id integer NOT NULL,
    CONSTRAINT site_mandatory_geometry CHECK (((("position" IS NOT NULL) OR (extent IS NOT NULL)) AND (NOT (("position" IS NOT NULL) AND (extent IS NOT NULL)))))
);


--
-- Name: TABLE site; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.site IS 'Defined area which is subject to a soil quality investigation. Site is not a spatial feature of interest, but provides the link between the spatial features of interest (Plot) to the Project. The geometry can either be a location (point) or extent (polygon) but not both at the same time.';


--
-- Name: COLUMN site.site_code; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.site.site_code IS 'Natural key, can be null.';


--
-- Name: COLUMN site."position"; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.site."position" IS 'Geodetic coordinates of the spatial position of the site. Note the uncertainty associated with WGS84 datum ensemble.';


--
-- Name: COLUMN site.extent; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.site.extent IS 'Site extent expressed with geodetic coordinates of the site. Note the uncertainty associated with WGS84 datum ensemble.';


--
-- Name: COLUMN site.typical_profile; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.site.typical_profile IS 'Foreign key to a profile providing a typical characterisation of this site.';


--
-- Name: COLUMN site.site_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.site.site_id IS 'Synthetic primary key.';


--
-- Name: site_project; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.site_project (
    site_id integer NOT NULL,
    project_id integer NOT NULL
);


--
-- Name: TABLE site_project; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.site_project IS 'Many to many relation between Site and Project.';


--
-- Name: COLUMN site_project.site_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.site_project.site_id IS 'Foreign key to Site table';


--
-- Name: COLUMN site_project.project_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.site_project.project_id IS 'Foreign key to Project table';


--
-- Name: site_site_id_seq; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.site ALTER COLUMN site_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.site_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: specimen; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.specimen (
    code character varying,
    plot_id integer NOT NULL,
    specimen_prep_process_id integer,
    upper_depth integer NOT NULL,
    lower_depth integer NOT NULL,
    organisation_id integer,
    specimen_id integer NOT NULL
);


--
-- Name: TABLE specimen; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.specimen IS 'Soil Specimen is defined in ISO-28258 as: "a subtype of SF_Specimen. Soil Specimen may be taken in the Site, Plot, Profile, or ProfileElement including their subtypes." In this database Specimen is for now only associated to Plot for simplification.';


--
-- Name: COLUMN specimen.code; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen.code IS 'External code used to identify the soil Specimen (if used).';


--
-- Name: COLUMN specimen.plot_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen.plot_id IS 'Foreign key to the associated soil Plot';


--
-- Name: COLUMN specimen.specimen_prep_process_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen.specimen_prep_process_id IS 'Foreign key to the preparation process used on this soil Specimen.';


--
-- Name: COLUMN specimen.upper_depth; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen.upper_depth IS 'Upper depth of this soil specimen in centimetres.';


--
-- Name: COLUMN specimen.lower_depth; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen.lower_depth IS 'Lower depth of this soil specimen in centimetres.';


--
-- Name: COLUMN specimen.organisation_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen.organisation_id IS 'Individual that is responsible for, or carried out, the process that produced this result.';


--
-- Name: COLUMN specimen.specimen_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen.specimen_id IS 'Synthetic primary key.';


--
-- Name: specimen_prep_process; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.specimen_prep_process (
    specimen_transport_id integer,
    specimen_storage_id integer,
    definition character varying NOT NULL,
    specimen_prep_process_id integer NOT NULL
);


--
-- Name: TABLE specimen_prep_process; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.specimen_prep_process IS 'Describes the preparation process of a soil Specimen. Contains information that does not result from observation(s).';


--
-- Name: COLUMN specimen_prep_process.specimen_transport_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen_prep_process.specimen_transport_id IS 'Foreign key for the corresponding mode of transport';


--
-- Name: COLUMN specimen_prep_process.specimen_storage_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen_prep_process.specimen_storage_id IS 'Foreign key for the corresponding mode of storage';


--
-- Name: COLUMN specimen_prep_process.definition; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen_prep_process.definition IS 'Further details necessary to define the preparation process.';


--
-- Name: COLUMN specimen_prep_process.specimen_prep_process_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen_prep_process.specimen_prep_process_id IS 'Synthetic primary key.';


--
-- Name: specimen_prep_process_specimen_prep_process_id_seq; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.specimen_prep_process ALTER COLUMN specimen_prep_process_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.specimen_prep_process_specimen_prep_process_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: specimen_specimen_id_seq; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.specimen ALTER COLUMN specimen_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.specimen_specimen_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: specimen_storage; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.specimen_storage (
    label character varying NOT NULL,
    definition character varying,
    specimen_storage_id integer NOT NULL
);


--
-- Name: TABLE specimen_storage; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.specimen_storage IS 'Modes of storage of a soil Specimen, part of the Specimen preparation process.';


--
-- Name: COLUMN specimen_storage.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen_storage.label IS 'Short label for the storage mode.';


--
-- Name: COLUMN specimen_storage.definition; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen_storage.definition IS 'Long definition providing all the necessary details for the storage mode.';


--
-- Name: COLUMN specimen_storage.specimen_storage_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen_storage.specimen_storage_id IS 'Synthetic primary key.';


--
-- Name: specimen_storage_specimen_storage_id_seq; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.specimen_storage ALTER COLUMN specimen_storage_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.specimen_storage_specimen_storage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: specimen_transport; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.specimen_transport (
    label character varying NOT NULL,
    definition character varying,
    specimen_transport_id integer NOT NULL
);


--
-- Name: TABLE specimen_transport; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.specimen_transport IS 'Modes of transport of a soil Specimen, part of the Specimen preparation process.';


--
-- Name: COLUMN specimen_transport.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen_transport.label IS 'Short label for the transport mode.';


--
-- Name: COLUMN specimen_transport.definition; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen_transport.definition IS 'Long definition providing all the necessary details for the transport mode.';


--
-- Name: COLUMN specimen_transport.specimen_transport_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.specimen_transport.specimen_transport_id IS 'Synthetic primary key.';


--
-- Name: specimen_transport_specimen_transport_id_seq; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.specimen_transport ALTER COLUMN specimen_transport_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.specimen_transport_specimen_transport_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: surface; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.surface (
    super_surface_id integer,
    site_id integer NOT NULL,
    shape public.geometry(Polygon,4326),
    time_stamp date,
    surface_id integer NOT NULL
);


--
-- Name: TABLE surface; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.surface IS 'Surface is a subtype of Plot with a shape geometry. Surfaces may be located within other
surfaces.';


--
-- Name: COLUMN surface.site_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.surface.site_id IS 'Foreign key to Site table';


--
-- Name: COLUMN surface.shape; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.surface.shape IS 'Site extent expressed with geodetic coordinates of the site. Note the uncertainty associated with the WGS84 datum ensemble.';


--
-- Name: COLUMN surface.time_stamp; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.surface.time_stamp IS 'Time stamp of the plot, if known. Property re-used from GloSIS.';


--
-- Name: COLUMN surface.surface_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.surface.surface_id IS 'Synthetic primary key.';


--
-- Name: surface_individual; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.surface_individual (
    surface_id integer NOT NULL,
    individual_id integer NOT NULL
);


--
-- Name: TABLE surface_individual; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.surface_individual IS 'Identifies the individual(s) responsible for surveying a surface';


--
-- Name: COLUMN surface_individual.surface_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.surface_individual.surface_id IS 'Foreign key to the surface table, identifies the surface surveyed';


--
-- Name: COLUMN surface_individual.individual_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.surface_individual.individual_id IS 'Foreign key to the individual table, indicates the individual responsible for surveying the surface.';


--
-- Name: surface_surface_id_seq; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.surface ALTER COLUMN surface_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.surface_surface_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: thesaurus_desc_element; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.thesaurus_desc_element (
    label character varying NOT NULL,
    uri character varying NOT NULL,
    thesaurus_desc_element_id integer NOT NULL
);


--
-- Name: TABLE thesaurus_desc_element; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.thesaurus_desc_element IS 'Vocabularies for the descriptive properties associated with the Element feature of interest. Corresponds to all GloSIS code-lists associated with the Horizon and Layer.';


--
-- Name: COLUMN thesaurus_desc_element.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.thesaurus_desc_element.label IS 'Short label for this term';


--
-- Name: COLUMN thesaurus_desc_element.uri; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.thesaurus_desc_element.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this term';


--
-- Name: COLUMN thesaurus_desc_element.thesaurus_desc_element_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.thesaurus_desc_element.thesaurus_desc_element_id IS 'Synthetic primary key.';


--
-- Name: thesaurus_desc_element_thesaurus_desc_element_id_seq1; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.thesaurus_desc_element ALTER COLUMN thesaurus_desc_element_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.thesaurus_desc_element_thesaurus_desc_element_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: thesaurus_desc_plot; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.thesaurus_desc_plot (
    label character varying NOT NULL,
    uri character varying NOT NULL,
    thesaurus_desc_plot_id integer NOT NULL
);


--
-- Name: TABLE thesaurus_desc_plot; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.thesaurus_desc_plot IS 'Descriptive properties for the Plot feature of interest';


--
-- Name: COLUMN thesaurus_desc_plot.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.thesaurus_desc_plot.label IS 'Short label for this term';


--
-- Name: COLUMN thesaurus_desc_plot.uri; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.thesaurus_desc_plot.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this term';


--
-- Name: COLUMN thesaurus_desc_plot.thesaurus_desc_plot_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.thesaurus_desc_plot.thesaurus_desc_plot_id IS 'Synthetic primary key.';


--
-- Name: thesaurus_desc_plot_thesaurus_desc_plot_id_seq1; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.thesaurus_desc_plot ALTER COLUMN thesaurus_desc_plot_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.thesaurus_desc_plot_thesaurus_desc_plot_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: thesaurus_desc_profile; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.thesaurus_desc_profile (
    label character varying NOT NULL,
    uri character varying NOT NULL,
    thesaurus_desc_profile_id integer NOT NULL
);


--
-- Name: TABLE thesaurus_desc_profile; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.thesaurus_desc_profile IS 'Vocabularies for the descriptive properties associated with the Profile feature of interest. Contains the GloSIS code-lists for Profile.';


--
-- Name: COLUMN thesaurus_desc_profile.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.thesaurus_desc_profile.label IS 'Short label for this term';


--
-- Name: COLUMN thesaurus_desc_profile.uri; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.thesaurus_desc_profile.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this term';


--
-- Name: COLUMN thesaurus_desc_profile.thesaurus_desc_profile_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.thesaurus_desc_profile.thesaurus_desc_profile_id IS 'Synthetic primary key.';


--
-- Name: thesaurus_desc_profile_thesaurus_desc_profile_id_seq1; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.thesaurus_desc_profile ALTER COLUMN thesaurus_desc_profile_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.thesaurus_desc_profile_thesaurus_desc_profile_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: thesaurus_desc_specimen; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.thesaurus_desc_specimen (
    label character varying NOT NULL,
    definition character varying NOT NULL,
    thesaurus_desc_specimen_id integer NOT NULL
);


--
-- Name: TABLE thesaurus_desc_specimen; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.thesaurus_desc_specimen IS 'Vocabularies for the descriptive properties associated with the Specimen feature of interest. This table is intended to host the code-lists necessary for descriptive observations on Specimen.';


--
-- Name: COLUMN thesaurus_desc_specimen.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.thesaurus_desc_specimen.label IS 'Short label for this term';


--
-- Name: COLUMN thesaurus_desc_specimen.definition; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.thesaurus_desc_specimen.definition IS 'Full semantic definition of this term, can be a URI to the corresponding code in a controled vocabulary (e.g. GloSIS).';


--
-- Name: COLUMN thesaurus_desc_specimen.thesaurus_desc_specimen_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.thesaurus_desc_specimen.thesaurus_desc_specimen_id IS 'Synthetic primary key.';


--
-- Name: thesaurus_desc_specimen_thesaurus_desc_specimen_id_seq1; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.thesaurus_desc_specimen ALTER COLUMN thesaurus_desc_specimen_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.thesaurus_desc_specimen_thesaurus_desc_specimen_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: thesaurus_desc_surface; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.thesaurus_desc_surface (
    label character varying NOT NULL,
    uri character varying NOT NULL,
    thesaurus_desc_surface_id integer NOT NULL
);


--
-- Name: TABLE thesaurus_desc_surface; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.thesaurus_desc_surface IS 'Descriptive properties for the Surface feature of interest';


--
-- Name: COLUMN thesaurus_desc_surface.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.thesaurus_desc_surface.label IS 'Short label for this term';


--
-- Name: COLUMN thesaurus_desc_surface.uri; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.thesaurus_desc_surface.uri IS 'URI to the corresponding code in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this term';


--
-- Name: COLUMN thesaurus_desc_surface.thesaurus_desc_surface_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.thesaurus_desc_surface.thesaurus_desc_surface_id IS 'Synthetic primary key.';


--
-- Name: thesaurus_desc_surface_thesaurus_desc_surface_id_seq1; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.thesaurus_desc_surface ALTER COLUMN thesaurus_desc_surface_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.thesaurus_desc_surface_thesaurus_desc_surface_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: unit_of_measure; Type: TABLE; Schema: core; Owner: -
--

CREATE TABLE core.unit_of_measure (
    label character varying NOT NULL,
    uri character varying NOT NULL,
    unit_of_measure_id integer NOT NULL
);


--
-- Name: TABLE unit_of_measure; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TABLE core.unit_of_measure IS 'Unit of measure';


--
-- Name: COLUMN unit_of_measure.label; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.unit_of_measure.label IS 'Short label for this unit of measure';


--
-- Name: COLUMN unit_of_measure.uri; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.unit_of_measure.uri IS 'URI to the corresponding unit of measuree in a controled vocabulary (e.g. GloSIS). Follow this URI for the full definition and semantics of this unit of measure';


--
-- Name: COLUMN unit_of_measure.unit_of_measure_id; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON COLUMN core.unit_of_measure.unit_of_measure_id IS 'Synthetic primary key.';


--
-- Name: unit_of_measure_unit_of_measure_id_seq1; Type: SEQUENCE; Schema: core; Owner: -
--

ALTER TABLE core.unit_of_measure ALTER COLUMN unit_of_measure_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME core.unit_of_measure_unit_of_measure_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: address; Type: TABLE; Schema: metadata; Owner: -
--

CREATE TABLE metadata.address (
    street_address character varying NOT NULL,
    postal_code character varying NOT NULL,
    locality character varying NOT NULL,
    country character varying NOT NULL,
    address_id integer NOT NULL
);


--
-- Name: TABLE address; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON TABLE metadata.address IS 'Equivalent to the Address class in VCard, defined as delivery address for the associated object.';


--
-- Name: COLUMN address.street_address; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.address.street_address IS 'Street address data property in VCard, including house number, e.g. "Generaal Foulkesweg 108".';


--
-- Name: COLUMN address.postal_code; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.address.postal_code IS 'Equivalent to the postal-code data property in VCard, e.g. "6701 PB".';


--
-- Name: COLUMN address.locality; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.address.locality IS 'Locality data property in VCard, referring to a village, town, city, etc, e.g. "Wageningen".';


--
-- Name: COLUMN address.address_id; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.address.address_id IS 'Synthetic primary key.';


--
-- Name: address_address_id_seq; Type: SEQUENCE; Schema: metadata; Owner: -
--

ALTER TABLE metadata.address ALTER COLUMN address_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME metadata.address_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: individual; Type: TABLE; Schema: metadata; Owner: -
--

CREATE TABLE metadata.individual (
    name character varying NOT NULL,
    honorific_title character varying,
    email character varying,
    telephone character varying,
    url character varying,
    address_id integer,
    individual_id integer NOT NULL
);


--
-- Name: TABLE individual; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON TABLE metadata.individual IS 'Equivalent to the Individual class in VCard, defined as a single person or entity.';


--
-- Name: COLUMN individual.name; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.individual.name IS 'Name of the individual, encompasses the data properties additional-name, given-name and family-name in VCard.';


--
-- Name: COLUMN individual.honorific_title; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.individual.honorific_title IS 'Academic title or honorific rank associated to the individual. Encompasses the data properties honorific-prefix, honorific-suffix and title in VCard.';


--
-- Name: COLUMN individual.email; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.individual.email IS 'Electronic mail address of the individual.';


--
-- Name: COLUMN individual.url; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.individual.url IS 'Locator to a web page associated with the individual.';


--
-- Name: COLUMN individual.address_id; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.individual.address_id IS 'Foreign key to address associated with the individual.';


--
-- Name: COLUMN individual.individual_id; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.individual.individual_id IS 'Synthetic primary key.';


--
-- Name: individual_individual_id_seq; Type: SEQUENCE; Schema: metadata; Owner: -
--

ALTER TABLE metadata.individual ALTER COLUMN individual_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME metadata.individual_individual_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: organisation; Type: TABLE; Schema: metadata; Owner: -
--

CREATE TABLE metadata.organisation (
    parent_id integer,
    name character varying NOT NULL,
    email character varying,
    telephone character varying,
    url character varying,
    address_id integer,
    organisation_id integer NOT NULL
);


--
-- Name: TABLE organisation; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON TABLE metadata.organisation IS 'Equivalent to the Organisation class in VCard, defined as a single entity, might also represent a business or government, a department or division within a business or government, a club, an association, or the like.';


--
-- Name: COLUMN organisation.parent_id; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.organisation.parent_id IS 'Foreign key to the parent organisation, in case of a department or division of a larger organisation.';


--
-- Name: COLUMN organisation.name; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.organisation.name IS 'Name of the organisation.';


--
-- Name: COLUMN organisation.email; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.organisation.email IS 'Electronic mail address of the organisation.';


--
-- Name: COLUMN organisation.url; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.organisation.url IS 'Locator to a web page associated with the organisation.';


--
-- Name: COLUMN organisation.address_id; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.organisation.address_id IS 'Foreign key to address associated with the organisation.';


--
-- Name: COLUMN organisation.organisation_id; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.organisation.organisation_id IS 'Synthetic primary key.';


--
-- Name: organisation_individual; Type: TABLE; Schema: metadata; Owner: -
--

CREATE TABLE metadata.organisation_individual (
    individual_id integer NOT NULL,
    organisation_id integer NOT NULL,
    organisation_unit_id integer,
    role character varying
);


--
-- Name: TABLE organisation_individual; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON TABLE metadata.organisation_individual IS 'Relation between Individual and Organisation. Captures the object properties hasOrganisationName, org and organisation-name in VCard. In most cases means that the individual works at the organisation in the unit specified.';


--
-- Name: COLUMN organisation_individual.individual_id; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.organisation_individual.individual_id IS 'Foreign key to the related individual.';


--
-- Name: COLUMN organisation_individual.organisation_id; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.organisation_individual.organisation_id IS 'Foreign key to the related organisation.';


--
-- Name: COLUMN organisation_individual.organisation_unit_id; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.organisation_individual.organisation_unit_id IS 'Foreign key to the organisational unit associating the individual with the organisation.';


--
-- Name: COLUMN organisation_individual.role; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.organisation_individual.role IS 'Role of the individual within the organisation and respective organisational unit, e.g. "director", "secretary".';


--
-- Name: organisation_organisation_id_seq; Type: SEQUENCE; Schema: metadata; Owner: -
--

ALTER TABLE metadata.organisation ALTER COLUMN organisation_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME metadata.organisation_organisation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: organisation_unit; Type: TABLE; Schema: metadata; Owner: -
--

CREATE TABLE metadata.organisation_unit (
    name character varying NOT NULL,
    organisation_id integer NOT NULL,
    organisation_unit_id integer NOT NULL
);


--
-- Name: TABLE organisation_unit; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON TABLE metadata.organisation_unit IS 'Captures the data property organisation-unit and object property hasOrganisationUnit in VCard. Defines the internal structure of the organisation, apart from the departmental hierarchy.';


--
-- Name: COLUMN organisation_unit.name; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.organisation_unit.name IS 'Name of the organisation unit.';


--
-- Name: COLUMN organisation_unit.organisation_id; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.organisation_unit.organisation_id IS 'Foreign key to the enclosing organisation, in case of a department or division of a larger organisation.';


--
-- Name: COLUMN organisation_unit.organisation_unit_id; Type: COMMENT; Schema: metadata; Owner: -
--

COMMENT ON COLUMN metadata.organisation_unit.organisation_unit_id IS 'Synthetic primary key.';


--
-- Name: organisation_unit_organisation_unit_id_seq; Type: SEQUENCE; Schema: metadata; Owner: -
--

ALTER TABLE metadata.organisation_unit ALTER COLUMN organisation_unit_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME metadata.organisation_unit_organisation_unit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: observation_numerical_specimen observation_numerical_specimen_id; Type: DEFAULT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_numerical_specimen ALTER COLUMN observation_numerical_specimen_id SET DEFAULT nextval('core.observation_numerical_specime_observation_numerical_specime_seq'::regclass);


--
-- Name: observation_phys_chem observation_phys_chem_id; Type: DEFAULT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_phys_chem ALTER COLUMN observation_phys_chem_id SET DEFAULT nextval('core.observation_phys_chem_observation_phys_chem_id_seq'::regclass);


--
-- Name: property_numerical_specimen property_numerical_specimen_id; Type: DEFAULT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_numerical_specimen ALTER COLUMN property_numerical_specimen_id SET DEFAULT nextval('core.property_numerical_specimen_property_numerical_specimen_id_seq'::regclass);


--
-- Name: result_numerical_specimen result_numerical_specimen_id; Type: DEFAULT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_numerical_specimen ALTER COLUMN result_numerical_specimen_id SET DEFAULT nextval('core.result_numerical_specimen_result_numerical_specimen_id_seq'::regclass);


--
-- Name: result_phys_chem result_phys_chem_id; Type: DEFAULT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_phys_chem ALTER COLUMN result_phys_chem_id SET DEFAULT nextval('core.result_phys_chem_result_phys_chem_id_seq'::regclass);


--
-- Data for Name: element; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: observation_desc_element; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.observation_desc_element VALUES (107, 97, 1);
INSERT INTO core.observation_desc_element VALUES (107, 98, 1);
INSERT INTO core.observation_desc_element VALUES (107, 99, 1);
INSERT INTO core.observation_desc_element VALUES (107, 100, 1);
INSERT INTO core.observation_desc_element VALUES (107, 101, 1);
INSERT INTO core.observation_desc_element VALUES (107, 102, 1);
INSERT INTO core.observation_desc_element VALUES (107, 103, 1);
INSERT INTO core.observation_desc_element VALUES (107, 104, 1);
INSERT INTO core.observation_desc_element VALUES (107, 105, 1);
INSERT INTO core.observation_desc_element VALUES (107, 106, 1);
INSERT INTO core.observation_desc_element VALUES (107, 107, 1);
INSERT INTO core.observation_desc_element VALUES (107, 108, 1);
INSERT INTO core.observation_desc_element VALUES (107, 109, 1);
INSERT INTO core.observation_desc_element VALUES (107, 110, 1);
INSERT INTO core.observation_desc_element VALUES (107, 111, 1);
INSERT INTO core.observation_desc_element VALUES (107, 112, 1);
INSERT INTO core.observation_desc_element VALUES (107, 113, 1);
INSERT INTO core.observation_desc_element VALUES (107, 114, 1);
INSERT INTO core.observation_desc_element VALUES (100, 50, 1);
INSERT INTO core.observation_desc_element VALUES (100, 51, 1);
INSERT INTO core.observation_desc_element VALUES (100, 52, 1);
INSERT INTO core.observation_desc_element VALUES (100, 53, 1);
INSERT INTO core.observation_desc_element VALUES (100, 54, 1);
INSERT INTO core.observation_desc_element VALUES (100, 55, 1);
INSERT INTO core.observation_desc_element VALUES (104, 80, 1);
INSERT INTO core.observation_desc_element VALUES (104, 81, 1);
INSERT INTO core.observation_desc_element VALUES (104, 82, 1);
INSERT INTO core.observation_desc_element VALUES (88, 1, 1);
INSERT INTO core.observation_desc_element VALUES (88, 2, 1);
INSERT INTO core.observation_desc_element VALUES (88, 3, 1);
INSERT INTO core.observation_desc_element VALUES (88, 4, 1);
INSERT INTO core.observation_desc_element VALUES (152, 286, 1);
INSERT INTO core.observation_desc_element VALUES (152, 287, 1);
INSERT INTO core.observation_desc_element VALUES (152, 288, 1);
INSERT INTO core.observation_desc_element VALUES (152, 289, 1);
INSERT INTO core.observation_desc_element VALUES (152, 290, 1);
INSERT INTO core.observation_desc_element VALUES (117, 162, 1);
INSERT INTO core.observation_desc_element VALUES (117, 163, 1);
INSERT INTO core.observation_desc_element VALUES (117, 164, 1);
INSERT INTO core.observation_desc_element VALUES (117, 165, 1);
INSERT INTO core.observation_desc_element VALUES (117, 166, 1);
INSERT INTO core.observation_desc_element VALUES (117, 167, 1);
INSERT INTO core.observation_desc_element VALUES (117, 168, 1);
INSERT INTO core.observation_desc_element VALUES (117, 169, 1);
INSERT INTO core.observation_desc_element VALUES (117, 170, 1);
INSERT INTO core.observation_desc_element VALUES (92, 25, 1);
INSERT INTO core.observation_desc_element VALUES (92, 26, 1);
INSERT INTO core.observation_desc_element VALUES (92, 27, 1);
INSERT INTO core.observation_desc_element VALUES (92, 28, 1);
INSERT INTO core.observation_desc_element VALUES (92, 29, 1);
INSERT INTO core.observation_desc_element VALUES (103, 73, 1);
INSERT INTO core.observation_desc_element VALUES (103, 74, 1);
INSERT INTO core.observation_desc_element VALUES (103, 75, 1);
INSERT INTO core.observation_desc_element VALUES (103, 76, 1);
INSERT INTO core.observation_desc_element VALUES (103, 77, 1);
INSERT INTO core.observation_desc_element VALUES (103, 78, 1);
INSERT INTO core.observation_desc_element VALUES (103, 79, 1);
INSERT INTO core.observation_desc_element VALUES (108, 115, 1);
INSERT INTO core.observation_desc_element VALUES (108, 116, 1);
INSERT INTO core.observation_desc_element VALUES (108, 117, 1);
INSERT INTO core.observation_desc_element VALUES (108, 118, 1);
INSERT INTO core.observation_desc_element VALUES (108, 119, 1);
INSERT INTO core.observation_desc_element VALUES (108, 120, 1);
INSERT INTO core.observation_desc_element VALUES (108, 121, 1);
INSERT INTO core.observation_desc_element VALUES (108, 122, 1);
INSERT INTO core.observation_desc_element VALUES (108, 123, 1);
INSERT INTO core.observation_desc_element VALUES (112, 138, 1);
INSERT INTO core.observation_desc_element VALUES (112, 139, 1);
INSERT INTO core.observation_desc_element VALUES (112, 140, 1);
INSERT INTO core.observation_desc_element VALUES (112, 141, 1);
INSERT INTO core.observation_desc_element VALUES (118, 171, 1);
INSERT INTO core.observation_desc_element VALUES (118, 172, 1);
INSERT INTO core.observation_desc_element VALUES (118, 173, 1);
INSERT INTO core.observation_desc_element VALUES (118, 174, 1);
INSERT INTO core.observation_desc_element VALUES (118, 175, 1);
INSERT INTO core.observation_desc_element VALUES (118, 176, 1);
INSERT INTO core.observation_desc_element VALUES (118, 177, 1);
INSERT INTO core.observation_desc_element VALUES (118, 178, 1);
INSERT INTO core.observation_desc_element VALUES (118, 179, 1);
INSERT INTO core.observation_desc_element VALUES (118, 180, 1);
INSERT INTO core.observation_desc_element VALUES (118, 181, 1);
INSERT INTO core.observation_desc_element VALUES (118, 182, 1);
INSERT INTO core.observation_desc_element VALUES (118, 183, 1);
INSERT INTO core.observation_desc_element VALUES (118, 184, 1);
INSERT INTO core.observation_desc_element VALUES (90, 17, 1);
INSERT INTO core.observation_desc_element VALUES (90, 18, 1);
INSERT INTO core.observation_desc_element VALUES (90, 19, 1);
INSERT INTO core.observation_desc_element VALUES (90, 20, 1);
INSERT INTO core.observation_desc_element VALUES (101, 56, 1);
INSERT INTO core.observation_desc_element VALUES (101, 57, 1);
INSERT INTO core.observation_desc_element VALUES (101, 58, 1);
INSERT INTO core.observation_desc_element VALUES (101, 59, 1);
INSERT INTO core.observation_desc_element VALUES (130, 210, 1);
INSERT INTO core.observation_desc_element VALUES (130, 211, 1);
INSERT INTO core.observation_desc_element VALUES (130, 212, 1);
INSERT INTO core.observation_desc_element VALUES (130, 213, 1);
INSERT INTO core.observation_desc_element VALUES (139, 243, 1);
INSERT INTO core.observation_desc_element VALUES (139, 244, 1);
INSERT INTO core.observation_desc_element VALUES (139, 245, 1);
INSERT INTO core.observation_desc_element VALUES (139, 246, 1);
INSERT INTO core.observation_desc_element VALUES (139, 247, 1);
INSERT INTO core.observation_desc_element VALUES (125, 204, 1);
INSERT INTO core.observation_desc_element VALUES (125, 205, 1);
INSERT INTO core.observation_desc_element VALUES (125, 206, 1);
INSERT INTO core.observation_desc_element VALUES (125, 207, 1);
INSERT INTO core.observation_desc_element VALUES (125, 208, 1);
INSERT INTO core.observation_desc_element VALUES (125, 209, 1);
INSERT INTO core.observation_desc_element VALUES (153, 291, 1);
INSERT INTO core.observation_desc_element VALUES (153, 292, 1);
INSERT INTO core.observation_desc_element VALUES (153, 293, 1);
INSERT INTO core.observation_desc_element VALUES (153, 294, 1);
INSERT INTO core.observation_desc_element VALUES (153, 295, 1);
INSERT INTO core.observation_desc_element VALUES (153, 296, 1);
INSERT INTO core.observation_desc_element VALUES (153, 297, 1);
INSERT INTO core.observation_desc_element VALUES (153, 298, 1);
INSERT INTO core.observation_desc_element VALUES (148, 275, 1);
INSERT INTO core.observation_desc_element VALUES (148, 276, 1);
INSERT INTO core.observation_desc_element VALUES (148, 277, 1);
INSERT INTO core.observation_desc_element VALUES (148, 278, 1);
INSERT INTO core.observation_desc_element VALUES (148, 279, 1);
INSERT INTO core.observation_desc_element VALUES (89, 5, 1);
INSERT INTO core.observation_desc_element VALUES (89, 6, 1);
INSERT INTO core.observation_desc_element VALUES (89, 7, 1);
INSERT INTO core.observation_desc_element VALUES (89, 8, 1);
INSERT INTO core.observation_desc_element VALUES (89, 9, 1);
INSERT INTO core.observation_desc_element VALUES (89, 10, 1);
INSERT INTO core.observation_desc_element VALUES (89, 11, 1);
INSERT INTO core.observation_desc_element VALUES (89, 12, 1);
INSERT INTO core.observation_desc_element VALUES (89, 13, 1);
INSERT INTO core.observation_desc_element VALUES (138, 291, 1);
INSERT INTO core.observation_desc_element VALUES (138, 292, 1);
INSERT INTO core.observation_desc_element VALUES (138, 293, 1);
INSERT INTO core.observation_desc_element VALUES (138, 294, 1);
INSERT INTO core.observation_desc_element VALUES (138, 295, 1);
INSERT INTO core.observation_desc_element VALUES (138, 296, 1);
INSERT INTO core.observation_desc_element VALUES (138, 297, 1);
INSERT INTO core.observation_desc_element VALUES (138, 298, 1);
INSERT INTO core.observation_desc_element VALUES (149, 280, 1);
INSERT INTO core.observation_desc_element VALUES (149, 281, 1);
INSERT INTO core.observation_desc_element VALUES (149, 282, 1);
INSERT INTO core.observation_desc_element VALUES (149, 283, 1);
INSERT INTO core.observation_desc_element VALUES (149, 284, 1);
INSERT INTO core.observation_desc_element VALUES (149, 285, 1);
INSERT INTO core.observation_desc_element VALUES (119, 185, 1);
INSERT INTO core.observation_desc_element VALUES (119, 186, 1);
INSERT INTO core.observation_desc_element VALUES (119, 187, 1);
INSERT INTO core.observation_desc_element VALUES (119, 188, 1);
INSERT INTO core.observation_desc_element VALUES (119, 189, 1);
INSERT INTO core.observation_desc_element VALUES (134, 223, 1);
INSERT INTO core.observation_desc_element VALUES (134, 224, 1);
INSERT INTO core.observation_desc_element VALUES (134, 225, 1);
INSERT INTO core.observation_desc_element VALUES (134, 226, 1);
INSERT INTO core.observation_desc_element VALUES (144, 259, 1);
INSERT INTO core.observation_desc_element VALUES (144, 260, 1);
INSERT INTO core.observation_desc_element VALUES (144, 261, 1);
INSERT INTO core.observation_desc_element VALUES (144, 262, 1);
INSERT INTO core.observation_desc_element VALUES (144, 263, 1);
INSERT INTO core.observation_desc_element VALUES (144, 264, 1);
INSERT INTO core.observation_desc_element VALUES (144, 265, 1);
INSERT INTO core.observation_desc_element VALUES (144, 266, 1);
INSERT INTO core.observation_desc_element VALUES (144, 267, 1);
INSERT INTO core.observation_desc_element VALUES (144, 268, 1);
INSERT INTO core.observation_desc_element VALUES (102, 60, 1);
INSERT INTO core.observation_desc_element VALUES (102, 61, 1);
INSERT INTO core.observation_desc_element VALUES (102, 62, 1);
INSERT INTO core.observation_desc_element VALUES (102, 63, 1);
INSERT INTO core.observation_desc_element VALUES (102, 64, 1);
INSERT INTO core.observation_desc_element VALUES (102, 65, 1);
INSERT INTO core.observation_desc_element VALUES (102, 66, 1);
INSERT INTO core.observation_desc_element VALUES (102, 67, 1);
INSERT INTO core.observation_desc_element VALUES (102, 68, 1);
INSERT INTO core.observation_desc_element VALUES (102, 69, 1);
INSERT INTO core.observation_desc_element VALUES (102, 70, 1);
INSERT INTO core.observation_desc_element VALUES (102, 71, 1);
INSERT INTO core.observation_desc_element VALUES (102, 72, 1);
INSERT INTO core.observation_desc_element VALUES (93, 30, 1);
INSERT INTO core.observation_desc_element VALUES (93, 31, 1);
INSERT INTO core.observation_desc_element VALUES (93, 32, 1);
INSERT INTO core.observation_desc_element VALUES (93, 33, 1);
INSERT INTO core.observation_desc_element VALUES (93, 34, 1);
INSERT INTO core.observation_desc_element VALUES (123, 201, 1);
INSERT INTO core.observation_desc_element VALUES (123, 202, 1);
INSERT INTO core.observation_desc_element VALUES (123, 203, 1);
INSERT INTO core.observation_desc_element VALUES (126, 14, 1);
INSERT INTO core.observation_desc_element VALUES (126, 15, 1);
INSERT INTO core.observation_desc_element VALUES (126, 16, 1);
INSERT INTO core.observation_desc_element VALUES (133, 214, 1);
INSERT INTO core.observation_desc_element VALUES (133, 215, 1);
INSERT INTO core.observation_desc_element VALUES (133, 216, 1);
INSERT INTO core.observation_desc_element VALUES (133, 217, 1);
INSERT INTO core.observation_desc_element VALUES (133, 218, 1);
INSERT INTO core.observation_desc_element VALUES (133, 219, 1);
INSERT INTO core.observation_desc_element VALUES (133, 220, 1);
INSERT INTO core.observation_desc_element VALUES (133, 221, 1);
INSERT INTO core.observation_desc_element VALUES (133, 222, 1);
INSERT INTO core.observation_desc_element VALUES (135, 227, 1);
INSERT INTO core.observation_desc_element VALUES (135, 228, 1);
INSERT INTO core.observation_desc_element VALUES (135, 229, 1);
INSERT INTO core.observation_desc_element VALUES (135, 230, 1);
INSERT INTO core.observation_desc_element VALUES (135, 231, 1);
INSERT INTO core.observation_desc_element VALUES (91, 21, 1);
INSERT INTO core.observation_desc_element VALUES (91, 22, 1);
INSERT INTO core.observation_desc_element VALUES (91, 23, 1);
INSERT INTO core.observation_desc_element VALUES (91, 24, 1);
INSERT INTO core.observation_desc_element VALUES (94, 35, 1);
INSERT INTO core.observation_desc_element VALUES (94, 36, 1);
INSERT INTO core.observation_desc_element VALUES (94, 37, 1);
INSERT INTO core.observation_desc_element VALUES (94, 38, 1);
INSERT INTO core.observation_desc_element VALUES (94, 39, 1);
INSERT INTO core.observation_desc_element VALUES (115, 142, 1);
INSERT INTO core.observation_desc_element VALUES (115, 143, 1);
INSERT INTO core.observation_desc_element VALUES (115, 144, 1);
INSERT INTO core.observation_desc_element VALUES (115, 145, 1);
INSERT INTO core.observation_desc_element VALUES (115, 146, 1);
INSERT INTO core.observation_desc_element VALUES (115, 147, 1);
INSERT INTO core.observation_desc_element VALUES (115, 148, 1);
INSERT INTO core.observation_desc_element VALUES (115, 149, 1);
INSERT INTO core.observation_desc_element VALUES (115, 150, 1);
INSERT INTO core.observation_desc_element VALUES (115, 151, 1);
INSERT INTO core.observation_desc_element VALUES (115, 152, 1);
INSERT INTO core.observation_desc_element VALUES (115, 153, 1);
INSERT INTO core.observation_desc_element VALUES (115, 154, 1);
INSERT INTO core.observation_desc_element VALUES (115, 155, 1);
INSERT INTO core.observation_desc_element VALUES (115, 156, 1);
INSERT INTO core.observation_desc_element VALUES (115, 157, 1);
INSERT INTO core.observation_desc_element VALUES (115, 158, 1);
INSERT INTO core.observation_desc_element VALUES (136, 232, 1);
INSERT INTO core.observation_desc_element VALUES (136, 233, 1);
INSERT INTO core.observation_desc_element VALUES (136, 234, 1);
INSERT INTO core.observation_desc_element VALUES (136, 235, 1);
INSERT INTO core.observation_desc_element VALUES (136, 236, 1);
INSERT INTO core.observation_desc_element VALUES (136, 237, 1);
INSERT INTO core.observation_desc_element VALUES (128, 130, 1);
INSERT INTO core.observation_desc_element VALUES (128, 131, 1);
INSERT INTO core.observation_desc_element VALUES (128, 132, 1);
INSERT INTO core.observation_desc_element VALUES (109, 124, 1);
INSERT INTO core.observation_desc_element VALUES (109, 125, 1);
INSERT INTO core.observation_desc_element VALUES (109, 126, 1);
INSERT INTO core.observation_desc_element VALUES (109, 127, 1);
INSERT INTO core.observation_desc_element VALUES (109, 128, 1);
INSERT INTO core.observation_desc_element VALUES (109, 129, 1);
INSERT INTO core.observation_desc_element VALUES (121, 194, 1);
INSERT INTO core.observation_desc_element VALUES (121, 195, 1);
INSERT INTO core.observation_desc_element VALUES (121, 196, 1);
INSERT INTO core.observation_desc_element VALUES (121, 197, 1);
INSERT INTO core.observation_desc_element VALUES (121, 198, 1);
INSERT INTO core.observation_desc_element VALUES (121, 199, 1);
INSERT INTO core.observation_desc_element VALUES (121, 200, 1);
INSERT INTO core.observation_desc_element VALUES (142, 253, 1);
INSERT INTO core.observation_desc_element VALUES (142, 254, 1);
INSERT INTO core.observation_desc_element VALUES (142, 255, 1);
INSERT INTO core.observation_desc_element VALUES (142, 256, 1);
INSERT INTO core.observation_desc_element VALUES (142, 257, 1);
INSERT INTO core.observation_desc_element VALUES (142, 258, 1);
INSERT INTO core.observation_desc_element VALUES (111, 133, 1);
INSERT INTO core.observation_desc_element VALUES (111, 134, 1);
INSERT INTO core.observation_desc_element VALUES (111, 135, 1);
INSERT INTO core.observation_desc_element VALUES (111, 136, 1);
INSERT INTO core.observation_desc_element VALUES (111, 137, 1);
INSERT INTO core.observation_desc_element VALUES (105, 83, 1);
INSERT INTO core.observation_desc_element VALUES (105, 84, 1);
INSERT INTO core.observation_desc_element VALUES (105, 85, 1);
INSERT INTO core.observation_desc_element VALUES (105, 86, 1);
INSERT INTO core.observation_desc_element VALUES (105, 87, 1);
INSERT INTO core.observation_desc_element VALUES (105, 88, 1);
INSERT INTO core.observation_desc_element VALUES (116, 159, 1);
INSERT INTO core.observation_desc_element VALUES (116, 160, 1);
INSERT INTO core.observation_desc_element VALUES (116, 161, 1);
INSERT INTO core.observation_desc_element VALUES (137, 238, 1);
INSERT INTO core.observation_desc_element VALUES (137, 239, 1);
INSERT INTO core.observation_desc_element VALUES (137, 240, 1);
INSERT INTO core.observation_desc_element VALUES (137, 241, 1);
INSERT INTO core.observation_desc_element VALUES (137, 242, 1);
INSERT INTO core.observation_desc_element VALUES (120, 190, 1);
INSERT INTO core.observation_desc_element VALUES (120, 191, 1);
INSERT INTO core.observation_desc_element VALUES (120, 192, 1);
INSERT INTO core.observation_desc_element VALUES (120, 193, 1);
INSERT INTO core.observation_desc_element VALUES (147, 269, 1);
INSERT INTO core.observation_desc_element VALUES (147, 270, 1);
INSERT INTO core.observation_desc_element VALUES (147, 271, 1);
INSERT INTO core.observation_desc_element VALUES (147, 272, 1);
INSERT INTO core.observation_desc_element VALUES (147, 273, 1);
INSERT INTO core.observation_desc_element VALUES (147, 274, 1);
INSERT INTO core.observation_desc_element VALUES (106, 89, 1);
INSERT INTO core.observation_desc_element VALUES (106, 90, 1);
INSERT INTO core.observation_desc_element VALUES (106, 91, 1);
INSERT INTO core.observation_desc_element VALUES (106, 92, 1);
INSERT INTO core.observation_desc_element VALUES (106, 93, 1);
INSERT INTO core.observation_desc_element VALUES (106, 94, 1);
INSERT INTO core.observation_desc_element VALUES (106, 95, 1);
INSERT INTO core.observation_desc_element VALUES (106, 96, 1);
INSERT INTO core.observation_desc_element VALUES (95, 40, 1);
INSERT INTO core.observation_desc_element VALUES (95, 41, 1);
INSERT INTO core.observation_desc_element VALUES (95, 42, 1);
INSERT INTO core.observation_desc_element VALUES (95, 43, 1);
INSERT INTO core.observation_desc_element VALUES (95, 44, 1);
INSERT INTO core.observation_desc_element VALUES (95, 45, 1);
INSERT INTO core.observation_desc_element VALUES (95, 46, 1);
INSERT INTO core.observation_desc_element VALUES (140, 248, 1);
INSERT INTO core.observation_desc_element VALUES (140, 249, 1);
INSERT INTO core.observation_desc_element VALUES (140, 250, 1);
INSERT INTO core.observation_desc_element VALUES (140, 251, 1);
INSERT INTO core.observation_desc_element VALUES (140, 252, 1);
INSERT INTO core.observation_desc_element VALUES (99, 47, 1);
INSERT INTO core.observation_desc_element VALUES (99, 48, 1);
INSERT INTO core.observation_desc_element VALUES (99, 49, 1);
INSERT INTO core.observation_desc_element VALUES (162, 320, 1);
INSERT INTO core.observation_desc_element VALUES (162, 321, 1);
INSERT INTO core.observation_desc_element VALUES (162, 322, 1);
INSERT INTO core.observation_desc_element VALUES (162, 323, 1);
INSERT INTO core.observation_desc_element VALUES (162, 324, 1);
INSERT INTO core.observation_desc_element VALUES (162, 325, 1);
INSERT INTO core.observation_desc_element VALUES (158, 299, 1);
INSERT INTO core.observation_desc_element VALUES (158, 300, 1);
INSERT INTO core.observation_desc_element VALUES (158, 301, 1);
INSERT INTO core.observation_desc_element VALUES (158, 302, 1);
INSERT INTO core.observation_desc_element VALUES (159, 303, 1);
INSERT INTO core.observation_desc_element VALUES (159, 304, 1);
INSERT INTO core.observation_desc_element VALUES (159, 305, 1);
INSERT INTO core.observation_desc_element VALUES (159, 306, 1);
INSERT INTO core.observation_desc_element VALUES (159, 307, 1);
INSERT INTO core.observation_desc_element VALUES (160, 308, 1);
INSERT INTO core.observation_desc_element VALUES (160, 309, 1);
INSERT INTO core.observation_desc_element VALUES (160, 310, 1);
INSERT INTO core.observation_desc_element VALUES (160, 311, 1);
INSERT INTO core.observation_desc_element VALUES (160, 312, 1);
INSERT INTO core.observation_desc_element VALUES (166, 326, 1);
INSERT INTO core.observation_desc_element VALUES (166, 327, 1);
INSERT INTO core.observation_desc_element VALUES (166, 328, 1);
INSERT INTO core.observation_desc_element VALUES (166, 329, 1);
INSERT INTO core.observation_desc_element VALUES (166, 330, 1);
INSERT INTO core.observation_desc_element VALUES (166, 331, 1);
INSERT INTO core.observation_desc_element VALUES (166, 332, 1);
INSERT INTO core.observation_desc_element VALUES (166, 333, 1);
INSERT INTO core.observation_desc_element VALUES (167, 334, 1);
INSERT INTO core.observation_desc_element VALUES (167, 335, 1);
INSERT INTO core.observation_desc_element VALUES (167, 336, 1);
INSERT INTO core.observation_desc_element VALUES (167, 337, 1);
INSERT INTO core.observation_desc_element VALUES (168, 338, 1);
INSERT INTO core.observation_desc_element VALUES (168, 339, 1);
INSERT INTO core.observation_desc_element VALUES (168, 340, 1);
INSERT INTO core.observation_desc_element VALUES (168, 341, 1);
INSERT INTO core.observation_desc_element VALUES (168, 342, 1);
INSERT INTO core.observation_desc_element VALUES (168, 343, 1);
INSERT INTO core.observation_desc_element VALUES (168, 344, 1);
INSERT INTO core.observation_desc_element VALUES (168, 345, 1);
INSERT INTO core.observation_desc_element VALUES (168, 346, 1);
INSERT INTO core.observation_desc_element VALUES (168, 347, 1);
INSERT INTO core.observation_desc_element VALUES (168, 348, 1);
INSERT INTO core.observation_desc_element VALUES (168, 349, 1);
INSERT INTO core.observation_desc_element VALUES (168, 350, 1);
INSERT INTO core.observation_desc_element VALUES (168, 351, 1);
INSERT INTO core.observation_desc_element VALUES (168, 352, 1);
INSERT INTO core.observation_desc_element VALUES (168, 353, 1);
INSERT INTO core.observation_desc_element VALUES (168, 354, 1);
INSERT INTO core.observation_desc_element VALUES (168, 355, 1);
INSERT INTO core.observation_desc_element VALUES (170, 356, 1);
INSERT INTO core.observation_desc_element VALUES (170, 357, 1);
INSERT INTO core.observation_desc_element VALUES (170, 358, 1);
INSERT INTO core.observation_desc_element VALUES (161, 313, 1);
INSERT INTO core.observation_desc_element VALUES (161, 314, 1);
INSERT INTO core.observation_desc_element VALUES (161, 315, 1);
INSERT INTO core.observation_desc_element VALUES (161, 316, 1);
INSERT INTO core.observation_desc_element VALUES (161, 317, 1);
INSERT INTO core.observation_desc_element VALUES (161, 318, 1);
INSERT INTO core.observation_desc_element VALUES (161, 319, 1);


--
-- Data for Name: observation_desc_plot; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.observation_desc_plot VALUES (84, 16, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 8, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 24, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 4, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 20, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 12, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 2, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 18, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 10, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 22, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 6, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 14, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 1, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 11, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 19, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 3, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 23, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 7, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 15, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 25, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 9, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 17, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 5, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 21, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 13, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 26, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 27, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 28, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 29, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 30, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 31, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 32, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 33, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 34, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 35, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 36, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 37, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 38, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 39, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 40, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 41, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 42, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 43, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 44, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 45, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 46, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 47, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 48, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 49, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 50, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 51, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 52, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 53, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 54, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 55, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 56, 1);
INSERT INTO core.observation_desc_plot VALUES (84, 57, 1);
INSERT INTO core.observation_desc_plot VALUES (47, 63, 1);
INSERT INTO core.observation_desc_plot VALUES (47, 64, 1);
INSERT INTO core.observation_desc_plot VALUES (47, 65, 1);
INSERT INTO core.observation_desc_plot VALUES (47, 66, 1);
INSERT INTO core.observation_desc_plot VALUES (47, 67, 1);
INSERT INTO core.observation_desc_plot VALUES (47, 68, 1);
INSERT INTO core.observation_desc_plot VALUES (47, 69, 1);
INSERT INTO core.observation_desc_plot VALUES (47, 70, 1);
INSERT INTO core.observation_desc_plot VALUES (47, 71, 1);
INSERT INTO core.observation_desc_plot VALUES (47, 72, 1);
INSERT INTO core.observation_desc_plot VALUES (47, 73, 1);
INSERT INTO core.observation_desc_plot VALUES (47, 74, 1);
INSERT INTO core.observation_desc_plot VALUES (47, 75, 1);
INSERT INTO core.observation_desc_plot VALUES (47, 76, 1);
INSERT INTO core.observation_desc_plot VALUES (47, 77, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 182, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 183, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 184, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 185, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 186, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 187, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 188, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 189, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 190, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 191, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 192, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 193, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 194, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 195, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 196, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 197, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 198, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 199, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 200, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 201, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 202, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 203, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 204, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 205, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 206, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 207, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 208, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 209, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 210, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 211, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 212, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 213, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 214, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 215, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 216, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 217, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 218, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 219, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 220, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 221, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 222, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 223, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 224, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 225, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 226, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 227, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 228, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 229, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 230, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 231, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 232, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 233, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 234, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 235, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 236, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 237, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 238, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 239, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 240, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 241, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 242, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 243, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 244, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 245, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 246, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 247, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 248, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 249, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 250, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 251, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 252, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 253, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 254, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 255, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 256, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 257, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 258, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 259, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 260, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 261, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 262, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 263, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 264, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 265, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 266, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 267, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 268, 1);
INSERT INTO core.observation_desc_plot VALUES (61, 269, 1);
INSERT INTO core.observation_desc_plot VALUES (48, 78, 1);
INSERT INTO core.observation_desc_plot VALUES (48, 79, 1);
INSERT INTO core.observation_desc_plot VALUES (48, 80, 1);
INSERT INTO core.observation_desc_plot VALUES (48, 81, 1);
INSERT INTO core.observation_desc_plot VALUES (57, 173, 1);
INSERT INTO core.observation_desc_plot VALUES (57, 174, 1);
INSERT INTO core.observation_desc_plot VALUES (57, 175, 1);
INSERT INTO core.observation_desc_plot VALUES (57, 176, 1);
INSERT INTO core.observation_desc_plot VALUES (57, 177, 1);
INSERT INTO core.observation_desc_plot VALUES (57, 178, 1);
INSERT INTO core.observation_desc_plot VALUES (57, 179, 1);
INSERT INTO core.observation_desc_plot VALUES (57, 180, 1);
INSERT INTO core.observation_desc_plot VALUES (57, 181, 1);
INSERT INTO core.observation_desc_plot VALUES (60, 63, 1);
INSERT INTO core.observation_desc_plot VALUES (60, 64, 1);
INSERT INTO core.observation_desc_plot VALUES (60, 65, 1);
INSERT INTO core.observation_desc_plot VALUES (60, 66, 1);
INSERT INTO core.observation_desc_plot VALUES (60, 67, 1);
INSERT INTO core.observation_desc_plot VALUES (60, 68, 1);
INSERT INTO core.observation_desc_plot VALUES (60, 69, 1);
INSERT INTO core.observation_desc_plot VALUES (60, 70, 1);
INSERT INTO core.observation_desc_plot VALUES (60, 71, 1);
INSERT INTO core.observation_desc_plot VALUES (60, 72, 1);
INSERT INTO core.observation_desc_plot VALUES (60, 73, 1);
INSERT INTO core.observation_desc_plot VALUES (60, 74, 1);
INSERT INTO core.observation_desc_plot VALUES (60, 75, 1);
INSERT INTO core.observation_desc_plot VALUES (60, 76, 1);
INSERT INTO core.observation_desc_plot VALUES (60, 77, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 88, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 89, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 90, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 91, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 92, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 93, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 94, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 95, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 96, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 97, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 98, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 99, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 100, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 101, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 102, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 103, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 104, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 105, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 106, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 107, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 108, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 109, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 110, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 111, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 112, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 113, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 114, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 115, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 116, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 117, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 118, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 119, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 120, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 121, 1);
INSERT INTO core.observation_desc_plot VALUES (54, 122, 1);
INSERT INTO core.observation_desc_plot VALUES (45, 58, 1);
INSERT INTO core.observation_desc_plot VALUES (45, 59, 1);
INSERT INTO core.observation_desc_plot VALUES (45, 60, 1);
INSERT INTO core.observation_desc_plot VALUES (45, 61, 1);
INSERT INTO core.observation_desc_plot VALUES (45, 62, 1);
INSERT INTO core.observation_desc_plot VALUES (49, 82, 1);
INSERT INTO core.observation_desc_plot VALUES (49, 83, 1);
INSERT INTO core.observation_desc_plot VALUES (49, 84, 1);
INSERT INTO core.observation_desc_plot VALUES (49, 85, 1);
INSERT INTO core.observation_desc_plot VALUES (49, 86, 1);
INSERT INTO core.observation_desc_plot VALUES (49, 87, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 123, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 124, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 125, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 126, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 127, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 128, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 129, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 130, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 131, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 132, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 133, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 134, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 135, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 136, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 137, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 138, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 139, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 140, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 141, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 142, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 143, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 144, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 145, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 146, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 147, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 148, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 149, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 150, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 151, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 152, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 153, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 154, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 155, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 156, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 157, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 158, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 159, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 160, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 161, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 162, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 163, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 164, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 165, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 166, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 167, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 168, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 169, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 170, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 171, 1);
INSERT INTO core.observation_desc_plot VALUES (56, 172, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 182, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 183, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 184, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 185, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 186, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 187, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 188, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 189, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 190, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 191, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 192, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 193, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 194, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 195, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 196, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 197, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 198, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 199, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 200, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 201, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 202, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 203, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 204, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 205, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 206, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 207, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 208, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 209, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 210, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 211, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 212, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 213, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 214, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 215, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 216, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 217, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 218, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 219, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 220, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 221, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 222, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 223, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 224, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 225, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 226, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 227, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 228, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 229, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 230, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 231, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 232, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 233, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 234, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 235, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 236, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 237, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 238, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 239, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 240, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 241, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 242, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 243, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 244, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 245, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 246, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 247, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 248, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 249, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 250, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 251, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 252, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 253, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 254, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 255, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 256, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 257, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 258, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 259, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 260, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 261, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 262, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 263, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 264, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 265, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 266, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 267, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 268, 1);
INSERT INTO core.observation_desc_plot VALUES (52, 269, 1);
INSERT INTO core.observation_desc_plot VALUES (72, 332, 1);
INSERT INTO core.observation_desc_plot VALUES (72, 333, 1);
INSERT INTO core.observation_desc_plot VALUES (72, 334, 1);
INSERT INTO core.observation_desc_plot VALUES (72, 335, 1);
INSERT INTO core.observation_desc_plot VALUES (72, 336, 1);
INSERT INTO core.observation_desc_plot VALUES (72, 337, 1);
INSERT INTO core.observation_desc_plot VALUES (72, 338, 1);
INSERT INTO core.observation_desc_plot VALUES (72, 339, 1);
INSERT INTO core.observation_desc_plot VALUES (72, 340, 1);
INSERT INTO core.observation_desc_plot VALUES (72, 341, 1);
INSERT INTO core.observation_desc_plot VALUES (72, 342, 1);
INSERT INTO core.observation_desc_plot VALUES (72, 343, 1);
INSERT INTO core.observation_desc_plot VALUES (72, 344, 1);
INSERT INTO core.observation_desc_plot VALUES (72, 345, 1);
INSERT INTO core.observation_desc_plot VALUES (77, 387, 1);
INSERT INTO core.observation_desc_plot VALUES (77, 388, 1);
INSERT INTO core.observation_desc_plot VALUES (77, 389, 1);
INSERT INTO core.observation_desc_plot VALUES (66, 308, 1);
INSERT INTO core.observation_desc_plot VALUES (66, 309, 1);
INSERT INTO core.observation_desc_plot VALUES (66, 310, 1);
INSERT INTO core.observation_desc_plot VALUES (66, 311, 1);
INSERT INTO core.observation_desc_plot VALUES (66, 312, 1);
INSERT INTO core.observation_desc_plot VALUES (67, 313, 1);
INSERT INTO core.observation_desc_plot VALUES (67, 314, 1);
INSERT INTO core.observation_desc_plot VALUES (67, 315, 1);
INSERT INTO core.observation_desc_plot VALUES (67, 316, 1);
INSERT INTO core.observation_desc_plot VALUES (67, 317, 1);
INSERT INTO core.observation_desc_plot VALUES (67, 318, 1);
INSERT INTO core.observation_desc_plot VALUES (67, 319, 1);
INSERT INTO core.observation_desc_plot VALUES (67, 320, 1);
INSERT INTO core.observation_desc_plot VALUES (67, 321, 1);
INSERT INTO core.observation_desc_plot VALUES (67, 322, 1);
INSERT INTO core.observation_desc_plot VALUES (76, 375, 1);
INSERT INTO core.observation_desc_plot VALUES (76, 376, 1);
INSERT INTO core.observation_desc_plot VALUES (76, 377, 1);
INSERT INTO core.observation_desc_plot VALUES (76, 378, 1);
INSERT INTO core.observation_desc_plot VALUES (76, 379, 1);
INSERT INTO core.observation_desc_plot VALUES (76, 380, 1);
INSERT INTO core.observation_desc_plot VALUES (76, 381, 1);
INSERT INTO core.observation_desc_plot VALUES (76, 382, 1);
INSERT INTO core.observation_desc_plot VALUES (76, 383, 1);
INSERT INTO core.observation_desc_plot VALUES (76, 384, 1);
INSERT INTO core.observation_desc_plot VALUES (76, 385, 1);
INSERT INTO core.observation_desc_plot VALUES (76, 386, 1);
INSERT INTO core.observation_desc_plot VALUES (64, 296, 1);
INSERT INTO core.observation_desc_plot VALUES (64, 297, 1);
INSERT INTO core.observation_desc_plot VALUES (64, 298, 1);
INSERT INTO core.observation_desc_plot VALUES (64, 299, 1);
INSERT INTO core.observation_desc_plot VALUES (64, 300, 1);
INSERT INTO core.observation_desc_plot VALUES (64, 301, 1);
INSERT INTO core.observation_desc_plot VALUES (64, 302, 1);
INSERT INTO core.observation_desc_plot VALUES (63, 286, 1);
INSERT INTO core.observation_desc_plot VALUES (63, 287, 1);
INSERT INTO core.observation_desc_plot VALUES (63, 288, 1);
INSERT INTO core.observation_desc_plot VALUES (63, 289, 1);
INSERT INTO core.observation_desc_plot VALUES (63, 290, 1);
INSERT INTO core.observation_desc_plot VALUES (63, 291, 1);
INSERT INTO core.observation_desc_plot VALUES (63, 292, 1);
INSERT INTO core.observation_desc_plot VALUES (63, 293, 1);
INSERT INTO core.observation_desc_plot VALUES (63, 294, 1);
INSERT INTO core.observation_desc_plot VALUES (63, 295, 1);
INSERT INTO core.observation_desc_plot VALUES (65, 303, 1);
INSERT INTO core.observation_desc_plot VALUES (65, 304, 1);
INSERT INTO core.observation_desc_plot VALUES (65, 305, 1);
INSERT INTO core.observation_desc_plot VALUES (65, 306, 1);
INSERT INTO core.observation_desc_plot VALUES (65, 307, 1);
INSERT INTO core.observation_desc_plot VALUES (71, 323, 1);
INSERT INTO core.observation_desc_plot VALUES (71, 324, 1);
INSERT INTO core.observation_desc_plot VALUES (71, 325, 1);
INSERT INTO core.observation_desc_plot VALUES (71, 326, 1);
INSERT INTO core.observation_desc_plot VALUES (71, 327, 1);
INSERT INTO core.observation_desc_plot VALUES (71, 328, 1);
INSERT INTO core.observation_desc_plot VALUES (71, 329, 1);
INSERT INTO core.observation_desc_plot VALUES (71, 330, 1);
INSERT INTO core.observation_desc_plot VALUES (71, 331, 1);
INSERT INTO core.observation_desc_plot VALUES (59, 270, 1);
INSERT INTO core.observation_desc_plot VALUES (59, 271, 1);
INSERT INTO core.observation_desc_plot VALUES (59, 272, 1);
INSERT INTO core.observation_desc_plot VALUES (59, 273, 1);
INSERT INTO core.observation_desc_plot VALUES (59, 274, 1);
INSERT INTO core.observation_desc_plot VALUES (59, 275, 1);
INSERT INTO core.observation_desc_plot VALUES (59, 276, 1);
INSERT INTO core.observation_desc_plot VALUES (59, 277, 1);
INSERT INTO core.observation_desc_plot VALUES (59, 278, 1);
INSERT INTO core.observation_desc_plot VALUES (59, 279, 1);
INSERT INTO core.observation_desc_plot VALUES (59, 280, 1);
INSERT INTO core.observation_desc_plot VALUES (59, 281, 1);
INSERT INTO core.observation_desc_plot VALUES (59, 282, 1);
INSERT INTO core.observation_desc_plot VALUES (59, 283, 1);
INSERT INTO core.observation_desc_plot VALUES (59, 284, 1);
INSERT INTO core.observation_desc_plot VALUES (59, 285, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 182, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 183, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 184, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 185, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 186, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 187, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 188, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 189, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 190, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 191, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 192, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 193, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 194, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 195, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 196, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 197, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 198, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 199, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 200, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 201, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 202, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 203, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 204, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 205, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 206, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 207, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 208, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 209, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 210, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 211, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 212, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 213, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 214, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 215, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 216, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 217, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 218, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 219, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 220, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 221, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 222, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 223, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 224, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 225, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 226, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 227, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 228, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 229, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 230, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 231, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 232, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 233, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 234, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 235, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 236, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 237, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 238, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 239, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 240, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 241, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 242, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 243, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 244, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 245, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 246, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 247, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 248, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 249, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 250, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 251, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 252, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 253, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 254, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 255, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 256, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 257, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 258, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 259, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 260, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 261, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 262, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 263, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 264, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 265, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 266, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 267, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 268, 1);
INSERT INTO core.observation_desc_plot VALUES (58, 269, 1);
INSERT INTO core.observation_desc_plot VALUES (75, 375, 1);
INSERT INTO core.observation_desc_plot VALUES (75, 376, 1);
INSERT INTO core.observation_desc_plot VALUES (75, 377, 1);
INSERT INTO core.observation_desc_plot VALUES (75, 378, 1);
INSERT INTO core.observation_desc_plot VALUES (75, 379, 1);
INSERT INTO core.observation_desc_plot VALUES (75, 380, 1);
INSERT INTO core.observation_desc_plot VALUES (75, 381, 1);
INSERT INTO core.observation_desc_plot VALUES (75, 382, 1);
INSERT INTO core.observation_desc_plot VALUES (75, 383, 1);
INSERT INTO core.observation_desc_plot VALUES (75, 384, 1);
INSERT INTO core.observation_desc_plot VALUES (75, 385, 1);
INSERT INTO core.observation_desc_plot VALUES (75, 386, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 346, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 347, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 348, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 349, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 350, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 351, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 352, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 353, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 354, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 355, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 356, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 357, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 358, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 359, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 360, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 361, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 362, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 363, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 364, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 365, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 366, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 367, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 368, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 369, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 370, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 371, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 372, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 373, 1);
INSERT INTO core.observation_desc_plot VALUES (74, 374, 1);
INSERT INTO core.observation_desc_plot VALUES (83, 387, 1);
INSERT INTO core.observation_desc_plot VALUES (83, 388, 1);
INSERT INTO core.observation_desc_plot VALUES (83, 389, 1);


--
-- Data for Name: observation_desc_profile; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.observation_desc_profile VALUES (5, 4, 1);
INSERT INTO core.observation_desc_profile VALUES (5, 8, 1);
INSERT INTO core.observation_desc_profile VALUES (5, 2, 1);
INSERT INTO core.observation_desc_profile VALUES (5, 6, 1);
INSERT INTO core.observation_desc_profile VALUES (5, 1, 1);
INSERT INTO core.observation_desc_profile VALUES (5, 7, 1);
INSERT INTO core.observation_desc_profile VALUES (5, 3, 1);
INSERT INTO core.observation_desc_profile VALUES (5, 9, 1);
INSERT INTO core.observation_desc_profile VALUES (5, 5, 1);


--
-- Data for Name: observation_desc_specimen; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: observation_desc_surface; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.observation_desc_surface VALUES (8, 63, 1);
INSERT INTO core.observation_desc_surface VALUES (8, 64, 1);
INSERT INTO core.observation_desc_surface VALUES (8, 65, 1);
INSERT INTO core.observation_desc_surface VALUES (8, 66, 1);
INSERT INTO core.observation_desc_surface VALUES (8, 67, 1);
INSERT INTO core.observation_desc_surface VALUES (9, 68, 1);
INSERT INTO core.observation_desc_surface VALUES (9, 69, 1);
INSERT INTO core.observation_desc_surface VALUES (9, 70, 1);
INSERT INTO core.observation_desc_surface VALUES (9, 71, 1);
INSERT INTO core.observation_desc_surface VALUES (6, 58, 1);
INSERT INTO core.observation_desc_surface VALUES (6, 59, 1);
INSERT INTO core.observation_desc_surface VALUES (6, 60, 1);
INSERT INTO core.observation_desc_surface VALUES (6, 61, 1);
INSERT INTO core.observation_desc_surface VALUES (6, 62, 1);
INSERT INTO core.observation_desc_surface VALUES (10, 72, 1);
INSERT INTO core.observation_desc_surface VALUES (10, 73, 1);
INSERT INTO core.observation_desc_surface VALUES (10, 74, 1);
INSERT INTO core.observation_desc_surface VALUES (10, 75, 1);
INSERT INTO core.observation_desc_surface VALUES (10, 76, 1);
INSERT INTO core.observation_desc_surface VALUES (18, 22, 1);
INSERT INTO core.observation_desc_surface VALUES (18, 23, 1);
INSERT INTO core.observation_desc_surface VALUES (18, 24, 1);
INSERT INTO core.observation_desc_surface VALUES (18, 25, 1);
INSERT INTO core.observation_desc_surface VALUES (18, 26, 1);
INSERT INTO core.observation_desc_surface VALUES (18, 27, 1);
INSERT INTO core.observation_desc_surface VALUES (14, 1, 1);
INSERT INTO core.observation_desc_surface VALUES (14, 2, 1);
INSERT INTO core.observation_desc_surface VALUES (14, 3, 1);
INSERT INTO core.observation_desc_surface VALUES (14, 4, 1);
INSERT INTO core.observation_desc_surface VALUES (15, 5, 1);
INSERT INTO core.observation_desc_surface VALUES (15, 6, 1);
INSERT INTO core.observation_desc_surface VALUES (15, 7, 1);
INSERT INTO core.observation_desc_surface VALUES (15, 8, 1);
INSERT INTO core.observation_desc_surface VALUES (15, 9, 1);
INSERT INTO core.observation_desc_surface VALUES (16, 10, 1);
INSERT INTO core.observation_desc_surface VALUES (16, 11, 1);
INSERT INTO core.observation_desc_surface VALUES (16, 12, 1);
INSERT INTO core.observation_desc_surface VALUES (16, 13, 1);
INSERT INTO core.observation_desc_surface VALUES (16, 14, 1);
INSERT INTO core.observation_desc_surface VALUES (20, 28, 1);
INSERT INTO core.observation_desc_surface VALUES (20, 29, 1);
INSERT INTO core.observation_desc_surface VALUES (20, 30, 1);
INSERT INTO core.observation_desc_surface VALUES (20, 31, 1);
INSERT INTO core.observation_desc_surface VALUES (20, 32, 1);
INSERT INTO core.observation_desc_surface VALUES (20, 33, 1);
INSERT INTO core.observation_desc_surface VALUES (20, 34, 1);
INSERT INTO core.observation_desc_surface VALUES (20, 35, 1);
INSERT INTO core.observation_desc_surface VALUES (21, 36, 1);
INSERT INTO core.observation_desc_surface VALUES (21, 37, 1);
INSERT INTO core.observation_desc_surface VALUES (21, 38, 1);
INSERT INTO core.observation_desc_surface VALUES (21, 39, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 40, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 41, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 42, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 43, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 44, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 45, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 46, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 47, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 48, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 49, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 50, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 51, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 52, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 53, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 54, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 55, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 56, 1);
INSERT INTO core.observation_desc_surface VALUES (22, 57, 1);
INSERT INTO core.observation_desc_surface VALUES (24, 77, 1);
INSERT INTO core.observation_desc_surface VALUES (24, 78, 1);
INSERT INTO core.observation_desc_surface VALUES (24, 79, 1);
INSERT INTO core.observation_desc_surface VALUES (17, 15, 1);
INSERT INTO core.observation_desc_surface VALUES (17, 16, 1);
INSERT INTO core.observation_desc_surface VALUES (17, 17, 1);
INSERT INTO core.observation_desc_surface VALUES (17, 18, 1);
INSERT INTO core.observation_desc_surface VALUES (17, 19, 1);
INSERT INTO core.observation_desc_surface VALUES (17, 20, 1);
INSERT INTO core.observation_desc_surface VALUES (17, 21, 1);


--
-- Data for Name: observation_numerical_specimen; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: observation_phys_chem; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.observation_phys_chem VALUES (1, 1, 73, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (2, 1, 74, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (3, 1, 75, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (4, 1, 76, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (5, 1, 77, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (6, 1, 78, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (7, 1, 79, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (8, 3, 80, 17, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (9, 3, 81, 17, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (10, 3, 82, 17, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (11, 4, 83, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (12, 4, 84, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (13, 40, 85, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (14, 40, 86, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (15, 40, 87, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (16, 40, 88, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (17, 40, 89, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (18, 40, 90, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (19, 40, 91, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (20, 40, 92, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (21, 40, 93, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (22, 40, 94, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (23, 41, 95, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (24, 41, 96, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (25, 41, 97, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (26, 41, 98, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (27, 41, 99, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (28, 41, 100, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (29, 41, 101, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (30, 41, 102, 13, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (31, 43, 103, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (32, 43, 104, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (33, 10, 105, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (34, 10, 106, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (35, 10, 107, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (36, 10, 108, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (37, 10, 109, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (38, 10, 110, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (39, 10, 111, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (40, 10, 112, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (41, 10, 113, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (42, 10, 114, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (43, 10, 115, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (44, 10, 116, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (45, 10, 117, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (46, 10, 118, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (47, 10, 119, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (48, 10, 120, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (49, 10, 121, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (50, 10, 122, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (51, 10, 123, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (52, 10, 124, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (53, 10, 125, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (54, 10, 126, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (55, 10, 127, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (56, 10, 128, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (57, 11, 129, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (58, 11, 130, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (59, 11, 131, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (60, 11, 132, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (61, 11, 133, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (62, 45, 153, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (63, 45, 154, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (64, 45, 155, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (65, 46, 156, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (66, 46, 157, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (67, 47, 158, 11, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (68, 47, 159, 11, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (69, 47, 160, 11, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (70, 47, 161, 11, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (71, 47, 162, 11, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (72, 47, 163, 11, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (73, 50, 164, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (74, 50, 165, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (75, 50, 166, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (76, 50, 167, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (77, 50, 168, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (78, 50, 169, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (79, 50, 170, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (80, 50, 171, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (81, 50, 172, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (82, 50, 173, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (83, 50, 174, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (84, 29, 164, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (85, 29, 165, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (86, 29, 166, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (87, 29, 167, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (88, 29, 168, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (89, 29, 169, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (90, 29, 170, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (91, 29, 171, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (92, 29, 172, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (93, 29, 173, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (94, 29, 174, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (95, 14, 164, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (96, 14, 165, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (97, 14, 166, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (98, 14, 167, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (99, 14, 168, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (100, 14, 169, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (101, 14, 170, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (102, 14, 171, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (103, 14, 172, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (104, 14, 173, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (105, 14, 174, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (106, 26, 164, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (107, 26, 165, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (108, 26, 166, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (109, 26, 167, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (110, 26, 168, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (111, 26, 169, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (112, 26, 170, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (113, 26, 171, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (114, 26, 172, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (115, 26, 173, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (116, 26, 174, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (117, 2, 164, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (118, 2, 165, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (119, 2, 166, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (120, 2, 167, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (121, 2, 168, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (122, 2, 169, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (123, 2, 170, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (124, 2, 171, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (125, 2, 172, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (126, 2, 173, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (127, 2, 174, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (128, 7, 164, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (129, 7, 165, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (130, 7, 166, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (131, 7, 167, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (132, 7, 168, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (133, 7, 169, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (134, 7, 170, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (135, 7, 171, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (136, 7, 172, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (137, 7, 173, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (138, 7, 174, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (139, 17, 164, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (140, 17, 165, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (141, 17, 166, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (142, 17, 167, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (143, 17, 168, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (144, 17, 169, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (145, 17, 170, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (146, 17, 171, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (147, 17, 172, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (148, 17, 173, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (149, 17, 174, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (150, 20, 175, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (151, 20, 176, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (152, 20, 177, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (153, 20, 178, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (154, 20, 179, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (155, 20, 180, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (156, 20, 181, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (157, 20, 182, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (158, 20, 183, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (159, 20, 184, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (160, 20, 185, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (161, 20, 186, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (162, 20, 187, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (163, 20, 188, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (164, 20, 189, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (165, 20, 190, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (166, 20, 191, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (167, 20, 192, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (168, 20, 193, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (169, 20, 194, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (170, 20, 195, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (171, 20, 196, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (172, 20, 197, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (173, 20, 198, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (174, 20, 199, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (175, 5, 175, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (176, 5, 176, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (177, 5, 177, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (178, 5, 178, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (179, 5, 179, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (180, 5, 180, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (181, 5, 181, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (182, 5, 182, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (183, 5, 183, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (184, 5, 184, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (185, 5, 185, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (186, 5, 186, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (187, 5, 187, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (188, 5, 188, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (189, 5, 189, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (190, 5, 190, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (191, 5, 191, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (192, 5, 192, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (193, 5, 193, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (194, 5, 194, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (195, 5, 195, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (196, 5, 196, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (197, 5, 197, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (198, 5, 198, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (199, 5, 199, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (200, 51, 175, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (201, 51, 176, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (202, 51, 177, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (203, 51, 178, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (204, 51, 179, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (205, 51, 180, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (206, 51, 181, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (207, 51, 182, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (208, 51, 183, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (209, 51, 184, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (210, 51, 185, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (211, 51, 186, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (212, 51, 187, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (213, 51, 188, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (214, 51, 189, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (215, 51, 190, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (216, 51, 191, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (217, 51, 192, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (218, 51, 193, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (219, 51, 194, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (220, 51, 195, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (221, 51, 196, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (222, 51, 197, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (223, 51, 198, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (224, 51, 199, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (225, 27, 175, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (226, 27, 176, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (227, 27, 177, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (228, 27, 178, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (229, 27, 179, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (230, 27, 180, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (231, 27, 181, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (232, 27, 182, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (233, 27, 183, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (234, 27, 184, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (235, 27, 185, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (236, 27, 186, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (237, 27, 187, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (238, 27, 188, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (239, 27, 189, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (240, 27, 190, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (241, 27, 191, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (242, 27, 192, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (243, 27, 193, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (244, 27, 194, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (245, 27, 195, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (246, 27, 196, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (247, 27, 197, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (248, 27, 198, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (249, 27, 199, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (250, 18, 175, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (251, 18, 176, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (252, 18, 177, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (253, 18, 178, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (254, 18, 179, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (255, 18, 180, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (256, 18, 181, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (257, 18, 182, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (258, 18, 183, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (259, 18, 184, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (260, 18, 185, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (261, 18, 186, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (262, 18, 187, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (263, 18, 188, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (264, 18, 189, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (265, 18, 190, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (266, 18, 191, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (267, 18, 192, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (268, 18, 193, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (269, 18, 194, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (270, 18, 195, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (271, 18, 196, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (272, 18, 197, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (273, 18, 198, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (274, 18, 199, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (275, 32, 175, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (276, 32, 176, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (277, 32, 177, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (278, 32, 178, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (279, 32, 179, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (280, 32, 180, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (281, 32, 181, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (282, 32, 182, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (283, 32, 183, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (284, 32, 184, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (285, 32, 185, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (286, 32, 186, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (287, 32, 187, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (288, 32, 188, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (289, 32, 189, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (290, 32, 190, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (291, 32, 191, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (292, 32, 192, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (293, 32, 193, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (294, 32, 194, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (295, 32, 195, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (296, 32, 196, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (297, 32, 197, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (298, 32, 198, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (299, 32, 199, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (300, 12, 175, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (301, 12, 176, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (302, 12, 177, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (303, 12, 178, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (304, 12, 179, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (305, 12, 180, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (306, 12, 181, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (307, 12, 182, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (308, 12, 183, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (309, 12, 184, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (310, 12, 185, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (311, 12, 186, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (312, 12, 187, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (313, 12, 188, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (314, 12, 189, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (315, 12, 190, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (316, 12, 191, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (317, 12, 192, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (318, 12, 193, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (319, 12, 194, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (320, 12, 195, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (321, 12, 196, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (322, 12, 197, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (323, 12, 198, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (324, 12, 199, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (325, 8, 175, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (326, 8, 176, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (327, 8, 177, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (328, 8, 178, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (329, 8, 179, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (330, 8, 180, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (331, 8, 181, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (332, 8, 182, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (333, 8, 183, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (334, 8, 184, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (335, 8, 185, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (336, 8, 186, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (337, 8, 187, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (338, 8, 188, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (339, 8, 189, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (340, 8, 190, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (341, 8, 191, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (342, 8, 192, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (343, 8, 193, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (344, 8, 194, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (345, 8, 195, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (346, 8, 196, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (347, 8, 197, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (348, 8, 198, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (349, 8, 199, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (350, 15, 175, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (351, 15, 176, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (352, 15, 177, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (353, 15, 178, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (354, 15, 179, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (355, 15, 180, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (356, 15, 181, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (357, 15, 182, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (358, 15, 183, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (359, 15, 184, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (360, 15, 185, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (361, 15, 186, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (362, 15, 187, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (363, 15, 188, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (364, 15, 189, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (365, 15, 190, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (366, 15, 191, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (367, 15, 192, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (368, 15, 193, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (369, 15, 194, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (370, 15, 195, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (371, 15, 196, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (372, 15, 197, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (373, 15, 198, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (374, 15, 199, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (375, 30, 175, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (376, 30, 176, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (377, 30, 177, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (378, 30, 178, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (379, 30, 179, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (380, 30, 180, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (381, 30, 181, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (382, 30, 182, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (383, 30, 183, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (384, 30, 184, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (385, 30, 185, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (386, 30, 186, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (387, 30, 187, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (388, 30, 188, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (389, 30, 189, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (390, 30, 190, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (391, 30, 191, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (392, 30, 192, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (393, 30, 193, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (394, 30, 194, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (395, 30, 195, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (396, 30, 196, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (397, 30, 197, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (398, 30, 198, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (399, 30, 199, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (400, 37, 175, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (401, 37, 176, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (402, 37, 177, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (403, 37, 178, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (404, 37, 179, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (405, 37, 180, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (406, 37, 181, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (407, 37, 182, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (408, 37, 183, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (409, 37, 184, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (410, 37, 185, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (411, 37, 186, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (412, 37, 187, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (413, 37, 188, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (414, 37, 189, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (415, 37, 190, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (416, 37, 191, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (417, 37, 192, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (418, 37, 193, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (419, 37, 194, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (420, 37, 195, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (421, 37, 196, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (422, 37, 197, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (423, 37, 198, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (424, 37, 199, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (425, 42, 175, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (426, 42, 176, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (427, 42, 177, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (428, 42, 178, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (429, 42, 179, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (430, 42, 180, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (431, 42, 181, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (432, 42, 182, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (433, 42, 183, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (434, 42, 184, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (435, 42, 185, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (436, 42, 186, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (437, 42, 187, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (438, 42, 188, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (439, 42, 189, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (440, 42, 190, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (441, 42, 191, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (442, 42, 192, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (443, 42, 193, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (444, 42, 194, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (445, 42, 195, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (446, 42, 196, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (447, 42, 197, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (448, 42, 198, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (449, 42, 199, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (450, 23, 175, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (451, 23, 176, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (452, 23, 177, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (453, 23, 178, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (454, 23, 179, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (455, 23, 180, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (456, 23, 181, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (457, 23, 182, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (458, 23, 183, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (459, 23, 184, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (460, 23, 185, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (461, 23, 186, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (462, 23, 187, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (463, 23, 188, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (464, 23, 189, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (465, 23, 190, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (466, 23, 191, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (467, 23, 192, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (468, 23, 193, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (469, 23, 194, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (470, 23, 195, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (471, 23, 196, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (472, 23, 197, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (473, 23, 198, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (474, 23, 199, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (475, 48, 200, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (476, 48, 201, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (477, 48, 202, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (478, 48, 203, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (479, 48, 204, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (480, 48, 205, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (481, 48, 206, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (482, 49, 207, 8, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (483, 49, 208, 8, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (484, 49, 209, 8, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (485, 49, 210, 8, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (486, 49, 211, 8, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (487, 49, 212, 8, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (488, 49, 213, 8, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (489, 22, 223, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (490, 22, 224, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (491, 22, 225, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (492, 22, 226, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (493, 22, 1, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (494, 22, 2, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (495, 22, 3, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (496, 22, 227, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (497, 22, 228, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (498, 22, 229, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (499, 22, 230, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (500, 22, 231, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (501, 22, 232, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (502, 22, 233, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (503, 52, 234, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (504, 52, 235, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (505, 52, 236, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (506, 52, 237, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (507, 38, 238, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (508, 38, 4, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (509, 38, 5, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (510, 38, 6, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (511, 38, 7, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (512, 38, 8, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (513, 38, 9, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (514, 38, 239, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (515, 38, 10, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (516, 38, 11, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (517, 38, 12, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (518, 38, 13, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (519, 38, 14, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (520, 38, 15, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (521, 38, 16, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (522, 38, 240, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (523, 38, 17, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (524, 38, 18, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (525, 38, 19, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (526, 38, 20, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (527, 38, 21, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (528, 38, 241, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (529, 38, 242, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (530, 38, 22, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (531, 38, 23, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (532, 38, 24, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (533, 38, 25, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (534, 38, 26, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (535, 38, 27, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (536, 53, 238, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (537, 53, 4, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (538, 53, 5, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (539, 53, 6, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (540, 53, 7, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (541, 53, 8, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (542, 53, 9, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (543, 53, 239, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (544, 53, 10, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (545, 53, 11, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (546, 53, 12, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (547, 53, 13, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (548, 53, 14, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (549, 53, 15, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (550, 53, 16, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (551, 53, 240, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (552, 53, 17, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (553, 53, 18, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (554, 53, 19, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (555, 53, 20, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (556, 53, 21, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (557, 53, 241, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (558, 53, 242, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (559, 53, 22, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (560, 53, 23, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (561, 53, 24, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (562, 53, 25, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (563, 53, 26, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (564, 53, 27, 14, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (565, 24, 243, 16, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (566, 24, 244, 16, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (567, 54, 245, 17, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (568, 55, 246, 15, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (569, 55, 247, 15, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (570, 35, 248, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (571, 35, 28, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (572, 35, 29, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (573, 35, 30, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (574, 35, 31, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (575, 35, 32, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (576, 35, 33, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (577, 35, 34, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (578, 35, 35, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (579, 35, 36, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (580, 35, 37, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (581, 35, 38, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (582, 35, 39, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (583, 35, 40, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (584, 35, 41, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (585, 35, 42, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (586, 35, 249, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (587, 35, 43, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (588, 35, 44, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (589, 35, 45, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (590, 35, 46, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (591, 35, 47, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (592, 35, 48, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (593, 35, 49, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (594, 35, 50, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (595, 35, 51, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (596, 35, 52, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (597, 35, 53, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (598, 35, 54, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (599, 35, 55, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (600, 35, 56, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (601, 35, 57, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (602, 35, 250, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (603, 35, 58, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (604, 35, 59, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (605, 35, 60, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (606, 35, 61, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (607, 35, 62, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (608, 35, 63, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (609, 35, 64, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (610, 35, 65, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (611, 35, 66, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (612, 35, 67, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (613, 35, 68, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (614, 35, 69, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (615, 35, 70, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (616, 35, 71, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (617, 35, 72, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (618, 34, 248, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (619, 34, 28, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (620, 34, 29, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (621, 34, 30, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (622, 34, 31, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (623, 34, 32, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (624, 34, 33, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (625, 34, 34, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (626, 34, 35, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (627, 34, 36, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (628, 34, 37, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (629, 34, 38, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (630, 34, 39, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (631, 34, 40, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (632, 34, 41, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (633, 34, 42, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (634, 34, 249, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (635, 34, 43, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (636, 34, 44, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (637, 34, 45, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (638, 34, 46, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (639, 34, 47, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (640, 34, 48, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (641, 34, 49, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (642, 34, 50, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (643, 34, 51, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (644, 34, 52, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (645, 34, 53, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (646, 34, 54, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (647, 34, 55, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (648, 34, 56, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (649, 34, 57, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (650, 34, 250, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (651, 34, 58, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (652, 34, 59, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (653, 34, 60, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (654, 34, 61, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (655, 34, 62, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (656, 34, 63, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (657, 34, 64, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (658, 34, 65, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (659, 34, 66, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (660, 34, 67, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (661, 34, 68, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (662, 34, 69, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (663, 34, 70, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (664, 34, 71, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (665, 34, 72, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (666, 36, 248, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (667, 36, 28, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (668, 36, 29, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (669, 36, 30, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (670, 36, 31, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (671, 36, 32, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (672, 36, 33, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (673, 36, 34, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (674, 36, 35, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (675, 36, 36, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (676, 36, 37, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (677, 36, 38, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (678, 36, 39, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (679, 36, 40, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (680, 36, 41, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (681, 36, 42, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (682, 36, 249, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (683, 36, 43, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (684, 36, 44, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (685, 36, 45, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (686, 36, 46, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (687, 36, 47, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (688, 36, 48, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (689, 36, 49, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (690, 36, 50, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (691, 36, 51, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (692, 36, 52, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (693, 36, 53, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (694, 36, 54, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (695, 36, 55, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (696, 36, 56, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (697, 36, 57, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (698, 36, 250, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (699, 36, 58, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (700, 36, 59, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (701, 36, 60, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (702, 36, 61, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (703, 36, 62, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (704, 36, 63, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (705, 36, 64, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (706, 36, 65, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (707, 36, 66, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (708, 36, 67, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (709, 36, 68, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (710, 36, 69, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (711, 36, 70, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (712, 36, 71, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (713, 36, 72, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (714, 56, 252, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (715, 56, 253, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (716, 56, 254, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (717, 56, 255, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (718, 56, 256, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (719, 56, 257, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (720, 56, 258, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (721, 56, 259, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (722, 56, 260, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (723, 56, 261, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (724, 56, 262, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (725, 56, 263, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (726, 56, 264, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (727, 56, 265, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (728, 56, 266, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (729, 56, 267, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (730, 56, 268, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (731, 56, 269, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (732, 56, 270, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (733, 56, 271, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (734, 56, 272, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (735, 56, 273, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (736, 56, 274, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (737, 56, 275, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (738, 56, 276, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (739, 56, 277, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (740, 56, 278, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (741, 56, 279, 12, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (742, 28, 280, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (743, 28, 281, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (744, 28, 282, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (745, 28, 283, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (746, 28, 284, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (747, 28, 285, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (748, 28, 286, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (749, 28, 287, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (750, 28, 288, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (751, 28, 289, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (752, 28, 290, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (753, 28, 291, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (754, 28, 292, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (755, 28, 293, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (756, 28, 294, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (757, 28, 295, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (758, 28, 296, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (759, 28, 297, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (760, 28, 298, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (761, 19, 280, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (762, 19, 281, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (763, 19, 282, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (764, 19, 283, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (765, 19, 284, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (766, 19, 285, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (767, 19, 286, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (768, 19, 287, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (769, 19, 288, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (770, 19, 289, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (771, 19, 290, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (772, 19, 291, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (773, 19, 292, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (774, 19, 293, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (775, 19, 294, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (776, 19, 295, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (777, 19, 296, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (778, 19, 297, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (779, 19, 298, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (780, 51, 280, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (781, 51, 281, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (782, 51, 282, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (783, 51, 283, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (784, 51, 284, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (785, 51, 285, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (786, 51, 286, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (787, 51, 287, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (788, 51, 288, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (789, 51, 289, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (790, 51, 290, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (791, 51, 291, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (792, 51, 292, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (793, 51, 293, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (794, 51, 294, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (795, 51, 295, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (796, 51, 296, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (797, 51, 297, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (798, 51, 298, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (799, 6, 280, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (800, 6, 281, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (801, 6, 282, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (802, 6, 283, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (803, 6, 284, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (804, 6, 285, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (805, 6, 286, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (806, 6, 287, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (807, 6, 288, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (808, 6, 289, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (809, 6, 290, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (810, 6, 291, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (811, 6, 292, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (812, 6, 293, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (813, 6, 294, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (814, 6, 295, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (815, 6, 296, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (816, 6, 297, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (817, 6, 298, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (818, 33, 280, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (819, 33, 281, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (820, 33, 282, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (821, 33, 283, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (822, 33, 284, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (823, 33, 285, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (824, 33, 286, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (825, 33, 287, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (826, 33, 288, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (827, 33, 289, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (828, 33, 290, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (829, 33, 291, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (830, 33, 292, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (831, 33, 293, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (832, 33, 294, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (833, 33, 295, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (834, 33, 296, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (835, 33, 297, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (836, 33, 298, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (837, 13, 280, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (838, 13, 281, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (839, 13, 282, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (840, 13, 283, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (841, 13, 284, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (842, 13, 285, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (843, 13, 286, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (844, 13, 287, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (845, 13, 288, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (846, 13, 289, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (847, 13, 290, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (848, 13, 291, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (849, 13, 292, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (850, 13, 293, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (851, 13, 294, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (852, 13, 295, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (853, 13, 296, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (854, 13, 297, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (855, 13, 298, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (856, 57, 280, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (857, 57, 281, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (858, 57, 282, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (859, 57, 283, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (860, 57, 284, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (861, 57, 285, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (862, 57, 286, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (863, 57, 287, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (864, 57, 288, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (865, 57, 289, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (866, 57, 290, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (867, 57, 291, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (868, 57, 292, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (869, 57, 293, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (870, 57, 294, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (871, 57, 295, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (872, 57, 296, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (873, 57, 297, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (874, 57, 298, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (875, 42, 280, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (876, 42, 281, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (877, 42, 282, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (878, 42, 283, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (879, 42, 284, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (880, 42, 285, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (881, 42, 286, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (882, 42, 287, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (883, 42, 288, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (884, 42, 289, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (885, 42, 290, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (886, 42, 291, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (887, 42, 292, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (888, 42, 293, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (889, 42, 294, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (890, 42, 295, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (891, 42, 296, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (892, 42, 297, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (893, 42, 298, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (894, 25, 280, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (895, 25, 281, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (896, 25, 282, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (897, 25, 283, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (898, 25, 284, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (899, 25, 285, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (900, 25, 286, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (901, 25, 287, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (902, 25, 288, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (903, 25, 289, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (904, 25, 290, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (905, 25, 291, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (906, 25, 292, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (907, 25, 293, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (908, 25, 294, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (909, 25, 295, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (910, 25, 296, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (911, 25, 297, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (912, 25, 298, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (913, 39, 280, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (914, 39, 281, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (915, 39, 282, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (916, 39, 283, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (917, 39, 284, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (918, 39, 285, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (919, 39, 286, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (920, 39, 287, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (921, 39, 288, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (922, 39, 289, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (923, 39, 290, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (924, 39, 291, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (925, 39, 292, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (926, 39, 293, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (927, 39, 294, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (928, 39, 295, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (929, 39, 296, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (930, 39, 297, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (931, 39, 298, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (932, 16, 280, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (933, 16, 281, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (934, 16, 282, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (935, 16, 283, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (936, 16, 284, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (937, 16, 285, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (938, 16, 286, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (939, 16, 287, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (940, 16, 288, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (941, 16, 289, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (942, 16, 290, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (943, 16, 291, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (944, 16, 292, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (945, 16, 293, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (946, 16, 294, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (947, 16, 295, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (948, 16, 296, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (949, 16, 297, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (950, 16, 298, 9, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (951, 9, 280, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (952, 9, 281, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (953, 9, 282, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (954, 9, 283, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (955, 9, 284, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (956, 9, 285, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (957, 9, 286, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (958, 9, 287, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (959, 9, 288, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (960, 9, 289, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (961, 9, 290, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (962, 9, 291, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (963, 9, 292, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (964, 9, 293, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (965, 9, 294, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (966, 9, 295, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (967, 9, 296, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (968, 9, 297, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (969, 9, 298, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (970, 31, 280, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (971, 31, 281, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (972, 31, 282, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (973, 31, 283, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (974, 31, 284, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (975, 31, 285, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (976, 31, 286, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (977, 31, 287, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (978, 31, 288, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (979, 31, 289, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (980, 31, 290, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (981, 31, 291, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (982, 31, 292, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (983, 31, 293, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (984, 31, 294, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (985, 31, 295, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (986, 31, 296, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (987, 31, 297, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (988, 31, 298, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (989, 21, 280, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (990, 21, 281, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (991, 21, 282, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (992, 21, 283, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (993, 21, 284, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (994, 21, 285, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (995, 21, 286, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (996, 21, 287, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (997, 21, 288, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (998, 21, 289, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (999, 21, 290, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (1000, 21, 291, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (1001, 21, 292, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (1002, 21, 293, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (1003, 21, 294, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (1004, 21, 295, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (1005, 21, 296, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (1006, 21, 297, 10, NULL, NULL);
INSERT INTO core.observation_phys_chem VALUES (1007, 21, 298, 10, NULL, NULL);


--
-- Data for Name: plot; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: plot_individual; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: procedure_desc; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.procedure_desc VALUES ('FAO GfSD 2006', 'Food and Agriculture Organisation of the United Nations, Guidelines for Soil Description, Fourth Edition, 2006.', 'https://www.fao.org/publications/card/en/c/903943c7-f56a-521a-8d32-459e7e0cdae9/', 1);


--
-- Data for Name: procedure_numerical_specimen; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: procedure_phys_chem; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotalN_dc-ht-dumas', 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_dc-ht-dumas', 1);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHH2O', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O', 239);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotalN_dc-ht-leco', 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_dc-ht-leco', 2);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotalN_dc-spec', 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_dc-spec', 3);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHCaCl2_ratio1-1', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_ratio1-1', 4);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHCaCl2_ratio1-10', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_ratio1-10', 5);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHCaCl2_ratio1-2', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_ratio1-2', 6);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHCaCl2_ratio1-2.5', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_ratio1-2.5', 7);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHCaCl2_ratio1-5', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_ratio1-5', 8);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHCaCl2_sat', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2_sat', 9);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHH2O_ratio1-1', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_ratio1-1', 10);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHH2O_ratio1-10', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_ratio1-10', 11);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHH2O_ratio1-2', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_ratio1-2', 12);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHH2O_ratio1-2.5', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_ratio1-2.5', 13);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHH2O_ratio1-5', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_ratio1-5', 14);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHH2O_sat', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_sat', 15);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHH2O_unkn-spec', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHH2O_unkn-spec', 16);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHKCl_ratio1-1', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_ratio1-1', 17);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHKCl_ratio1-10', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_ratio1-10', 18);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHKCl_ratio1-2', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_ratio1-2', 19);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHKCl_ratio1-2.5', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_ratio1-2.5', 20);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHKCl_ratio1-5', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_ratio1-5', 21);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHNaF_ratio1-1', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_ratio1-1', 22);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHNaF_ratio1-10', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_ratio1-10', 23);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHNaF_ratio1-2', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_ratio1-2', 24);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHNaF_ratio1-2.5', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_ratio1-2.5', 25);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHNaF_ratio1-5', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_ratio1-5', 26);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHNaF_sat', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF_sat', 27);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SaSiCl_2-20-2000u-adj100', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-adj100', 28);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SaSiCl_2-20-2000u-disp', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp', 29);
INSERT INTO core.procedure_phys_chem VALUES (29, 'SaSiCl_2-20-2000u-disp-beaker', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-beaker', 30);
INSERT INTO core.procedure_phys_chem VALUES (29, 'SaSiCl_2-20-2000u-disp-hydrometer', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-hydrometer', 31);
INSERT INTO core.procedure_phys_chem VALUES (29, 'SaSiCl_2-20-2000u-disp-hydrometer-bouy', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-hydrometer-bouy', 32);
INSERT INTO core.procedure_phys_chem VALUES (29, 'SaSiCl_2-20-2000u-disp-laser', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-laser', 33);
INSERT INTO core.procedure_phys_chem VALUES (29, 'SaSiCl_2-20-2000u-disp-pipette', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-pipette', 34);
INSERT INTO core.procedure_phys_chem VALUES (29, 'SaSiCl_2-20-2000u-disp-spec', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-disp-spec', 35);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SaSiCl_2-20-2000u-fld', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-fld', 36);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SaSiCl_2-20-2000u-nodisp', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp', 37);
INSERT INTO core.procedure_phys_chem VALUES (37, 'SaSiCl_2-20-2000u-nodisp-hydrometer', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-hydrometer', 38);
INSERT INTO core.procedure_phys_chem VALUES (37, 'SaSiCl_2-20-2000u-nodisp-hydrometer-bouy', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-hydrometer-bouy', 39);
INSERT INTO core.procedure_phys_chem VALUES (37, 'SaSiCl_2-20-2000u-nodisp-laser', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-laser', 40);
INSERT INTO core.procedure_phys_chem VALUES (37, 'SaSiCl_2-20-2000u-nodisp-pipette', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-pipette', 41);
INSERT INTO core.procedure_phys_chem VALUES (37, 'SaSiCl_2-20-2000u-nodisp-spec', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u-nodisp-spec', 42);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SaSiCl_2-50-2000u-adj100', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-adj100', 43);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SaSiCl_2-50-2000u-disp', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp', 44);
INSERT INTO core.procedure_phys_chem VALUES (44, 'SaSiCl_2-50-2000u-disp-beaker', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-beaker', 45);
INSERT INTO core.procedure_phys_chem VALUES (44, 'SaSiCl_2-50-2000u-disp-hydrometer', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-hydrometer', 46);
INSERT INTO core.procedure_phys_chem VALUES (44, 'SaSiCl_2-50-2000u-disp-hydrometer-bouy', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-hydrometer-bouy', 47);
INSERT INTO core.procedure_phys_chem VALUES (44, 'SaSiCl_2-50-2000u-disp-laser', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-laser', 48);
INSERT INTO core.procedure_phys_chem VALUES (44, 'SaSiCl_2-50-2000u-disp-pipette', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-pipette', 49);
INSERT INTO core.procedure_phys_chem VALUES (44, 'SaSiCl_2-50-2000u-disp-spec', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-disp-spec', 50);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SaSiCl_2-50-2000u-fld', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-fld', 51);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SaSiCl_2-50-2000u-nodisp', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp', 52);
INSERT INTO core.procedure_phys_chem VALUES (52, 'SaSiCl_2-50-2000u-nodisp-hydrometer', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-hydrometer', 53);
INSERT INTO core.procedure_phys_chem VALUES (52, 'SaSiCl_2-50-2000u-nodisp-hydrometer-bouy', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-hydrometer-bouy', 54);
INSERT INTO core.procedure_phys_chem VALUES (52, 'SaSiCl_2-50-2000u-nodisp-laser', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-laser', 55);
INSERT INTO core.procedure_phys_chem VALUES (52, 'SaSiCl_2-50-2000u-nodisp-pipette', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-pipette', 56);
INSERT INTO core.procedure_phys_chem VALUES (52, 'SaSiCl_2-50-2000u-nodisp-spec', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u-nodisp-spec', 57);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SaSiCl_2-64-2000u-adj100', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-adj100', 58);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SaSiCl_2-64-2000u-disp', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp', 59);
INSERT INTO core.procedure_phys_chem VALUES (59, 'SaSiCl_2-64-2000u-disp-beaker', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-beaker', 60);
INSERT INTO core.procedure_phys_chem VALUES (59, 'SaSiCl_2-64-2000u-disp-hydrometer', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-hydrometer', 61);
INSERT INTO core.procedure_phys_chem VALUES (59, 'SaSiCl_2-64-2000u-disp-hydrometer-bouy', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-hydrometer-bouy', 62);
INSERT INTO core.procedure_phys_chem VALUES (59, 'SaSiCl_2-64-2000u-disp-laser', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-laser', 63);
INSERT INTO core.procedure_phys_chem VALUES (59, 'SaSiCl_2-64-2000u-disp-pipette', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-pipette', 64);
INSERT INTO core.procedure_phys_chem VALUES (59, 'SaSiCl_2-64-2000u-disp-spec', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-disp-spec', 65);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SaSiCl_2-64-2000u-fld', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-fld', 66);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SaSiCl_2-64-2000u-nodisp', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp', 67);
INSERT INTO core.procedure_phys_chem VALUES (67, 'SaSiCl_2-64-2000u-nodisp-hydrometer', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-hydrometer', 68);
INSERT INTO core.procedure_phys_chem VALUES (67, 'SaSiCl_2-64-2000u-nodisp-hydrometer-bouy', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-hydrometer-bouy', 69);
INSERT INTO core.procedure_phys_chem VALUES (67, 'SaSiCl_2-64-2000u-nodisp-laser', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-laser', 70);
INSERT INTO core.procedure_phys_chem VALUES (67, 'SaSiCl_2-64-2000u-nodisp-pipette', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-pipette', 71);
INSERT INTO core.procedure_phys_chem VALUES (67, 'SaSiCl_2-64-2000u-nodisp-spec', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u-nodisp-spec', 72);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchAcid_ph0-kcl1m', 'http://w3id.org/glosis/model/v1.0.0/procedure#acidityExchangeableProcedure-ExchAcid_ph0-kcl1m', 73);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchAcid_ph0-nh4cl', 'http://w3id.org/glosis/model/v1.0.0/procedure#acidityExchangeableProcedure-ExchAcid_ph0-nh4cl', 74);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchAcid_ph0-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#acidityExchangeableProcedure-ExchAcid_ph0-unkn', 75);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchAcid_ph7-caoac', 'http://w3id.org/glosis/model/v1.0.0/procedure#acidityExchangeableProcedure-ExchAcid_ph7-caoac', 76);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchAcid_ph7-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#acidityExchangeableProcedure-ExchAcid_ph7-unkn', 77);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchAcid_ph8-bacl2tea', 'http://w3id.org/glosis/model/v1.0.0/procedure#acidityExchangeableProcedure-ExchAcid_ph8-bacl2tea', 78);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchAcid_ph8-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#acidityExchangeableProcedure-ExchAcid_ph8-unkn', 79);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'PAWHC_calcul-fc100wp', 'http://w3id.org/glosis/model/v1.0.0/procedure#availableWaterHoldingCapacityProcedure-PAWHC_calcul-fc100wp', 80);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'PAWHC_calcul-fc200wp', 'http://w3id.org/glosis/model/v1.0.0/procedure#availableWaterHoldingCapacityProcedure-PAWHC_calcul-fc200wp', 81);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'PAWHC_calcul-fc300wp', 'http://w3id.org/glosis/model/v1.0.0/procedure#availableWaterHoldingCapacityProcedure-PAWHC_calcul-fc300wp', 82);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BSat_calcul-cec', 'http://w3id.org/glosis/model/v1.0.0/procedure#baseSaturationProcedure-BSat_calcul-cec', 83);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BSat_calcul-ecec', 'http://w3id.org/glosis/model/v1.0.0/procedure#baseSaturationProcedure-BSat_calcul-ecec', 84);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensF_fe-cl-fc', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-cl-fc', 85);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensF_fe-cl-od', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-cl-od', 86);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensF_fe-cl-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-cl-unkn', 87);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensF_fe-co-fc', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-co-fc', 88);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensF_fe-co-od', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-co-od', 89);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensF_fe-co-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-co-unkn', 90);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensF_fe-rpl-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-rpl-unkn', 91);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensF_fe-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-unkn', 92);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensF_fe-unkn-fc', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-unkn-fc', 93);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensF_fe-unkn-od', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityFineEarthProcedure-BlkDensF_fe-unkn-od', 94);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensW_we-cl-fc', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityWholeSoilProcedure-BlkDensW_we-cl-fc', 95);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensW_we-cl-od', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityWholeSoilProcedure-BlkDensW_we-cl-od', 96);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensW_we-cl-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityWholeSoilProcedure-BlkDensW_we-cl-unkn', 97);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensW_we-co-fc', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityWholeSoilProcedure-BlkDensW_we-co-fc', 98);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensW_we-co-od', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityWholeSoilProcedure-BlkDensW_we-co-od', 99);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensW_we-co-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityWholeSoilProcedure-BlkDensW_we-co-unkn', 100);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensW_we-rpl-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityWholeSoilProcedure-BlkDensW_we-rpl-unkn', 101);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'BlkDensW_we-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#bulkDensityWholeSoilProcedure-BlkDensW_we-unkn', 102);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'InOrgC_calcul-caco3', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonInorganicProcedure-InOrgC_calcul-caco3', 103);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'InOrgC_calcul-tc-oc', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonInorganicProcedure-InOrgC_calcul-tc-oc', 104);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_acid-dc', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_acid-dc', 105);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_acid-dc-ht', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_acid-dc-ht', 106);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_acid-dc-ht-analyser', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_acid-dc-ht-analyser', 107);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_acid-dc-lt', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_acid-dc-lt', 108);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_acid-dc-lt-loi', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_acid-dc-lt-loi', 109);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_acid-dc-mt', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_acid-dc-mt', 110);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_acid-dc-spec', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_acid-dc-spec', 111);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_calcul-tc-ic', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_calcul-tc-ic', 112);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_dc', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_dc', 113);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_dc-ht', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_dc-ht', 114);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_dc-ht-analyser', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_dc-ht-analyser', 115);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_dc-lt', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_dc-lt', 116);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_dc-lt-loi', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_dc-lt-loi', 117);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_dc-mt', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_dc-mt', 118);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_dc-spec', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_dc-spec', 119);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_wc', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc', 120);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_wc-cro3-jackson', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc-cro3-jackson', 121);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_wc-cro3-kalembra', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc-cro3-kalembra', 122);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_wc-cro3-knopp', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc-cro3-knopp', 123);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_wc-cro3-kurmies', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc-cro3-kurmies', 124);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_wc-cro3-nelson', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc-cro3-nelson', 125);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_wc-cro3-nrcs6a1c', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc-cro3-nrcs6a1c', 126);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_wc-cro3-tiurin', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc-cro3-tiurin', 127);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgC_wc-cro3-walkleyblack', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonOrganicProcedure-OrgC_wc-cro3-walkleyblack', 128);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotC_calcul-ic-oc', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonTotalProcedure-TotC_calcul-ic-oc', 129);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotC_dc-ht', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonTotalProcedure-TotC_dc-ht', 130);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotC_dc-ht-analyser', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonTotalProcedure-TotC_dc-ht-analyser', 131);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotC_dc-ht-spec', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonTotalProcedure-TotC_dc-ht-spec', 132);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotC_dc-mt', 'http://w3id.org/glosis/model/v1.0.0/procedure#carbonTotalProcedure-TotC_dc-mt', 133);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph-unkn-cacl2', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph-unkn-cacl2', 134);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph-unkn-lioac', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph-unkn-lioac', 135);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph-unkn-m3', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph-unkn-m3', 136);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph0-ag-thioura', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph0-ag-thioura', 137);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph0-bacl2', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph0-bacl2', 138);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph0-cohex', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph0-cohex', 139);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph0-kcl', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph0-kcl', 140);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph0-nh4cl', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph0-nh4cl', 141);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph0-nh4oac', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph0-nh4oac', 142);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph0-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph0-unkn', 143);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph7-edta', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph7-edta', 144);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph7-nh4oac', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph7-nh4oac', 145);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph7-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph7-unkn', 146);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph8-bacl2tea', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph8-bacl2tea', 147);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph8-baoac', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph8-baoac', 148);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph8-licl2tea', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph8-licl2tea', 149);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph8-naoac', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph8-naoac', 150);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph8-nh4oac', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph8-nh4oac', 151);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CEC_ph8-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#cationExchangeCapacitySoilProcedure-CEC_ph8-unkn', 152);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CrsFrg_fld', 'http://w3id.org/glosis/model/v1.0.0/procedure#coarseFragmentsProcedure-CrsFrg_fld', 153);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CrsFrg_fldcls', 'http://w3id.org/glosis/model/v1.0.0/procedure#coarseFragmentsProcedure-CrsFrg_fldcls', 154);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CrsFrg_lab', 'http://w3id.org/glosis/model/v1.0.0/procedure#coarseFragmentsProcedure-CrsFrg_lab', 155);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'EffCEC_calcul-b', 'http://w3id.org/glosis/model/v1.0.0/procedure#effectiveCecProcedure-EffCEC_calcul-b', 156);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'EffCEC_calcul-ba', 'http://w3id.org/glosis/model/v1.0.0/procedure#effectiveCecProcedure-EffCEC_calcul-ba', 157);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'EC_ratio1-1', 'http://w3id.org/glosis/model/v1.0.0/procedure#electricalConductivityProcedure-EC_ratio1-1', 158);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'EC_ratio1-10', 'http://w3id.org/glosis/model/v1.0.0/procedure#electricalConductivityProcedure-EC_ratio1-10', 159);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'EC_ratio1-2', 'http://w3id.org/glosis/model/v1.0.0/procedure#electricalConductivityProcedure-EC_ratio1-2', 160);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'EC_ratio1-2.5', 'http://w3id.org/glosis/model/v1.0.0/procedure#electricalConductivityProcedure-EC_ratio1-2.5', 161);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'EC_ratio1-5', 'http://w3id.org/glosis/model/v1.0.0/procedure#electricalConductivityProcedure-EC_ratio1-5', 162);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ECe_sat', 'http://w3id.org/glosis/model/v1.0.0/procedure#electricalConductivityProcedure-ECe_sat', 163);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchBases_ph-unkn-edta', 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-edta', 164);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchBases_ph-unkn-m3', 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-m3', 165);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchBases_ph-unkn-m3-spec', 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph-unkn-m3-spec', 166);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchBases_ph0-cohex', 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph0-cohex', 167);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchBases_ph0-nh4cl', 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph0-nh4cl', 168);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchBases_ph7-nh4oac', 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac', 169);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchBases_ph7-nh4oac-aas', 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac-aas', 170);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchBases_ph7-nh4oac-fp', 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-nh4oac-fp', 171);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchBases_ph7-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph7-unkn', 172);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchBases_ph8-bacl2tea', 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph8-bacl2tea', 173);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'ExchBases_ph8-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#exchangeableBasesProcedure-ExchBases_ph8-unkn', 174);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_ap14', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap14', 175);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_ap15', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap15', 176);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_ap20', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap20', 177);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_ap21', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_ap21', 178);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_c6h8o7-reeuwijk', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_c6h8o7-reeuwijk', 179);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_cacl2', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_cacl2', 180);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_capo4', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_capo4', 181);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_dtpa', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_dtpa', 182);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_edta', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_edta', 183);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_h2so4-truog', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_h2so4-truog', 184);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_hcl-h2so4-nelson', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-h2so4-nelson', 185);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_hcl-nh4f-bray1', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray1', 186);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_hcl-nh4f-bray2', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-bray2', 187);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_hcl-nh4f-kurtz-bray', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hcl-nh4f-kurtz-bray', 188);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_hno3', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hno3', 189);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_hotwater', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_hotwater', 190);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_m1', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m1', 191);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_m2', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m2', 192);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_m3', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3', 193);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_m3-spec', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_m3-spec', 194);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_nahco3-olsen', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen', 195);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_nahco3-olsen-dabin', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nahco3-olsen-dabin', 196);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_naoac-morgan', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_naoac-morgan', 197);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_nh4-co3-2-ambic1', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4-co3-2-ambic1', 198);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Extr_nh4ch3ch-oh-cooh-leuven', 'http://w3id.org/glosis/model/v1.0.0/procedure#extractableElementsProcedure-Extr_nh4ch3ch-oh-cooh-leuven', 199);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaSO4_gy01', 'http://w3id.org/glosis/model/v1.0.0/procedure#gypsumProcedure-CaSO4_gy01', 200);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaSO4_gy02', 'http://w3id.org/glosis/model/v1.0.0/procedure#gypsumProcedure-CaSO4_gy02', 201);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaSO4_gy03', 'http://w3id.org/glosis/model/v1.0.0/procedure#gypsumProcedure-CaSO4_gy03', 202);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaSO4_gy04', 'http://w3id.org/glosis/model/v1.0.0/procedure#gypsumProcedure-CaSO4_gy04', 203);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaSO4_gy05', 'http://w3id.org/glosis/model/v1.0.0/procedure#gypsumProcedure-CaSO4_gy05', 204);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaSO4_gy06', 'http://w3id.org/glosis/model/v1.0.0/procedure#gypsumProcedure-CaSO4_gy06', 205);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaSO4_gy07', 'http://w3id.org/glosis/model/v1.0.0/procedure#gypsumProcedure-CaSO4_gy07', 206);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'KSat_calcul-ptf', 'http://w3id.org/glosis/model/v1.0.0/procedure#hydraulicConductivityProcedure-KSat_calcul-ptf', 207);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'KSat_calcul-ptf-genuchten', 'http://w3id.org/glosis/model/v1.0.0/procedure#hydraulicConductivityProcedure-KSat_calcul-ptf-genuchten', 208);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'KSat_calcul-ptf-saxton', 'http://w3id.org/glosis/model/v1.0.0/procedure#hydraulicConductivityProcedure-KSat_calcul-ptf-saxton', 209);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Ksat_bhole', 'http://w3id.org/glosis/model/v1.0.0/procedure#hydraulicConductivityProcedure-Ksat_bhole', 210);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Ksat_column', 'http://w3id.org/glosis/model/v1.0.0/procedure#hydraulicConductivityProcedure-Ksat_column', 211);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Ksat_dblring', 'http://w3id.org/glosis/model/v1.0.0/procedure#hydraulicConductivityProcedure-Ksat_dblring', 212);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Ksat_invbhole', 'http://w3id.org/glosis/model/v1.0.0/procedure#hydraulicConductivityProcedure-Ksat_invbhole', 213);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'VMC_calcul-ptf', 'http://w3id.org/glosis/model/v1.0.0/procedure#moistureContentProcedure-VMC_calcul-ptf', 214);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'VMC_calcul-ptf-brookscorey', 'http://w3id.org/glosis/model/v1.0.0/procedure#moistureContentProcedure-VMC_calcul-ptf-brookscorey', 215);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'VMC_d', 'http://w3id.org/glosis/model/v1.0.0/procedure#moistureContentProcedure-VMC_d', 216);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'VMC_d-cl', 'http://w3id.org/glosis/model/v1.0.0/procedure#moistureContentProcedure-VMC_d-cl', 217);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'VMC_d-cl-ww', 'http://w3id.org/glosis/model/v1.0.0/procedure#moistureContentProcedure-VMC_d-cl-ww', 218);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'VMC_d-ww', 'http://w3id.org/glosis/model/v1.0.0/procedure#moistureContentProcedure-VMC_d-ww', 219);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'VMC_ud', 'http://w3id.org/glosis/model/v1.0.0/procedure#moistureContentProcedure-VMC_ud', 220);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'VMC_ud-cl', 'http://w3id.org/glosis/model/v1.0.0/procedure#moistureContentProcedure-VMC_ud-cl', 221);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'VMC_ud-co', 'http://w3id.org/glosis/model/v1.0.0/procedure#moistureContentProcedure-VMC_ud-co', 222);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotalN_bremner', 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_bremner', 223);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotalN_calcul', 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_calcul', 224);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotalN_calcul-oc10', 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_calcul-oc10', 225);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotalN_dc', 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_dc', 226);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotalN_h2so4', 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_h2so4', 227);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotalN_kjeldahl', 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_kjeldahl', 228);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotalN_kjeldahl-nh4', 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_kjeldahl-nh4', 229);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotalN_nelson', 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_nelson', 230);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotalN_tn04', 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_tn04', 231);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotalN_tn06', 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_tn06', 232);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotalN_tn08', 'http://w3id.org/glosis/model/v1.0.0/procedure#nitrogenTotalProcedure-TotalN_tn08', 233);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'FulAcidC_unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#organicMatterProcedure-FulAcidC_unkn', 234);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'HumAcidC_unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#organicMatterProcedure-HumAcidC_unkn', 235);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'OrgM_calcul-oc1.73', 'http://w3id.org/glosis/model/v1.0.0/procedure#organicMatterProcedure-OrgM_calcul-oc1.73', 236);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'TotHumC_unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#organicMatterProcedure-TotHumC_unkn', 237);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHCaCl2', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHCaCl2', 238);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHKCl', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl', 240);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHKCl_sat', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHKCl_sat', 241);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'pHNaF', 'http://w3id.org/glosis/model/v1.0.0/procedure#pHProcedure-pHNaF', 242);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'RetentP_blakemore', 'http://w3id.org/glosis/model/v1.0.0/procedure#phosphorusRetentionProcedure-RetentP_blakemore', 243);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'RetentP_unkn-spec', 'http://w3id.org/glosis/model/v1.0.0/procedure#phosphorusRetentionProcedure-RetentP_unkn-spec', 244);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Poros_calcul-pf0', 'http://w3id.org/glosis/model/v1.0.0/procedure#porosityProcedure-Poros_calcul-pf0', 245);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SlbAn_calcul-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#solubleSaltsProcedure-SlbAn_calcul-unkn', 246);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SlbCat_calcul-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#solubleSaltsProcedure-SlbCat_calcul-unkn', 247);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SaSiCl_2-20-2000u', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-20-2000u', 248);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SaSiCl_2-50-2000u', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-50-2000u', 249);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SaSiCl_2-64-2000u', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureProcedure-SaSiCl_2-64-2000u', 250);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'SumTxtr_calcul', 'http://w3id.org/glosis/model/v1.0.0/procedure#textureSumProcedure-SumTxtr_calcul', 251);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_acid-ch3cooh-dc', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-ch3cooh-dc', 252);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_acid-ch3cooh-nodc', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-ch3cooh-nodc', 253);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_acid-ch3cooh-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-ch3cooh-unkn', 254);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_acid-dc', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-dc', 255);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_acid-h2so4-dc', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-h2so4-dc', 256);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_acid-h2so4-nodc', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-h2so4-nodc', 257);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_acid-h2so4-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-h2so4-unkn', 258);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_acid-h3po4-dc', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-h3po4-dc', 259);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_acid-h3po4-nodc', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-h3po4-nodc', 260);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_acid-h3po4-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-h3po4-unkn', 261);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_acid-hcl-dc', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-hcl-dc', 262);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_acid-hcl-nodc', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-hcl-nodc', 263);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_acid-hcl-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-hcl-unkn', 264);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_acid-nodc', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-nodc', 265);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_acid-unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_acid-unkn', 266);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_ca01', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca01', 267);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_ca02', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca02', 268);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_ca03', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca03', 269);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_ca04', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca04', 270);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_ca05', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca05', 271);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_ca06', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca06', 272);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_ca07', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca07', 273);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_ca08', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca08', 274);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_ca09', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca09', 275);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_ca10', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca10', 276);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_ca11', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca11', 277);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_ca12', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_ca12', 278);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'CaCO3_calcul-tc-oc', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalCarbonateEquivalentProcedure-CaCO3_calcul-tc-oc', 279);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_h2so4', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_h2so4', 280);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_hcl', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl', 281);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_hcl-aquaregia', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hcl-aquaregia', 282);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_hclo4', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hclo4', 283);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_hno3-aquafortis', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_hno3-aquafortis', 284);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_nh4-6mo7o24', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_nh4-6mo7o24', 285);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_tp03', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp03', 286);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_tp04', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp04', 287);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_tp05', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp05', 288);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_tp06', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp06', 289);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_tp07', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp07', 290);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_tp08', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp08', 291);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_tp09', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp09', 292);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_tp10', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_tp10', 293);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_unkn', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_unkn', 294);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_xrd', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrd', 295);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_xrf', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf', 296);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_xrf-p', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xrf-p', 297);
INSERT INTO core.procedure_phys_chem VALUES (NULL, 'Total_xtf-t', 'http://w3id.org/glosis/model/v1.0.0/procedure#totalElementsProcedure-Total_xtf-t', 298);


--
-- Data for Name: profile; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: project; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: project_organisation; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: project_related; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: property_desc_element; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.property_desc_element VALUES ('saltProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#saltProperty', 143);
INSERT INTO core.property_desc_element VALUES ('biologicalAbundanceProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#biologicalAbundanceProperty', 88);
INSERT INTO core.property_desc_element VALUES ('biologicalFeaturesProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#biologicalFeaturesProperty', 89);
INSERT INTO core.property_desc_element VALUES ('boundaryDistinctnessProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#boundaryDistinctnessProperty', 90);
INSERT INTO core.property_desc_element VALUES ('boundaryTopographyProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#boundaryTopographyProperty', 91);
INSERT INTO core.property_desc_element VALUES ('bulkDensityMineralProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityMineralProperty', 92);
INSERT INTO core.property_desc_element VALUES ('bulkDensityPeatProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityPeatProperty', 93);
INSERT INTO core.property_desc_element VALUES ('carbonatesContentProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonatesContentProperty', 94);
INSERT INTO core.property_desc_element VALUES ('carbonatesFormsProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonatesFormsProperty', 95);
INSERT INTO core.property_desc_element VALUES ('cationExchangeCapacityEffectiveProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cationExchangeCapacityEffectiveProperty', 96);
INSERT INTO core.property_desc_element VALUES ('cationExchangeCapacityProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cationExchangeCapacityProperty', 97);
INSERT INTO core.property_desc_element VALUES ('cationsSumProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cationsSumProperty', 98);
INSERT INTO core.property_desc_element VALUES ('cementationContinuityProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationContinuityProperty', 99);
INSERT INTO core.property_desc_element VALUES ('cementationDegreeProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationDegreeProperty', 100);
INSERT INTO core.property_desc_element VALUES ('cementationFabricProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationFabricProperty', 101);
INSERT INTO core.property_desc_element VALUES ('cementationNatureProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cementationNatureProperty', 102);
INSERT INTO core.property_desc_element VALUES ('coatingAbundanceProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingAbundanceProperty', 103);
INSERT INTO core.property_desc_element VALUES ('coatingContrastProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingContrastProperty', 104);
INSERT INTO core.property_desc_element VALUES ('coatingFormProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingFormProperty', 105);
INSERT INTO core.property_desc_element VALUES ('coatingLocationProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingLocationProperty', 106);
INSERT INTO core.property_desc_element VALUES ('coatingNatureProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coatingNatureProperty', 107);
INSERT INTO core.property_desc_element VALUES ('consistenceDryProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceDryProperty', 108);
INSERT INTO core.property_desc_element VALUES ('consistenceMoistProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#consistenceMoistProperty', 109);
INSERT INTO core.property_desc_element VALUES ('dryConsistencyProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#dryConsistencyProperty', 110);
INSERT INTO core.property_desc_element VALUES ('gypsumContentProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumContentProperty', 111);
INSERT INTO core.property_desc_element VALUES ('gypsumFormsProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumFormsProperty', 112);
INSERT INTO core.property_desc_element VALUES ('gypsumWeightProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumWeightProperty', 113);
INSERT INTO core.property_desc_element VALUES ('mineralConcAbundanceProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcAbundanceProperty', 114);
INSERT INTO core.property_desc_element VALUES ('mineralConcColourProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcColourProperty', 115);
INSERT INTO core.property_desc_element VALUES ('mineralConcHardnessProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcHardnessProperty', 116);
INSERT INTO core.property_desc_element VALUES ('mineralConcKindProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcKindProperty', 117);
INSERT INTO core.property_desc_element VALUES ('mineralConcNatureProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcNatureProperty', 118);
INSERT INTO core.property_desc_element VALUES ('mineralConcShapeProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcShapeProperty', 119);
INSERT INTO core.property_desc_element VALUES ('mineralConcSizeeProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcSizeProperty', 120);
INSERT INTO core.property_desc_element VALUES ('mineralConcVolumeProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralConcVolumeProperty', 121);
INSERT INTO core.property_desc_element VALUES ('mineralContentProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralContentProperty', 122);
INSERT INTO core.property_desc_element VALUES ('mineralFragmentsProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mineralFragmentsProperty', 123);
INSERT INTO core.property_desc_element VALUES ('moistConsistencyProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#moistConsistencyProperty', 124);
INSERT INTO core.property_desc_element VALUES ('mottlesAbundanceProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesAbundanceProperty', 125);
INSERT INTO core.property_desc_element VALUES ('mottlesBoundaryClassificationProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesBoundaryClassificationProperty', 126);
INSERT INTO core.property_desc_element VALUES ('mottlesColourProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesColourProperty', 127);
INSERT INTO core.property_desc_element VALUES ('mottlesContrastProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesContrastProperty', 128);
INSERT INTO core.property_desc_element VALUES ('mottlesPresenceProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesPresenceProperty', 129);
INSERT INTO core.property_desc_element VALUES ('mottlesSizeProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#mottlesSizeProperty', 130);
INSERT INTO core.property_desc_element VALUES ('oxalateExtractableOpticalDensityProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#oxalateExtractableOpticalDensityProperty', 131);
INSERT INTO core.property_desc_element VALUES ('ParticleSizeFractionsSumProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#particleSizeFractionsSumProperty', 132);
INSERT INTO core.property_desc_element VALUES ('peatDecompostionProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatDecompostionProperty', 133);
INSERT INTO core.property_desc_element VALUES ('peatDrainageProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatDrainageProperty', 134);
INSERT INTO core.property_desc_element VALUES ('peatVolumeProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#peatVolumeProperty', 135);
INSERT INTO core.property_desc_element VALUES ('plasticityProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#plasticityProperty', 136);
INSERT INTO core.property_desc_element VALUES ('poresAbundanceProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#poresAbundanceProperty', 137);
INSERT INTO core.property_desc_element VALUES ('poresSizeProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#poresSizeProperty', 138);
INSERT INTO core.property_desc_element VALUES ('porosityClassProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#porosityClassProperty', 139);
INSERT INTO core.property_desc_element VALUES ('rootsAbundanceProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#rootsAbundanceProperty', 140);
INSERT INTO core.property_desc_element VALUES ('RootsPresenceProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#rootsPresenceProperty', 141);
INSERT INTO core.property_desc_element VALUES ('saltContentProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#saltContentProperty', 142);
INSERT INTO core.property_desc_element VALUES ('sandyTextureProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#sandyTextureProperty', 144);
INSERT INTO core.property_desc_element VALUES ('solubleAnionsTotalProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#solubleAnionsTotalProperty', 145);
INSERT INTO core.property_desc_element VALUES ('solubleCationsTotalProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#solubleCationsTotalProperty', 146);
INSERT INTO core.property_desc_element VALUES ('stickinessProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#stickinessProperty', 147);
INSERT INTO core.property_desc_element VALUES ('structureGradeProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#structureGradeProperty', 148);
INSERT INTO core.property_desc_element VALUES ('structureSizeProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#structureSizeProperty', 149);
INSERT INTO core.property_desc_element VALUES ('textureFieldClassProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#textureFieldClassProperty', 150);
INSERT INTO core.property_desc_element VALUES ('textureLabClassProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#textureLabClassProperty', 151);
INSERT INTO core.property_desc_element VALUES ('VoidsClassificationProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#voidsClassificationProperty', 152);
INSERT INTO core.property_desc_element VALUES ('voidsDiameterProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#voidsDiameterProperty', 153);
INSERT INTO core.property_desc_element VALUES ('wetPlasticityProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#wetPlasticityProperty', 154);
INSERT INTO core.property_desc_element VALUES ('bleachedSandProperty', 'http://w3id.org/glosis/model/v1.0.0/common#bleachedSandProperty', 155);
INSERT INTO core.property_desc_element VALUES ('colourDryProperty', 'http://w3id.org/glosis/model/v1.0.0/common#colourDryProperty', 156);
INSERT INTO core.property_desc_element VALUES ('colourWetProperty', 'http://w3id.org/glosis/model/v1.0.0/common#colourWetProperty', 157);
INSERT INTO core.property_desc_element VALUES ('cracksDepthProperty', 'http://w3id.org/glosis/model/v1.0.0/common#cracksDepthProperty', 158);
INSERT INTO core.property_desc_element VALUES ('cracksDistanceProperty', 'http://w3id.org/glosis/model/v1.0.0/common#cracksDistanceProperty', 159);
INSERT INTO core.property_desc_element VALUES ('cracksWidthProperty', 'http://w3id.org/glosis/model/v1.0.0/common#cracksWidthProperty', 160);
INSERT INTO core.property_desc_element VALUES ('fragmentCoverProperty', 'http://w3id.org/glosis/model/v1.0.0/common#fragmentCoverProperty', 161);
INSERT INTO core.property_desc_element VALUES ('fragmentSizeProperty', 'http://w3id.org/glosis/model/v1.0.0/common#fragmentSizeProperty', 162);
INSERT INTO core.property_desc_element VALUES ('infiltrationRateClassProperty', 'http://w3id.org/glosis/model/v1.0.0/common#infiltrationRateClassProperty', 163);
INSERT INTO core.property_desc_element VALUES ('infiltrationRateNumericProperty', 'http://w3id.org/glosis/model/v1.0.0/common#infiltrationRateNumericProperty', 164);
INSERT INTO core.property_desc_element VALUES ('organicMatterClassProperty', 'http://w3id.org/glosis/model/v1.0.0/common#organicMatterClassProperty', 165);
INSERT INTO core.property_desc_element VALUES ('rockAbundanceProperty', 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty', 166);
INSERT INTO core.property_desc_element VALUES ('rockShapeProperty', 'http://w3id.org/glosis/model/v1.0.0/common#rockShapeProperty', 167);
INSERT INTO core.property_desc_element VALUES ('rockSizeProperty', 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty', 168);
INSERT INTO core.property_desc_element VALUES ('textureProperty', 'http://w3id.org/glosis/model/v1.0.0/common#textureProperty', 169);
INSERT INTO core.property_desc_element VALUES ('weatheringFragmentsProperty', 'http://w3id.org/glosis/model/v1.0.0/common#weatheringFragmentsProperty', 170);


--
-- Data for Name: property_desc_plot; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.property_desc_plot VALUES ('ForestAbundanceProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#ForestAbundanceProperty', 40);
INSERT INTO core.property_desc_plot VALUES ('GrassAbundanceProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#GrassAbundanceProperty', 41);
INSERT INTO core.property_desc_plot VALUES ('PavedAbundanceProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#PavedAbundanceProperty', 42);
INSERT INTO core.property_desc_plot VALUES ('ShrubsAbundaceProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#ShrubsAbundanceProperty', 43);
INSERT INTO core.property_desc_plot VALUES ('bareCoverAbundanceProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#bareCoverAbundanceProperty', 44);
INSERT INTO core.property_desc_plot VALUES ('erosionActivityPeriodProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionActivityPeriodProperty', 45);
INSERT INTO core.property_desc_plot VALUES ('erosionAreaAffectedProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionAreaAffectedProperty', 46);
INSERT INTO core.property_desc_plot VALUES ('erosionCategoryProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionCategoryProperty', 47);
INSERT INTO core.property_desc_plot VALUES ('erosionDegreeProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionDegreeProperty', 48);
INSERT INTO core.property_desc_plot VALUES ('erosionTotalAreaAffectedProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#erosionTotalAreaAffectedProperty', 49);
INSERT INTO core.property_desc_plot VALUES ('floodDurationProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#floodDurationProperty', 50);
INSERT INTO core.property_desc_plot VALUES ('floodFrequencyProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#floodFrequencyProperty', 51);
INSERT INTO core.property_desc_plot VALUES ('geologyProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#geologyProperty', 52);
INSERT INTO core.property_desc_plot VALUES ('groundwaterDepthProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#groundwaterDepthProperty', 53);
INSERT INTO core.property_desc_plot VALUES ('humanInfluenceClassProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#humanInfluenceClassProperty', 54);
INSERT INTO core.property_desc_plot VALUES ('koeppenClassProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#koeppenClassProperty', 55);
INSERT INTO core.property_desc_plot VALUES ('landUseClassProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#landUseClassProperty', 56);
INSERT INTO core.property_desc_plot VALUES ('LandformComplexProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#landformComplexProperty', 57);
INSERT INTO core.property_desc_plot VALUES ('lithologyProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#lithologyProperty', 58);
INSERT INTO core.property_desc_plot VALUES ('MajorLandFormProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#majorLandFormProperty', 59);
INSERT INTO core.property_desc_plot VALUES ('ParentDepositionProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentDepositionProperty', 60);
INSERT INTO core.property_desc_plot VALUES ('parentLithologyProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentLithologyProperty', 61);
INSERT INTO core.property_desc_plot VALUES ('parentTextureUnconsolidatedProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#parentTextureUnconsolidatedProperty', 62);
INSERT INTO core.property_desc_plot VALUES ('PhysiographyProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#physiographyProperty', 63);
INSERT INTO core.property_desc_plot VALUES ('rockOutcropsCoverProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#rockOutcropsCoverProperty', 64);
INSERT INTO core.property_desc_plot VALUES ('rockOutcropsDistanceProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#rockOutcropsDistanceProperty', 65);
INSERT INTO core.property_desc_plot VALUES ('slopeFormProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeFormProperty', 66);
INSERT INTO core.property_desc_plot VALUES ('slopeGradientClassProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeGradientClassProperty', 67);
INSERT INTO core.property_desc_plot VALUES ('slopeGradientProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeGradientProperty', 68);
INSERT INTO core.property_desc_plot VALUES ('slopeOrientationClassProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeOrientationClassProperty', 69);
INSERT INTO core.property_desc_plot VALUES ('slopeOrientationProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopeOrientationProperty', 70);
INSERT INTO core.property_desc_plot VALUES ('slopePathwaysProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#slopePathwaysProperty', 71);
INSERT INTO core.property_desc_plot VALUES ('surfaceAgeProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#surfaceAgeProperty', 72);
INSERT INTO core.property_desc_plot VALUES ('treeDensityProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#treeDensityProperty', 73);
INSERT INTO core.property_desc_plot VALUES ('VegetationClassProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#vegetationClassProperty', 74);
INSERT INTO core.property_desc_plot VALUES ('weatherConditionsCurrentProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsCurrentProperty', 75);
INSERT INTO core.property_desc_plot VALUES ('weatherConditionsPastProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatherConditionsPastProperty', 76);
INSERT INTO core.property_desc_plot VALUES ('weatheringRockProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#weatheringRockProperty', 77);
INSERT INTO core.property_desc_plot VALUES ('soilDepthBedrockProperty', 'http://w3id.org/glosis/model/v1.0.0/common#soilDepthBedrockProperty', 78);
INSERT INTO core.property_desc_plot VALUES ('soilDepthProperty', 'http://w3id.org/glosis/model/v1.0.0/common#soilDepthProperty', 79);
INSERT INTO core.property_desc_plot VALUES ('soilDepthRootableClassProperty', 'http://w3id.org/glosis/model/v1.0.0/common#soilDepthRootableClassProperty', 80);
INSERT INTO core.property_desc_plot VALUES ('soilDepthRootableProperty', 'http://w3id.org/glosis/model/v1.0.0/common#soilDepthRootableProperty', 81);
INSERT INTO core.property_desc_plot VALUES ('soilDepthSampledProperty', 'http://w3id.org/glosis/model/v1.0.0/common#soilDepthSampledProperty', 82);
INSERT INTO core.property_desc_plot VALUES ('weatheringFragmentsProperty', 'http://w3id.org/glosis/model/v1.0.0/common#weatheringFragmentsProperty', 83);
INSERT INTO core.property_desc_plot VALUES ('cropClassProperty', 'http://w3id.org/glosis/model/v1.0.0/siteplot#cropClassProperty', 84);


--
-- Data for Name: property_desc_profile; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.property_desc_profile VALUES ('profileDescriptionStatusProperty', 'http://w3id.org/glosis/model/v1.0.0/profile#profileDescriptionStatusProperty', 5);
INSERT INTO core.property_desc_profile VALUES ('soilClassificationFAOProperty', 'http://w3id.org/glosis/model/v1.0.0/profile#soilClassificationFAOProperty', 6);
INSERT INTO core.property_desc_profile VALUES ('soilClassificationUSDAProperty', 'http://w3id.org/glosis/model/v1.0.0/profile#soilClassificationUSDAProperty', 7);
INSERT INTO core.property_desc_profile VALUES ('soilClassificationWRBProperty', 'http://w3id.org/glosis/model/v1.0.0/profile#soilClassificationWRBProperty', 8);
INSERT INTO core.property_desc_profile VALUES ('infiltrationRateClassProperty', 'http://w3id.org/glosis/model/v1.0.0/common#infiltrationRateClassProperty', 9);
INSERT INTO core.property_desc_profile VALUES ('infiltrationRateNumericProperty', 'http://w3id.org/glosis/model/v1.0.0/common#infiltrationRateNumericProperty', 10);
INSERT INTO core.property_desc_profile VALUES ('soilDepthBedrockProperty', 'http://w3id.org/glosis/model/v1.0.0/common#soilDepthBedrockProperty', 11);
INSERT INTO core.property_desc_profile VALUES ('soilDepthProperty', 'http://w3id.org/glosis/model/v1.0.0/common#soilDepthProperty', 12);
INSERT INTO core.property_desc_profile VALUES ('soilDepthRootableClassProperty', 'http://w3id.org/glosis/model/v1.0.0/common#soilDepthRootableClassProperty', 13);
INSERT INTO core.property_desc_profile VALUES ('soilDepthRootableProperty', 'http://w3id.org/glosis/model/v1.0.0/common#soilDepthRootableProperty', 14);
INSERT INTO core.property_desc_profile VALUES ('soilDepthSampledProperty', 'http://w3id.org/glosis/model/v1.0.0/common#soilDepthSampledProperty', 15);


--
-- Data for Name: property_desc_specimen; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: property_desc_surface; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.property_desc_surface VALUES ('SaltCoverProperty', 'http://w3id.org/glosis/model/v1.0.0/surface#saltCoverProperty', 6);
INSERT INTO core.property_desc_surface VALUES ('saltPresenceProperty', 'http://w3id.org/glosis/model/v1.0.0/surface#saltPresenceProperty', 7);
INSERT INTO core.property_desc_surface VALUES ('SaltThicknessProperty', 'http://w3id.org/glosis/model/v1.0.0/surface#saltThicknessProperty', 8);
INSERT INTO core.property_desc_surface VALUES ('sealingConsistenceProperty', 'http://w3id.org/glosis/model/v1.0.0/surface#sealingConsistenceProperty', 9);
INSERT INTO core.property_desc_surface VALUES ('sealingThicknessProperty', 'http://w3id.org/glosis/model/v1.0.0/surface#sealingThicknessProperty', 10);
INSERT INTO core.property_desc_surface VALUES ('bleachedSandProperty', 'http://w3id.org/glosis/model/v1.0.0/common#bleachedSandProperty', 11);
INSERT INTO core.property_desc_surface VALUES ('colourDryProperty', 'http://w3id.org/glosis/model/v1.0.0/common#colourDryProperty', 12);
INSERT INTO core.property_desc_surface VALUES ('colourWetProperty', 'http://w3id.org/glosis/model/v1.0.0/common#colourWetProperty', 13);
INSERT INTO core.property_desc_surface VALUES ('cracksDepthProperty', 'http://w3id.org/glosis/model/v1.0.0/common#cracksDepthProperty', 14);
INSERT INTO core.property_desc_surface VALUES ('cracksDistanceProperty', 'http://w3id.org/glosis/model/v1.0.0/common#cracksDistanceProperty', 15);
INSERT INTO core.property_desc_surface VALUES ('cracksWidthProperty', 'http://w3id.org/glosis/model/v1.0.0/common#cracksWidthProperty', 16);
INSERT INTO core.property_desc_surface VALUES ('fragmentCoverProperty', 'http://w3id.org/glosis/model/v1.0.0/common#fragmentCoverProperty', 17);
INSERT INTO core.property_desc_surface VALUES ('fragmentSizeProperty', 'http://w3id.org/glosis/model/v1.0.0/common#fragmentSizeProperty', 18);
INSERT INTO core.property_desc_surface VALUES ('organicMatterClassProperty', 'http://w3id.org/glosis/model/v1.0.0/common#organicMatterClassProperty', 19);
INSERT INTO core.property_desc_surface VALUES ('rockAbundanceProperty', 'http://w3id.org/glosis/model/v1.0.0/common#rockAbundanceProperty', 20);
INSERT INTO core.property_desc_surface VALUES ('rockShapeProperty', 'http://w3id.org/glosis/model/v1.0.0/common#rockShapeProperty', 21);
INSERT INTO core.property_desc_surface VALUES ('rockSizeProperty', 'http://w3id.org/glosis/model/v1.0.0/common#rockSizeProperty', 22);
INSERT INTO core.property_desc_surface VALUES ('textureProperty', 'http://w3id.org/glosis/model/v1.0.0/common#textureProperty', 23);
INSERT INTO core.property_desc_surface VALUES ('weatheringFragmentsProperty', 'http://w3id.org/glosis/model/v1.0.0/common#weatheringFragmentsProperty', 24);


--
-- Data for Name: property_numerical_specimen; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: property_phys_chem; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.property_phys_chem VALUES ('aluminiumProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#aluminiumProperty', 39);
INSERT INTO core.property_phys_chem VALUES ('Acidity - exchangeable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aciexc', 1);
INSERT INTO core.property_phys_chem VALUES ('Aluminium (Al+++) - exchangeable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Aluexc', 2);
INSERT INTO core.property_phys_chem VALUES ('Available water capacity - volumetric (FC to WP)', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Avavol', 3);
INSERT INTO core.property_phys_chem VALUES ('Base saturation - calculated', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bascal', 4);
INSERT INTO core.property_phys_chem VALUES ('Boron (B) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Borext', 5);
INSERT INTO core.property_phys_chem VALUES ('Boron (B) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Bortot', 6);
INSERT INTO core.property_phys_chem VALUES ('Calcium (Ca++) - exchangeable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calexc', 7);
INSERT INTO core.property_phys_chem VALUES ('Calcium (Ca++) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Calext', 8);
INSERT INTO core.property_phys_chem VALUES ('Calcium (Ca++) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Caltot', 9);
INSERT INTO core.property_phys_chem VALUES ('Carbon (C) - organic', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Carorg', 10);
INSERT INTO core.property_phys_chem VALUES ('Carbon (C) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Cartot', 11);
INSERT INTO core.property_phys_chem VALUES ('Copper (Cu) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Copext', 12);
INSERT INTO core.property_phys_chem VALUES ('Copper (Cu) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Coptot', 13);
INSERT INTO core.property_phys_chem VALUES ('Hydrogen (H+) - exchangeable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Hydexc', 14);
INSERT INTO core.property_phys_chem VALUES ('Iron (Fe) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Iroext', 15);
INSERT INTO core.property_phys_chem VALUES ('Iron (Fe) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Irotot', 16);
INSERT INTO core.property_phys_chem VALUES ('Magnesium (Mg++) - exchangeable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magexc', 17);
INSERT INTO core.property_phys_chem VALUES ('Magnesium (Mg) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magext', 18);
INSERT INTO core.property_phys_chem VALUES ('Magnesium (Mg) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Magtot', 19);
INSERT INTO core.property_phys_chem VALUES ('Manganese (Mn) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Manext', 20);
INSERT INTO core.property_phys_chem VALUES ('Manganese (Mn) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Mantot', 21);
INSERT INTO core.property_phys_chem VALUES ('Nitrogen (N) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Nittot', 22);
INSERT INTO core.property_phys_chem VALUES ('Phosphorus (P) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoext', 23);
INSERT INTO core.property_phys_chem VALUES ('Phosphorus (P) - retention', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Phoret', 24);
INSERT INTO core.property_phys_chem VALUES ('Phosphorus (P) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Photot', 25);
INSERT INTO core.property_phys_chem VALUES ('Potassium (K+) - exchangeable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potexc', 26);
INSERT INTO core.property_phys_chem VALUES ('Potassium (K) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Potext', 27);
INSERT INTO core.property_phys_chem VALUES ('Potassium (K) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Pottot', 28);
INSERT INTO core.property_phys_chem VALUES ('Sodium (Na+) - exchangeable %', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodexp', 29);
INSERT INTO core.property_phys_chem VALUES ('Sodium (Na) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodext', 30);
INSERT INTO core.property_phys_chem VALUES ('Sodium (Na) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sodtot', 31);
INSERT INTO core.property_phys_chem VALUES ('Sulfur (S) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sulext', 32);
INSERT INTO core.property_phys_chem VALUES ('Sulfur (S) - total', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Sultot', 33);
INSERT INTO core.property_phys_chem VALUES ('Clay texture fraction', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textclay', 34);
INSERT INTO core.property_phys_chem VALUES ('Sand texture fraction', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsand', 35);
INSERT INTO core.property_phys_chem VALUES ('Silt texture fraction', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Textsilt', 36);
INSERT INTO core.property_phys_chem VALUES ('Zinc (Zn) - extractable', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-Zinext', 37);
INSERT INTO core.property_phys_chem VALUES ('pH - Hydrogen potential', 'http://w3id.org/glosis/model/v1.0.0/codelists#physioChemicalPropertyCode-pH', 38);
INSERT INTO core.property_phys_chem VALUES ('bulkDensityFineEarthProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityFineEarthProperty', 40);
INSERT INTO core.property_phys_chem VALUES ('bulkDensityWholeSoilProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#bulkDensityWholeSoilProperty', 41);
INSERT INTO core.property_phys_chem VALUES ('cadmiumProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cadmiumProperty', 42);
INSERT INTO core.property_phys_chem VALUES ('carbonInorganicProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#carbonInorganicProperty', 43);
INSERT INTO core.property_phys_chem VALUES ('cationExchangeCapacitycSoilProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#cationExchangeCapacitycSoilProperty', 44);
INSERT INTO core.property_phys_chem VALUES ('coarseFragmentsProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#coarseFragmentsProperty', 45);
INSERT INTO core.property_phys_chem VALUES ('effectiveCecProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#effectiveCecProperty', 46);
INSERT INTO core.property_phys_chem VALUES ('electricalConductivityProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#electricalConductivityProperty', 47);
INSERT INTO core.property_phys_chem VALUES ('gypsumProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#gypsumProperty', 48);
INSERT INTO core.property_phys_chem VALUES ('hydraulicConductivityProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#hydraulicConductivityProperty', 49);
INSERT INTO core.property_phys_chem VALUES ('manganeseProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#manganeseProperty', 50);
INSERT INTO core.property_phys_chem VALUES ('molybdenumProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#molybdenumProperty', 51);
INSERT INTO core.property_phys_chem VALUES ('organicMatterProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#organicMatterProperty', 52);
INSERT INTO core.property_phys_chem VALUES ('pHProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#pHProperty', 53);
INSERT INTO core.property_phys_chem VALUES ('porosityProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#porosityProperty', 54);
INSERT INTO core.property_phys_chem VALUES ('solubleSaltsProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#solubleSaltsProperty', 55);
INSERT INTO core.property_phys_chem VALUES ('totalCarbonateEquivalentProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#totalCarbonateEquivalentProperty', 56);
INSERT INTO core.property_phys_chem VALUES ('zincProperty', 'http://w3id.org/glosis/model/v1.0.0/layerhorizon#zincProperty', 57);


--
-- Data for Name: result_desc_element; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: result_desc_plot; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: result_desc_profile; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: result_desc_specimen; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: result_desc_surface; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: result_numerical_specimen; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: result_phys_chem; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: site; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: site_project; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: specimen; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: specimen_prep_process; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: specimen_storage; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: specimen_transport; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: surface; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: surface_individual; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: thesaurus_desc_element; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.thesaurus_desc_element VALUES ('Common', 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalAbundanceValueCode-C', 1);
INSERT INTO core.thesaurus_desc_element VALUES ('Few', 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalAbundanceValueCode-F', 2);
INSERT INTO core.thesaurus_desc_element VALUES ('Many', 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalAbundanceValueCode-M', 3);
INSERT INTO core.thesaurus_desc_element VALUES ('None', 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalAbundanceValueCode-N', 4);
INSERT INTO core.thesaurus_desc_element VALUES ('Artefacts', 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-A', 5);
INSERT INTO core.thesaurus_desc_element VALUES ('Burrows (unspecified)', 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-B', 6);
INSERT INTO core.thesaurus_desc_element VALUES ('Infilled large burrows', 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-BI', 7);
INSERT INTO core.thesaurus_desc_element VALUES ('Open large burrows', 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-BO', 8);
INSERT INTO core.thesaurus_desc_element VALUES ('Charcoal', 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-C', 9);
INSERT INTO core.thesaurus_desc_element VALUES ('Earthworm channels', 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-E', 10);
INSERT INTO core.thesaurus_desc_element VALUES ('Other insect activity', 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-I', 11);
INSERT INTO core.thesaurus_desc_element VALUES ('Pedotubules', 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-P', 12);
INSERT INTO core.thesaurus_desc_element VALUES ('Termite or ant channels and nests', 'http://w3id.org/glosis/model/v1.0.0/codelists#biologicalFeaturesValueCode-T', 13);
INSERT INTO core.thesaurus_desc_element VALUES ('Clear', 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryClassificationValueCode-C', 14);
INSERT INTO core.thesaurus_desc_element VALUES ('Diffuse', 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryClassificationValueCode-D', 15);
INSERT INTO core.thesaurus_desc_element VALUES ('Sharp', 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryClassificationValueCode-S', 16);
INSERT INTO core.thesaurus_desc_element VALUES ('Abrupt', 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryDistinctnessValueCode-A', 17);
INSERT INTO core.thesaurus_desc_element VALUES ('Clear', 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryDistinctnessValueCode-C', 18);
INSERT INTO core.thesaurus_desc_element VALUES ('Diffuse', 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryDistinctnessValueCode-D', 19);
INSERT INTO core.thesaurus_desc_element VALUES ('Gradual', 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryDistinctnessValueCode-G', 20);
INSERT INTO core.thesaurus_desc_element VALUES ('Broken', 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryTopographyValueCode-B', 21);
INSERT INTO core.thesaurus_desc_element VALUES ('Irregular', 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryTopographyValueCode-I', 22);
INSERT INTO core.thesaurus_desc_element VALUES ('Smooth', 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryTopographyValueCode-S', 23);
INSERT INTO core.thesaurus_desc_element VALUES ('Wavy', 'http://w3id.org/glosis/model/v1.0.0/codelists#boundaryTopographyValueCode-W', 24);
INSERT INTO core.thesaurus_desc_element VALUES ('Many pores, moist materials drop easily out of the auger.', 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityMineralValueCode-BD1', 25);
INSERT INTO core.thesaurus_desc_element VALUES ('Sample disintegrates into numerous fragments after application of weak pressure.', 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityMineralValueCode-BD2', 26);
INSERT INTO core.thesaurus_desc_element VALUES ('Knife can be pushed into the moist soil with weak pressure, sample disintegrates into few fragments, which may be further divided.', 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityMineralValueCode-BD3', 27);
INSERT INTO core.thesaurus_desc_element VALUES ('Knife penetrates only 1–2 cm into the moist soil, some effort required, sample disintegrates into few fragments, which cannot be subdivided further.', 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityMineralValueCode-BD4', 28);
INSERT INTO core.thesaurus_desc_element VALUES ('Very large pressure necessary to force knife into the soil, no further disintegration of sample.', 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityMineralValueCode-BD5', 29);
INSERT INTO core.thesaurus_desc_element VALUES ('< 0.04g cm-3', 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityPeatValueCode-BD1', 30);
INSERT INTO core.thesaurus_desc_element VALUES ('0.04–0.07g cm-3', 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityPeatValueCode-BD2', 31);
INSERT INTO core.thesaurus_desc_element VALUES ('0.07–0.11g cm-3', 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityPeatValueCode-BD3', 32);
INSERT INTO core.thesaurus_desc_element VALUES ('0.11–0.17g cm-3', 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityPeatValueCode-BD4', 33);
INSERT INTO core.thesaurus_desc_element VALUES ('> 0.17g cm-3', 'http://w3id.org/glosis/model/v1.0.0/codelists#bulkDensityPeatValueCode-BD5', 34);
INSERT INTO core.thesaurus_desc_element VALUES ('≈ > 25 Extremely calcareous Extremely strong reaction. Thick foam forms quickly.', 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesContentValueCode-EX', 35);
INSERT INTO core.thesaurus_desc_element VALUES ('≈ 2–10 Moderately calcareous Visible effervescence.', 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesContentValueCode-MO', 36);
INSERT INTO core.thesaurus_desc_element VALUES ('0 Non-calcareous No detectable visible or audible effervescence.', 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesContentValueCode-N', 37);
INSERT INTO core.thesaurus_desc_element VALUES ('≈ 0–2 Slightly calcareous Audible effervescence but not visible.', 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesContentValueCode-SL', 38);
INSERT INTO core.thesaurus_desc_element VALUES ('≈ 10–25 Strongly calcareous Strong visible effervescence. Bubbles form a low foam.', 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesContentValueCode-ST', 39);
INSERT INTO core.thesaurus_desc_element VALUES ('disperse powdery lime', 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesFormsValueCode-D', 40);
INSERT INTO core.thesaurus_desc_element VALUES ('hard concretions', 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesFormsValueCode-HC', 41);
INSERT INTO core.thesaurus_desc_element VALUES ('hard hollow concretions', 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesFormsValueCode-HHC', 42);
INSERT INTO core.thesaurus_desc_element VALUES ('hard cemented layer or layers of carbonates (less than 10 cm thick)', 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesFormsValueCode-HL', 43);
INSERT INTO core.thesaurus_desc_element VALUES ('marl layer', 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesFormsValueCode-M', 44);
INSERT INTO core.thesaurus_desc_element VALUES ('pseudomycelia* (carbonate infillings in pores, resembling mycelia)', 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesFormsValueCode-PM', 45);
INSERT INTO core.thesaurus_desc_element VALUES ('soft concretions', 'http://w3id.org/glosis/model/v1.0.0/codelists#carbonatesFormsValueCode-SC', 46);
INSERT INTO core.thesaurus_desc_element VALUES ('Broken', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationContinuityValueCode-B', 47);
INSERT INTO core.thesaurus_desc_element VALUES ('Continuous', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationContinuityValueCode-C', 48);
INSERT INTO core.thesaurus_desc_element VALUES ('Discontinuous', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationContinuityValueCode-D', 49);
INSERT INTO core.thesaurus_desc_element VALUES ('Cemented', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationDegreeValueCode-C', 50);
INSERT INTO core.thesaurus_desc_element VALUES ('Indurated', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationDegreeValueCode-I', 51);
INSERT INTO core.thesaurus_desc_element VALUES ('Moderately cemented', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationDegreeValueCode-M', 52);
INSERT INTO core.thesaurus_desc_element VALUES ('Non-cemented and non-compacted', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationDegreeValueCode-N', 53);
INSERT INTO core.thesaurus_desc_element VALUES ('Weakly cemented', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationDegreeValueCode-W', 54);
INSERT INTO core.thesaurus_desc_element VALUES ('Compacted but non-cemented', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationDegreeValueCode-Y', 55);
INSERT INTO core.thesaurus_desc_element VALUES ('Nodular', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationFabricValueCode-D', 56);
INSERT INTO core.thesaurus_desc_element VALUES ('Pisolithic', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationFabricValueCode-Pi', 57);
INSERT INTO core.thesaurus_desc_element VALUES ('Platy', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationFabricValueCode-Pl', 58);
INSERT INTO core.thesaurus_desc_element VALUES ('Vesicular', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationFabricValueCode-V', 59);
INSERT INTO core.thesaurus_desc_element VALUES ('Clay', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-C', 60);
INSERT INTO core.thesaurus_desc_element VALUES ('Clay–sesquioxides', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-CS', 61);
INSERT INTO core.thesaurus_desc_element VALUES ('Iron', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-F', 62);
INSERT INTO core.thesaurus_desc_element VALUES ('Iron–manganese (sesquioxides)', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-FM', 63);
INSERT INTO core.thesaurus_desc_element VALUES ('Iron–organic matter', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-FO', 64);
INSERT INTO core.thesaurus_desc_element VALUES ('Gypsum', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-GY', 65);
INSERT INTO core.thesaurus_desc_element VALUES ('Ice', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-I', 66);
INSERT INTO core.thesaurus_desc_element VALUES ('Carbonates', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-K', 67);
INSERT INTO core.thesaurus_desc_element VALUES ('Carbonates–silica', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-KQ', 68);
INSERT INTO core.thesaurus_desc_element VALUES ('Mechanical', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-M', 69);
INSERT INTO core.thesaurus_desc_element VALUES ('Not known', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-NK', 70);
INSERT INTO core.thesaurus_desc_element VALUES ('Ploughing', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-P', 71);
INSERT INTO core.thesaurus_desc_element VALUES ('Silica', 'http://w3id.org/glosis/model/v1.0.0/codelists#cementationNatureValueCode-Q', 72);
INSERT INTO core.thesaurus_desc_element VALUES ('Abundant', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingAbundanceValueCode-A', 73);
INSERT INTO core.thesaurus_desc_element VALUES ('Common', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingAbundanceValueCode-C', 74);
INSERT INTO core.thesaurus_desc_element VALUES ('Dominant', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingAbundanceValueCode-D', 75);
INSERT INTO core.thesaurus_desc_element VALUES ('Few', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingAbundanceValueCode-F', 76);
INSERT INTO core.thesaurus_desc_element VALUES ('Many', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingAbundanceValueCode-M', 77);
INSERT INTO core.thesaurus_desc_element VALUES ('None', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingAbundanceValueCode-N', 78);
INSERT INTO core.thesaurus_desc_element VALUES ('Very few ', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingAbundanceValueCode-V', 79);
INSERT INTO core.thesaurus_desc_element VALUES ('Distinct', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingContrastValueCode-D', 80);
INSERT INTO core.thesaurus_desc_element VALUES ('Faint', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingContrastValueCode-F', 81);
INSERT INTO core.thesaurus_desc_element VALUES ('Prominent', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingContrastValueCode-P', 82);
INSERT INTO core.thesaurus_desc_element VALUES ('Continuous', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingFormValueCode-C', 83);
INSERT INTO core.thesaurus_desc_element VALUES ('Continuous irregular (non-uniform, heterogeneous)', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingFormValueCode-CI', 84);
INSERT INTO core.thesaurus_desc_element VALUES ('Discontinuous circular', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingFormValueCode-DC', 85);
INSERT INTO core.thesaurus_desc_element VALUES ('Dendroidal', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingFormValueCode-DE', 86);
INSERT INTO core.thesaurus_desc_element VALUES ('Discontinuous irregular', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingFormValueCode-DI', 87);
INSERT INTO core.thesaurus_desc_element VALUES ('Other', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingFormValueCode-O', 88);
INSERT INTO core.thesaurus_desc_element VALUES ('Bridges between sand grains', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingLocationValueCode-BR', 89);
INSERT INTO core.thesaurus_desc_element VALUES ('Coarse fragments', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingLocationValueCode-CF', 90);
INSERT INTO core.thesaurus_desc_element VALUES ('Lamellae (clay bands)', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingLocationValueCode-LA', 91);
INSERT INTO core.thesaurus_desc_element VALUES ('No specific location', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingLocationValueCode-NS', 92);
INSERT INTO core.thesaurus_desc_element VALUES ('Pedfaces', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingLocationValueCode-P', 93);
INSERT INTO core.thesaurus_desc_element VALUES ('Horizontal pedfaces', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingLocationValueCode-PH', 94);
INSERT INTO core.thesaurus_desc_element VALUES ('Vertical pedfaces', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingLocationValueCode-PV', 95);
INSERT INTO core.thesaurus_desc_element VALUES ('Voids', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingLocationValueCode-VO', 96);
INSERT INTO core.thesaurus_desc_element VALUES ('Clay', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-C', 97);
INSERT INTO core.thesaurus_desc_element VALUES ('Calcium carbonate', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-CC', 98);
INSERT INTO core.thesaurus_desc_element VALUES ('Clay and humus (organic matter)', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-CH', 99);
INSERT INTO core.thesaurus_desc_element VALUES ('Clay and sesquioxides', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-CS', 100);
INSERT INTO core.thesaurus_desc_element VALUES ('Gibbsite', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-GB', 101);
INSERT INTO core.thesaurus_desc_element VALUES ('Humus', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-H', 102);
INSERT INTO core.thesaurus_desc_element VALUES ('Hypodermic coatings (Hypodermic coatings, as used here, are field-scale features, commonly only expressed as hydromorphic features. Micromorphological hypodermic coatings include non-redox features [Bullock et al., 1985].)', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-HC', 103);
INSERT INTO core.thesaurus_desc_element VALUES ('Jarosite', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-JA', 104);
INSERT INTO core.thesaurus_desc_element VALUES ('Manganese', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-MN', 105);
INSERT INTO core.thesaurus_desc_element VALUES ('Pressure faces', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-PF', 106);
INSERT INTO core.thesaurus_desc_element VALUES ('Sesquioxides', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-S', 107);
INSERT INTO core.thesaurus_desc_element VALUES ('Sand coatings', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-SA', 108);
INSERT INTO core.thesaurus_desc_element VALUES ('Shiny faces (as in nitic horizon)', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-SF', 109);
INSERT INTO core.thesaurus_desc_element VALUES ('Slickensides, predominantly intersecting (Slickensides are polished and grooved ped surfaces that are produced by aggregates sliding one past another.)', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-SI', 110);
INSERT INTO core.thesaurus_desc_element VALUES ('Silica (opal)', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-SL', 111);
INSERT INTO core.thesaurus_desc_element VALUES ('Slickensides, non intersecting', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-SN', 112);
INSERT INTO core.thesaurus_desc_element VALUES ('Slickensides, partly intersecting', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-SP', 113);
INSERT INTO core.thesaurus_desc_element VALUES ('Silt coatings', 'http://w3id.org/glosis/model/v1.0.0/codelists#coatingNatureValueCode-ST', 114);
INSERT INTO core.thesaurus_desc_element VALUES ('Extremely hard', 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-EHA', 115);
INSERT INTO core.thesaurus_desc_element VALUES ('Hard', 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-HA', 116);
INSERT INTO core.thesaurus_desc_element VALUES ('hard to very hard', 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-HVH', 117);
INSERT INTO core.thesaurus_desc_element VALUES ('Loose', 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-LO', 118);
INSERT INTO core.thesaurus_desc_element VALUES ('Slightly hard', 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-SHA', 119);
INSERT INTO core.thesaurus_desc_element VALUES ('slightly hard to hard', 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-SHH', 120);
INSERT INTO core.thesaurus_desc_element VALUES ('Soft', 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-SO', 121);
INSERT INTO core.thesaurus_desc_element VALUES ('soft to slightly hard', 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-SSH', 122);
INSERT INTO core.thesaurus_desc_element VALUES ('Very hard', 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceDryValueCode-VHA', 123);
INSERT INTO core.thesaurus_desc_element VALUES ('Extremely firm', 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceMoistValueCode-EFI', 124);
INSERT INTO core.thesaurus_desc_element VALUES ('Firm', 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceMoistValueCode-FI', 125);
INSERT INTO core.thesaurus_desc_element VALUES ('Friable', 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceMoistValueCode-FR', 126);
INSERT INTO core.thesaurus_desc_element VALUES ('Loose', 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceMoistValueCode-LO', 127);
INSERT INTO core.thesaurus_desc_element VALUES ('Very firm ', 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceMoistValueCode-VFI', 128);
INSERT INTO core.thesaurus_desc_element VALUES ('Very friable', 'http://w3id.org/glosis/model/v1.0.0/codelists#consistenceMoistValueCode-VFR', 129);
INSERT INTO core.thesaurus_desc_element VALUES ('Distinct', 'http://w3id.org/glosis/model/v1.0.0/codelists#contrastValueCode-D', 130);
INSERT INTO core.thesaurus_desc_element VALUES ('Faint', 'http://w3id.org/glosis/model/v1.0.0/codelists#contrastValueCode-F', 131);
INSERT INTO core.thesaurus_desc_element VALUES ('Prominent', 'http://w3id.org/glosis/model/v1.0.0/codelists#contrastValueCode-P', 132);
INSERT INTO core.thesaurus_desc_element VALUES ('Extremely gypsiric', 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumContentValueCode-EX', 133);
INSERT INTO core.thesaurus_desc_element VALUES ('Moderately gypsiric', 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumContentValueCode-MO', 134);
INSERT INTO core.thesaurus_desc_element VALUES ('Non-gypsiric', 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumContentValueCode-N', 135);
INSERT INTO core.thesaurus_desc_element VALUES ('Slightly gypsiric', 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumContentValueCode-SL', 136);
INSERT INTO core.thesaurus_desc_element VALUES ('Strongly gypsiric', 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumContentValueCode-ST', 137);
INSERT INTO core.thesaurus_desc_element VALUES ('disperse powdery gypsum', 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumFormsValueCode-D', 138);
INSERT INTO core.thesaurus_desc_element VALUES ('“gazha” (clayey water-saturated layer with high gypsum content)', 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumFormsValueCode-G', 139);
INSERT INTO core.thesaurus_desc_element VALUES ('hard cemented layer or layers of gypsum (less than 10 cm thick)', 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumFormsValueCode-HL', 140);
INSERT INTO core.thesaurus_desc_element VALUES ('soft concretions', 'http://w3id.org/glosis/model/v1.0.0/codelists#gypsumFormsValueCode-SC', 141);
INSERT INTO core.thesaurus_desc_element VALUES ('Bluish-black', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-BB', 142);
INSERT INTO core.thesaurus_desc_element VALUES ('Black', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-BL', 143);
INSERT INTO core.thesaurus_desc_element VALUES ('Brown', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-BR', 144);
INSERT INTO core.thesaurus_desc_element VALUES ('Brownish', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-BS', 145);
INSERT INTO core.thesaurus_desc_element VALUES ('Blue', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-BU', 146);
INSERT INTO core.thesaurus_desc_element VALUES ('Greenish', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-GE', 147);
INSERT INTO core.thesaurus_desc_element VALUES ('Grey', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-GR', 148);
INSERT INTO core.thesaurus_desc_element VALUES ('Greyish', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-GS', 149);
INSERT INTO core.thesaurus_desc_element VALUES ('Multicoloured', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-MC', 150);
INSERT INTO core.thesaurus_desc_element VALUES ('Reddish brown', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-RB', 151);
INSERT INTO core.thesaurus_desc_element VALUES ('Red', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-RE', 152);
INSERT INTO core.thesaurus_desc_element VALUES ('Reddish', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-RS', 153);
INSERT INTO core.thesaurus_desc_element VALUES ('Reddish yellow', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-RY', 154);
INSERT INTO core.thesaurus_desc_element VALUES ('White', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-WH', 155);
INSERT INTO core.thesaurus_desc_element VALUES ('Yellowish brown', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-YB', 156);
INSERT INTO core.thesaurus_desc_element VALUES ('Yellow', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-YE', 157);
INSERT INTO core.thesaurus_desc_element VALUES ('Yellowish red', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcColourValueCode-YR', 158);
INSERT INTO core.thesaurus_desc_element VALUES ('Both hard and soft.', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcHardnessValueCode-B', 159);
INSERT INTO core.thesaurus_desc_element VALUES ('Hard', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcHardnessValueCode-H', 160);
INSERT INTO core.thesaurus_desc_element VALUES ('Soft', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcHardnessValueCode-S', 161);
INSERT INTO core.thesaurus_desc_element VALUES ('Concretion', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-C', 162);
INSERT INTO core.thesaurus_desc_element VALUES ('Crack infillings', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-IC', 163);
INSERT INTO core.thesaurus_desc_element VALUES ('Pore infillings', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-IP', 164);
INSERT INTO core.thesaurus_desc_element VALUES ('Nodule', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-N', 165);
INSERT INTO core.thesaurus_desc_element VALUES ('Other', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-O', 166);
INSERT INTO core.thesaurus_desc_element VALUES ('Residual rock fragment', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-R', 167);
INSERT INTO core.thesaurus_desc_element VALUES ('Soft segregation (or soft accumulation)', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-S', 168);
INSERT INTO core.thesaurus_desc_element VALUES ('Soft concretion', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-SC', 169);
INSERT INTO core.thesaurus_desc_element VALUES ('Crystal', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcKindValueCode-T', 170);
INSERT INTO core.thesaurus_desc_element VALUES ('Clay (argillaceous)', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-C', 171);
INSERT INTO core.thesaurus_desc_element VALUES ('Clay–sesquioxides', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-CS', 172);
INSERT INTO core.thesaurus_desc_element VALUES ('Iron (ferruginous)', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-F', 173);
INSERT INTO core.thesaurus_desc_element VALUES ('Iron–manganese (sesquioxides)', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-FM', 174);
INSERT INTO core.thesaurus_desc_element VALUES ('Gibbsite', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-GB', 175);
INSERT INTO core.thesaurus_desc_element VALUES ('Gypsum (gypsiferous)', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-GY', 176);
INSERT INTO core.thesaurus_desc_element VALUES ('Jarosite', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-JA', 177);
INSERT INTO core.thesaurus_desc_element VALUES ('Carbonates (calcareous)', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-K', 178);
INSERT INTO core.thesaurus_desc_element VALUES ('Carbonates–silica', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-KQ', 179);
INSERT INTO core.thesaurus_desc_element VALUES ('Manganese (manganiferous)', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-M', 180);
INSERT INTO core.thesaurus_desc_element VALUES ('Not known', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-NK', 181);
INSERT INTO core.thesaurus_desc_element VALUES ('Silica (siliceous)', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-Q', 182);
INSERT INTO core.thesaurus_desc_element VALUES ('Sulphur (sulphurous)', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-S', 183);
INSERT INTO core.thesaurus_desc_element VALUES ('Salt (saline)', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcNatureValueCode-SA', 184);
INSERT INTO core.thesaurus_desc_element VALUES ('Angular', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcShapeValueCode-A', 185);
INSERT INTO core.thesaurus_desc_element VALUES ('Elongated', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcShapeValueCode-E', 186);
INSERT INTO core.thesaurus_desc_element VALUES ('Flat', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcShapeValueCode-F', 187);
INSERT INTO core.thesaurus_desc_element VALUES ('Irregular', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcShapeValueCode-I', 188);
INSERT INTO core.thesaurus_desc_element VALUES ('Rounded (spherical)', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcShapeValueCode-R', 189);
INSERT INTO core.thesaurus_desc_element VALUES ('Coarse', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcSizeValueCode-C', 190);
INSERT INTO core.thesaurus_desc_element VALUES ('Fine', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcSizeValueCode-F', 191);
INSERT INTO core.thesaurus_desc_element VALUES ('Medium', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcSizeValueCode-M', 192);
INSERT INTO core.thesaurus_desc_element VALUES ('Very fine', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcSizeValueCode-V', 193);
INSERT INTO core.thesaurus_desc_element VALUES ('Abundant', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcVolumeValueCode-A', 194);
INSERT INTO core.thesaurus_desc_element VALUES ('Common', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcVolumeValueCode-C', 195);
INSERT INTO core.thesaurus_desc_element VALUES ('Dominant', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcVolumeValueCode-D', 196);
INSERT INTO core.thesaurus_desc_element VALUES ('Few', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcVolumeValueCode-F', 197);
INSERT INTO core.thesaurus_desc_element VALUES ('Many', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcVolumeValueCode-M', 198);
INSERT INTO core.thesaurus_desc_element VALUES ('None', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcVolumeValueCode-N', 199);
INSERT INTO core.thesaurus_desc_element VALUES ('Very few', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralConcVolumeValueCode-V', 200);
INSERT INTO core.thesaurus_desc_element VALUES ('Feldspar', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralFragmentsValueCode-FE', 201);
INSERT INTO core.thesaurus_desc_element VALUES ('Mica', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralFragmentsValueCode-MI', 202);
INSERT INTO core.thesaurus_desc_element VALUES ('<Quartz', 'http://w3id.org/glosis/model/v1.0.0/codelists#mineralFragmentsValueCode-QU', 203);
INSERT INTO core.thesaurus_desc_element VALUES ('Abundant', 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesAbundanceValueCode-A', 204);
INSERT INTO core.thesaurus_desc_element VALUES ('Common', 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesAbundanceValueCode-C', 205);
INSERT INTO core.thesaurus_desc_element VALUES ('Few', 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesAbundanceValueCode-F', 206);
INSERT INTO core.thesaurus_desc_element VALUES ('Many', 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesAbundanceValueCode-M', 207);
INSERT INTO core.thesaurus_desc_element VALUES ('None', 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesAbundanceValueCode-N', 208);
INSERT INTO core.thesaurus_desc_element VALUES ('Very few', 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesAbundanceValueCode-V', 209);
INSERT INTO core.thesaurus_desc_element VALUES ('A Coarse', 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesSizeValueCode-A', 210);
INSERT INTO core.thesaurus_desc_element VALUES ('F Fine', 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesSizeValueCode-F', 211);
INSERT INTO core.thesaurus_desc_element VALUES ('M Medium', 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesSizeValueCode-M', 212);
INSERT INTO core.thesaurus_desc_element VALUES ('Very fine', 'http://w3id.org/glosis/model/v1.0.0/codelists#mottlesSizeValueCode-V', 213);
INSERT INTO core.thesaurus_desc_element VALUES ('very low', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-D1', 214);
INSERT INTO core.thesaurus_desc_element VALUES ('low', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-D2', 215);
INSERT INTO core.thesaurus_desc_element VALUES ('moderate', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-D3', 216);
INSERT INTO core.thesaurus_desc_element VALUES ('strong', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-D4', 217);
INSERT INTO core.thesaurus_desc_element VALUES ('moderately strong', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-D5.1', 218);
INSERT INTO core.thesaurus_desc_element VALUES ('very strong', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-D5.2', 219);
INSERT INTO core.thesaurus_desc_element VALUES ('Fibric', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-Fibric', 220);
INSERT INTO core.thesaurus_desc_element VALUES ('Hemic', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-Hemic', 221);
INSERT INTO core.thesaurus_desc_element VALUES ('Sapric', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDecompostionValueCode-Sapric', 222);
INSERT INTO core.thesaurus_desc_element VALUES ('Undrained', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDrainageValueCode-DC1', 223);
INSERT INTO core.thesaurus_desc_element VALUES ('Weakly drained', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDrainageValueCode-DC2', 224);
INSERT INTO core.thesaurus_desc_element VALUES ('Moderately drained', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDrainageValueCode-DC3', 225);
INSERT INTO core.thesaurus_desc_element VALUES ('Well drained', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatDrainageValueCode-DC4', 226);
INSERT INTO core.thesaurus_desc_element VALUES ('< 3%', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatVolumeValueCode-SV1', 227);
INSERT INTO core.thesaurus_desc_element VALUES ('3– < 5%', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatVolumeValueCode-SV2', 228);
INSERT INTO core.thesaurus_desc_element VALUES ('5– < 8%', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatVolumeValueCode-SV3', 229);
INSERT INTO core.thesaurus_desc_element VALUES ('8– < 12%', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatVolumeValueCode-SV4', 230);
INSERT INTO core.thesaurus_desc_element VALUES ('≥ 12%', 'http://w3id.org/glosis/model/v1.0.0/codelists#peatVolumeValueCode-SV5', 231);
INSERT INTO core.thesaurus_desc_element VALUES ('Non-plastic', 'http://w3id.org/glosis/model/v1.0.0/codelists#plasticityValueCode-NPL', 232);
INSERT INTO core.thesaurus_desc_element VALUES ('Plastic', 'http://w3id.org/glosis/model/v1.0.0/codelists#plasticityValueCode-PL', 233);
INSERT INTO core.thesaurus_desc_element VALUES ('plastic to very plastic', 'http://w3id.org/glosis/model/v1.0.0/codelists#plasticityValueCode-PVP', 234);
INSERT INTO core.thesaurus_desc_element VALUES ('Slightly plastic', 'http://w3id.org/glosis/model/v1.0.0/codelists#plasticityValueCode-SPL', 235);
INSERT INTO core.thesaurus_desc_element VALUES ('slightly plastic to plastic', 'http://w3id.org/glosis/model/v1.0.0/codelists#plasticityValueCode-SPP', 236);
INSERT INTO core.thesaurus_desc_element VALUES ('Very plastic', 'http://w3id.org/glosis/model/v1.0.0/codelists#plasticityValueCode-VPL', 237);
INSERT INTO core.thesaurus_desc_element VALUES ('Common', 'http://w3id.org/glosis/model/v1.0.0/codelists#poresAbundanceValueCode-C', 238);
INSERT INTO core.thesaurus_desc_element VALUES ('Few', 'http://w3id.org/glosis/model/v1.0.0/codelists#poresAbundanceValueCode-F', 239);
INSERT INTO core.thesaurus_desc_element VALUES ('Many', 'http://w3id.org/glosis/model/v1.0.0/codelists#poresAbundanceValueCode-M', 240);
INSERT INTO core.thesaurus_desc_element VALUES ('None', 'http://w3id.org/glosis/model/v1.0.0/codelists#poresAbundanceValueCode-N', 241);
INSERT INTO core.thesaurus_desc_element VALUES ('Very few', 'http://w3id.org/glosis/model/v1.0.0/codelists#poresAbundanceValueCode-V', 242);
INSERT INTO core.thesaurus_desc_element VALUES ('Very low', 'http://w3id.org/glosis/model/v1.0.0/codelists#porosityClassValueCode-1', 243);
INSERT INTO core.thesaurus_desc_element VALUES ('Low', 'http://w3id.org/glosis/model/v1.0.0/codelists#porosityClassValueCode-2', 244);
INSERT INTO core.thesaurus_desc_element VALUES ('Medium', 'http://w3id.org/glosis/model/v1.0.0/codelists#porosityClassValueCode-3', 245);
INSERT INTO core.thesaurus_desc_element VALUES ('High', 'http://w3id.org/glosis/model/v1.0.0/codelists#porosityClassValueCode-4', 246);
INSERT INTO core.thesaurus_desc_element VALUES ('Very high', 'http://w3id.org/glosis/model/v1.0.0/codelists#porosityClassValueCode-5', 247);
INSERT INTO core.thesaurus_desc_element VALUES ('Common', 'http://w3id.org/glosis/model/v1.0.0/codelists#rootsAbundanceValueCode-C', 248);
INSERT INTO core.thesaurus_desc_element VALUES ('Few', 'http://w3id.org/glosis/model/v1.0.0/codelists#rootsAbundanceValueCode-F', 249);
INSERT INTO core.thesaurus_desc_element VALUES ('Many', 'http://w3id.org/glosis/model/v1.0.0/codelists#rootsAbundanceValueCode-M', 250);
INSERT INTO core.thesaurus_desc_element VALUES ('None', 'http://w3id.org/glosis/model/v1.0.0/codelists#rootsAbundanceValueCode-N', 251);
INSERT INTO core.thesaurus_desc_element VALUES ('Very few', 'http://w3id.org/glosis/model/v1.0.0/codelists#rootsAbundanceValueCode-V', 252);
INSERT INTO core.thesaurus_desc_element VALUES ('Extremely salty', 'http://w3id.org/glosis/model/v1.0.0/codelists#saltContentValueCode-EX', 253);
INSERT INTO core.thesaurus_desc_element VALUES ('Moderately salty', 'http://w3id.org/glosis/model/v1.0.0/codelists#saltContentValueCode-MO', 254);
INSERT INTO core.thesaurus_desc_element VALUES ('(nearly)Not salty', 'http://w3id.org/glosis/model/v1.0.0/codelists#saltContentValueCode-N', 255);
INSERT INTO core.thesaurus_desc_element VALUES ('Slightly salty', 'http://w3id.org/glosis/model/v1.0.0/codelists#saltContentValueCode-SL', 256);
INSERT INTO core.thesaurus_desc_element VALUES ('Strongly salty', 'http://w3id.org/glosis/model/v1.0.0/codelists#saltContentValueCode-ST', 257);
INSERT INTO core.thesaurus_desc_element VALUES ('Very strongly salty', 'http://w3id.org/glosis/model/v1.0.0/codelists#saltContentValueCode-VST', 258);
INSERT INTO core.thesaurus_desc_element VALUES ('Coarse sand', 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-CS', 259);
INSERT INTO core.thesaurus_desc_element VALUES ('Coarse sandy loam', 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-CSL', 260);
INSERT INTO core.thesaurus_desc_element VALUES ('Fine sand', 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-FS', 261);
INSERT INTO core.thesaurus_desc_element VALUES ('Fine sandy loam', 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-FSL', 262);
INSERT INTO core.thesaurus_desc_element VALUES ('Loamy coarse sand', 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-LCS', 263);
INSERT INTO core.thesaurus_desc_element VALUES ('Loamy fine sand', 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-LFS', 264);
INSERT INTO core.thesaurus_desc_element VALUES ('Loamy very fine sand', 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-LVFS', 265);
INSERT INTO core.thesaurus_desc_element VALUES ('Medium sand', 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-MS', 266);
INSERT INTO core.thesaurus_desc_element VALUES ('Sand, unsorted', 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-US', 267);
INSERT INTO core.thesaurus_desc_element VALUES ('Very fine sand', 'http://w3id.org/glosis/model/v1.0.0/codelists#sandyTextureValueCode-VFS', 268);
INSERT INTO core.thesaurus_desc_element VALUES ('Non-sticky', 'http://w3id.org/glosis/model/v1.0.0/codelists#stickinessValueCode-NST', 269);
INSERT INTO core.thesaurus_desc_element VALUES ('slightly sticky to sticky', 'http://w3id.org/glosis/model/v1.0.0/codelists#stickinessValueCode-SSS', 270);
INSERT INTO core.thesaurus_desc_element VALUES ('Slightly sticky', 'http://w3id.org/glosis/model/v1.0.0/codelists#stickinessValueCode-SST', 271);
INSERT INTO core.thesaurus_desc_element VALUES ('Sticky', 'http://w3id.org/glosis/model/v1.0.0/codelists#stickinessValueCode-ST', 272);
INSERT INTO core.thesaurus_desc_element VALUES ('sticky to very sticky', 'http://w3id.org/glosis/model/v1.0.0/codelists#stickinessValueCode-SVS', 273);
INSERT INTO core.thesaurus_desc_element VALUES ('Very sticky', 'http://w3id.org/glosis/model/v1.0.0/codelists#stickinessValueCode-VST', 274);
INSERT INTO core.thesaurus_desc_element VALUES ('Moderate', 'http://w3id.org/glosis/model/v1.0.0/codelists#structureGradeValueCode-MO', 275);
INSERT INTO core.thesaurus_desc_element VALUES ('Moderate to strong', 'http://w3id.org/glosis/model/v1.0.0/codelists#structureGradeValueCode-MS', 276);
INSERT INTO core.thesaurus_desc_element VALUES ('Strong', 'http://w3id.org/glosis/model/v1.0.0/codelists#structureGradeValueCode-ST', 277);
INSERT INTO core.thesaurus_desc_element VALUES ('Weak', 'http://w3id.org/glosis/model/v1.0.0/codelists#structureGradeValueCode-WE', 278);
INSERT INTO core.thesaurus_desc_element VALUES ('Weak to moderate', 'http://w3id.org/glosis/model/v1.0.0/codelists#structureGradeValueCode-WM', 279);
INSERT INTO core.thesaurus_desc_element VALUES ('Coarse/thick', 'http://w3id.org/glosis/model/v1.0.0/codelists#structureSizeValueCode-CO', 280);
INSERT INTO core.thesaurus_desc_element VALUES ('Extremely coarse', 'http://w3id.org/glosis/model/v1.0.0/codelists#structureSizeValueCode-EC', 281);
INSERT INTO core.thesaurus_desc_element VALUES ('Fine/thin', 'http://w3id.org/glosis/model/v1.0.0/codelists#structureSizeValueCode-FI', 282);
INSERT INTO core.thesaurus_desc_element VALUES ('Medium', 'http://w3id.org/glosis/model/v1.0.0/codelists#structureSizeValueCode-ME', 283);
INSERT INTO core.thesaurus_desc_element VALUES ('Very coarse/thick', 'http://w3id.org/glosis/model/v1.0.0/codelists#structureSizeValueCode-VC', 284);
INSERT INTO core.thesaurus_desc_element VALUES ('Very fine/thin', 'http://w3id.org/glosis/model/v1.0.0/codelists#structureSizeValueCode-VF', 285);
INSERT INTO core.thesaurus_desc_element VALUES ('Vesicular', 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsClassificationValueCode-B', 286);
INSERT INTO core.thesaurus_desc_element VALUES ('Channels', 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsClassificationValueCode-C', 287);
INSERT INTO core.thesaurus_desc_element VALUES ('Interstitial', 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsClassificationValueCode-I', 288);
INSERT INTO core.thesaurus_desc_element VALUES ('Planes', 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsClassificationValueCode-P', 289);
INSERT INTO core.thesaurus_desc_element VALUES ('Vughs', 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsClassificationValueCode-V', 290);
INSERT INTO core.thesaurus_desc_element VALUES ('Coarse', 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-C', 291);
INSERT INTO core.thesaurus_desc_element VALUES ('Fine', 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-F', 292);
INSERT INTO core.thesaurus_desc_element VALUES ('fine and very fine', 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-FF', 293);
INSERT INTO core.thesaurus_desc_element VALUES ('fine and medium', 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-FM', 294);
INSERT INTO core.thesaurus_desc_element VALUES ('Medium', 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-M', 295);
INSERT INTO core.thesaurus_desc_element VALUES ('medium and coarse', 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-MC', 296);
INSERT INTO core.thesaurus_desc_element VALUES ('Very fine', 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-V', 297);
INSERT INTO core.thesaurus_desc_element VALUES ('Very coarse', 'http://w3id.org/glosis/model/v1.0.0/codelists#voidsDiameterValueCode-VC', 298);
INSERT INTO core.thesaurus_desc_element VALUES ('Deep 10–20', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDepthValueCode-D', 299);
INSERT INTO core.thesaurus_desc_element VALUES ('Medium 2–10', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDepthValueCode-M', 300);
INSERT INTO core.thesaurus_desc_element VALUES ('Surface < 2', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDepthValueCode-S', 301);
INSERT INTO core.thesaurus_desc_element VALUES ('Very deep > 20', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDepthValueCode-V', 302);
INSERT INTO core.thesaurus_desc_element VALUES ('Very closely spaced < 0.2', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-C', 303);
INSERT INTO core.thesaurus_desc_element VALUES ('Closely spaced 0.2–0.5', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-D', 304);
INSERT INTO core.thesaurus_desc_element VALUES ('Moderately widely spaced 0.5–2', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-M', 305);
INSERT INTO core.thesaurus_desc_element VALUES ('Very widely spaced > 5', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-V', 306);
INSERT INTO core.thesaurus_desc_element VALUES ('Widely spaced 2–5', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-W', 307);
INSERT INTO core.thesaurus_desc_element VALUES ('Extremely wide > 10cm', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-E', 308);
INSERT INTO core.thesaurus_desc_element VALUES ('Fine < 1cm', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-F', 309);
INSERT INTO core.thesaurus_desc_element VALUES ('Medium 1cm–2cm', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-M', 310);
INSERT INTO core.thesaurus_desc_element VALUES ('Very wide 5cm–10cm', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-V', 311);
INSERT INTO core.thesaurus_desc_element VALUES ('Wide 2cm–5cm', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-W', 312);
INSERT INTO core.thesaurus_desc_element VALUES ('Abundant', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-A', 313);
INSERT INTO core.thesaurus_desc_element VALUES ('Common ', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-C', 314);
INSERT INTO core.thesaurus_desc_element VALUES ('Dominant', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-D', 315);
INSERT INTO core.thesaurus_desc_element VALUES ('Few', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-F', 316);
INSERT INTO core.thesaurus_desc_element VALUES ('Many', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-M', 317);
INSERT INTO core.thesaurus_desc_element VALUES ('None', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-N', 318);
INSERT INTO core.thesaurus_desc_element VALUES ('Very few', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-V', 319);
INSERT INTO core.thesaurus_desc_element VALUES ('Boulders', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-B', 320);
INSERT INTO core.thesaurus_desc_element VALUES ('Coarse gravel', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-C', 321);
INSERT INTO core.thesaurus_desc_element VALUES ('Fine gravel', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-F', 322);
INSERT INTO core.thesaurus_desc_element VALUES ('Large boulders', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-L', 323);
INSERT INTO core.thesaurus_desc_element VALUES ('Medium gravel', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-M', 324);
INSERT INTO core.thesaurus_desc_element VALUES ('Stones', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-S', 325);
INSERT INTO core.thesaurus_desc_element VALUES ('Abundant ', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-A', 326);
INSERT INTO core.thesaurus_desc_element VALUES ('Common', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-C', 327);
INSERT INTO core.thesaurus_desc_element VALUES ('Dominant', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-D', 328);
INSERT INTO core.thesaurus_desc_element VALUES ('Few', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-F', 329);
INSERT INTO core.thesaurus_desc_element VALUES ('Many', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-M', 330);
INSERT INTO core.thesaurus_desc_element VALUES ('None', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-N', 331);
INSERT INTO core.thesaurus_desc_element VALUES ('Stone line', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-S', 332);
INSERT INTO core.thesaurus_desc_element VALUES ('Very few', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-V', 333);
INSERT INTO core.thesaurus_desc_element VALUES ('Angular', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockShapeValueCode-A', 334);
INSERT INTO core.thesaurus_desc_element VALUES ('Flat', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockShapeValueCode-F', 335);
INSERT INTO core.thesaurus_desc_element VALUES ('Rounded', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockShapeValueCode-R', 336);
INSERT INTO core.thesaurus_desc_element VALUES ('Subrounded', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockShapeValueCode-S', 337);
INSERT INTO core.thesaurus_desc_element VALUES ('Artefacts', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-A', 338);
INSERT INTO core.thesaurus_desc_element VALUES ('Coarse artefacts', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-AC', 339);
INSERT INTO core.thesaurus_desc_element VALUES ('Fine artefacts', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-AF', 340);
INSERT INTO core.thesaurus_desc_element VALUES ('Medium artefacts', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-AM', 341);
INSERT INTO core.thesaurus_desc_element VALUES ('Very fine artefacts', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-AV', 342);
INSERT INTO core.thesaurus_desc_element VALUES ('Boulders and large boulders', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-BL', 343);
INSERT INTO core.thesaurus_desc_element VALUES ('Combination of classes', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-C', 344);
INSERT INTO core.thesaurus_desc_element VALUES ('Coarse gravel and stones', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-CS', 345);
INSERT INTO core.thesaurus_desc_element VALUES ('Fine and medium gravel/artefacts', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-FM', 346);
INSERT INTO core.thesaurus_desc_element VALUES ('Medium and coarse gravel/artefacts', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-MC', 347);
INSERT INTO core.thesaurus_desc_element VALUES ('Rock fragments', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-R', 348);
INSERT INTO core.thesaurus_desc_element VALUES ('Boulders', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RB', 349);
INSERT INTO core.thesaurus_desc_element VALUES ('Coarse gravel', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RC', 350);
INSERT INTO core.thesaurus_desc_element VALUES ('Fine gravel', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RF', 351);
INSERT INTO core.thesaurus_desc_element VALUES ('Large boulders', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RL', 352);
INSERT INTO core.thesaurus_desc_element VALUES ('Medium gravel', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RM', 353);
INSERT INTO core.thesaurus_desc_element VALUES ('Stones', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RS', 354);
INSERT INTO core.thesaurus_desc_element VALUES ('Stones and boulders', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-SB', 355);
INSERT INTO core.thesaurus_desc_element VALUES ('Fresh or slightly weathered', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-F', 356);
INSERT INTO core.thesaurus_desc_element VALUES ('Strongly weathered', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-S', 357);
INSERT INTO core.thesaurus_desc_element VALUES ('Weathered', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-W', 358);


--
-- Data for Name: thesaurus_desc_plot; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.thesaurus_desc_plot VALUES ('Cereals', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce', 1);
INSERT INTO core.thesaurus_desc_plot VALUES ('Mass movement', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-M', 68);
INSERT INTO core.thesaurus_desc_plot VALUES ('Barley', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_Ba', 2);
INSERT INTO core.thesaurus_desc_plot VALUES ('Maize', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_Ma', 3);
INSERT INTO core.thesaurus_desc_plot VALUES ('Millet', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_Mi', 4);
INSERT INTO core.thesaurus_desc_plot VALUES ('Oats', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_Oa', 5);
INSERT INTO core.thesaurus_desc_plot VALUES ('Rice, paddy', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_Pa', 6);
INSERT INTO core.thesaurus_desc_plot VALUES ('Rice, dry', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_Ri', 7);
INSERT INTO core.thesaurus_desc_plot VALUES ('Rye', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_Ry', 8);
INSERT INTO core.thesaurus_desc_plot VALUES ('Sorghum', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_So', 9);
INSERT INTO core.thesaurus_desc_plot VALUES ('Wheat', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ce_Wh', 10);
INSERT INTO core.thesaurus_desc_plot VALUES ('Fibre crops', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fi', 11);
INSERT INTO core.thesaurus_desc_plot VALUES ('Cotton', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fi_Co', 12);
INSERT INTO core.thesaurus_desc_plot VALUES ('Jute', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fi_Ju', 13);
INSERT INTO core.thesaurus_desc_plot VALUES ('Fodder plants', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fo', 14);
INSERT INTO core.thesaurus_desc_plot VALUES ('Alfalfa', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fo_Al', 15);
INSERT INTO core.thesaurus_desc_plot VALUES ('Clover', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fo_Cl', 16);
INSERT INTO core.thesaurus_desc_plot VALUES ('Grasses', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fo_Gr', 17);
INSERT INTO core.thesaurus_desc_plot VALUES ('Hay', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fo_Ha', 18);
INSERT INTO core.thesaurus_desc_plot VALUES ('Leguminous', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fo_Le', 19);
INSERT INTO core.thesaurus_desc_plot VALUES ('Maize', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fo_Ma', 20);
INSERT INTO core.thesaurus_desc_plot VALUES ('Pumpkins', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fo_Pu', 21);
INSERT INTO core.thesaurus_desc_plot VALUES ('Fruits and melons', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fr', 22);
INSERT INTO core.thesaurus_desc_plot VALUES ('Apples', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fr_Ap', 23);
INSERT INTO core.thesaurus_desc_plot VALUES ('Bananas', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fr_Ba', 24);
INSERT INTO core.thesaurus_desc_plot VALUES ('Citrus', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fr_Ci', 25);
INSERT INTO core.thesaurus_desc_plot VALUES ('Grapes, Wine, Raisins', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fr_Gr', 26);
INSERT INTO core.thesaurus_desc_plot VALUES ('Mangoes', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fr_Ma', 27);
INSERT INTO core.thesaurus_desc_plot VALUES ('Melons', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Fr_Me', 28);
INSERT INTO core.thesaurus_desc_plot VALUES ('Semi-luxury foods and tobacco', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Lu', 29);
INSERT INTO core.thesaurus_desc_plot VALUES ('Cocoa', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Lu_Cc', 30);
INSERT INTO core.thesaurus_desc_plot VALUES ('Coffee', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Lu_Co', 31);
INSERT INTO core.thesaurus_desc_plot VALUES ('Tea', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Lu_Te', 32);
INSERT INTO core.thesaurus_desc_plot VALUES ('Tobacco', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Lu_To', 33);
INSERT INTO core.thesaurus_desc_plot VALUES ('Oilcrops', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi', 34);
INSERT INTO core.thesaurus_desc_plot VALUES ('Coconuts', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi_Cc', 35);
INSERT INTO core.thesaurus_desc_plot VALUES ('Groundnuts', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi_Gr', 36);
INSERT INTO core.thesaurus_desc_plot VALUES ('Linseed', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi_Li', 37);
INSERT INTO core.thesaurus_desc_plot VALUES ('Oil-palm', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi_Op', 38);
INSERT INTO core.thesaurus_desc_plot VALUES ('Rape', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi_Ra', 39);
INSERT INTO core.thesaurus_desc_plot VALUES ('Sesame', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi_Se', 40);
INSERT INTO core.thesaurus_desc_plot VALUES ('Soybeans', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi_So', 41);
INSERT INTO core.thesaurus_desc_plot VALUES ('Sunflower', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Oi_Su', 42);
INSERT INTO core.thesaurus_desc_plot VALUES ('Olives', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ol', 43);
INSERT INTO core.thesaurus_desc_plot VALUES ('Other crops', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ot', 44);
INSERT INTO core.thesaurus_desc_plot VALUES ('Palm (fibres, kernels)', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ot_Pa', 45);
INSERT INTO core.thesaurus_desc_plot VALUES ('Rubber', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ot_Ru', 46);
INSERT INTO core.thesaurus_desc_plot VALUES ('Sugar cane', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ot_Sc', 47);
INSERT INTO core.thesaurus_desc_plot VALUES ('Pulses', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Pu', 48);
INSERT INTO core.thesaurus_desc_plot VALUES ('Beans', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Pu_Be', 49);
INSERT INTO core.thesaurus_desc_plot VALUES ('Lentils', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Pu_Le', 50);
INSERT INTO core.thesaurus_desc_plot VALUES ('Peas', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Pu_Pe', 51);
INSERT INTO core.thesaurus_desc_plot VALUES ('Roots and tubers', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ro', 52);
INSERT INTO core.thesaurus_desc_plot VALUES ('Cassava', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ro_Ca', 53);
INSERT INTO core.thesaurus_desc_plot VALUES ('Potatoes', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ro_Po', 54);
INSERT INTO core.thesaurus_desc_plot VALUES ('Sugar beets', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ro_Su', 55);
INSERT INTO core.thesaurus_desc_plot VALUES ('Yams', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ro_Ya', 56);
INSERT INTO core.thesaurus_desc_plot VALUES ('Vegetables', 'http://w3id.org/glosis/model/v1.0.0/codelists#cropClassValueCode-Ve', 57);
INSERT INTO core.thesaurus_desc_plot VALUES ('Active at present', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionActivityPeriodValueCode-A', 58);
INSERT INTO core.thesaurus_desc_plot VALUES ('Active in historical times', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionActivityPeriodValueCode-H', 59);
INSERT INTO core.thesaurus_desc_plot VALUES ('Period of activity not known', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionActivityPeriodValueCode-N', 60);
INSERT INTO core.thesaurus_desc_plot VALUES ('Active in recent past', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionActivityPeriodValueCode-R', 61);
INSERT INTO core.thesaurus_desc_plot VALUES ('Accelerated and natural erosion not distinguished', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionActivityPeriodValueCode-X', 62);
INSERT INTO core.thesaurus_desc_plot VALUES ('Wind (aeolian) erosion or deposition', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-A', 63);
INSERT INTO core.thesaurus_desc_plot VALUES ('Wind deposition', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-AD', 64);
INSERT INTO core.thesaurus_desc_plot VALUES ('Wind erosion and deposition', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-AM', 65);
INSERT INTO core.thesaurus_desc_plot VALUES ('Shifting sands', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-AS', 66);
INSERT INTO core.thesaurus_desc_plot VALUES ('Salt deposition', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-AZ', 67);
INSERT INTO core.thesaurus_desc_plot VALUES ('No evidence of erosion', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-N', 69);
INSERT INTO core.thesaurus_desc_plot VALUES ('Not known', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-NK', 70);
INSERT INTO core.thesaurus_desc_plot VALUES ('Water erosion or deposition', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-W', 71);
INSERT INTO core.thesaurus_desc_plot VALUES ('Water and wind erosion', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WA', 72);
INSERT INTO core.thesaurus_desc_plot VALUES ('Deposition by water', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WD', 73);
INSERT INTO core.thesaurus_desc_plot VALUES ('Gully erosion', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WG', 74);
INSERT INTO core.thesaurus_desc_plot VALUES ('Rill erosion', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WR', 75);
INSERT INTO core.thesaurus_desc_plot VALUES ('Sheet erosion', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WS', 76);
INSERT INTO core.thesaurus_desc_plot VALUES ('Tunnel erosion', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionCategoryValueCode-WT', 77);
INSERT INTO core.thesaurus_desc_plot VALUES ('Extreme', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionDegreeValueCode-E', 78);
INSERT INTO core.thesaurus_desc_plot VALUES ('Moderate', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionDegreeValueCode-M', 79);
INSERT INTO core.thesaurus_desc_plot VALUES ('Slight', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionDegreeValueCode-S', 80);
INSERT INTO core.thesaurus_desc_plot VALUES ('Severe', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionDegreeValueCode-V', 81);
INSERT INTO core.thesaurus_desc_plot VALUES ('0', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionTotalAreaAffectedValueCode-0', 82);
INSERT INTO core.thesaurus_desc_plot VALUES ('0–5', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionTotalAreaAffectedValueCode-1', 83);
INSERT INTO core.thesaurus_desc_plot VALUES ('5–10', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionTotalAreaAffectedValueCode-2', 84);
INSERT INTO core.thesaurus_desc_plot VALUES ('10–25', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionTotalAreaAffectedValueCode-3', 85);
INSERT INTO core.thesaurus_desc_plot VALUES ('25–50', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionTotalAreaAffectedValueCode-4', 86);
INSERT INTO core.thesaurus_desc_plot VALUES ('> 50', 'http://w3id.org/glosis/model/v1.0.0/codelists#erosionTotalAreaAffectedValueCode-5', 87);
INSERT INTO core.thesaurus_desc_plot VALUES ('Archaeological (burial mound, midden)', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-AC', 88);
INSERT INTO core.thesaurus_desc_plot VALUES ('Artificial drainage', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-AD', 89);
INSERT INTO core.thesaurus_desc_plot VALUES ('Borrow pit', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-BP', 90);
INSERT INTO core.thesaurus_desc_plot VALUES ('Burning', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-BR', 91);
INSERT INTO core.thesaurus_desc_plot VALUES ('Bunding', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-BU', 92);
INSERT INTO core.thesaurus_desc_plot VALUES ('Clearing', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-CL', 93);
INSERT INTO core.thesaurus_desc_plot VALUES ('Impact crater', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-CR', 94);
INSERT INTO core.thesaurus_desc_plot VALUES ('Dump (not specified)', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-DU', 95);
INSERT INTO core.thesaurus_desc_plot VALUES ('Application of fertilizers', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-FE', 96);
INSERT INTO core.thesaurus_desc_plot VALUES ('Border irrigation', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-IB', 97);
INSERT INTO core.thesaurus_desc_plot VALUES ('Drip irrigation', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-ID', 98);
INSERT INTO core.thesaurus_desc_plot VALUES ('Furrow irrigation', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-IF', 99);
INSERT INTO core.thesaurus_desc_plot VALUES ('Flood irrigation', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-IP', 100);
INSERT INTO core.thesaurus_desc_plot VALUES ('Sprinkler irrigation', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-IS', 101);
INSERT INTO core.thesaurus_desc_plot VALUES ('Irrigation (not specified)', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-IU', 102);
INSERT INTO core.thesaurus_desc_plot VALUES ('Landfill (also sanitary)', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-LF', 103);
INSERT INTO core.thesaurus_desc_plot VALUES ('Levelling', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-LV', 104);
INSERT INTO core.thesaurus_desc_plot VALUES ('Raised beds (engineering purposes)', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-ME', 105);
INSERT INTO core.thesaurus_desc_plot VALUES ('Mine (surface, including openpit, gravel and quarries)', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-MI', 106);
INSERT INTO core.thesaurus_desc_plot VALUES ('Organic additions (not specified)', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-MO', 107);
INSERT INTO core.thesaurus_desc_plot VALUES ('Plaggen', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-MP', 108);
INSERT INTO core.thesaurus_desc_plot VALUES ('Raised beds (agricultural purposes)', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-MR', 109);
INSERT INTO core.thesaurus_desc_plot VALUES ('Sand additions', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-MS', 110);
INSERT INTO core.thesaurus_desc_plot VALUES ('Mineral additions (not specified)', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-MU', 111);
INSERT INTO core.thesaurus_desc_plot VALUES ('No influence', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-N', 112);
INSERT INTO core.thesaurus_desc_plot VALUES ('Not known', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-NK', 113);
INSERT INTO core.thesaurus_desc_plot VALUES ('Ploughing', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-PL', 114);
INSERT INTO core.thesaurus_desc_plot VALUES ('Pollution', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-PO', 115);
INSERT INTO core.thesaurus_desc_plot VALUES ('Scalped area', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-SA', 116);
INSERT INTO core.thesaurus_desc_plot VALUES ('Surface compaction', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-SC', 117);
INSERT INTO core.thesaurus_desc_plot VALUES ('Terracing', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-TE', 118);
INSERT INTO core.thesaurus_desc_plot VALUES ('Vegetation strongly disturbed', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-VE', 119);
INSERT INTO core.thesaurus_desc_plot VALUES ('Vegetation moderately disturbed', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-VM', 120);
INSERT INTO core.thesaurus_desc_plot VALUES ('Vegetation slightly disturbed', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-VS', 121);
INSERT INTO core.thesaurus_desc_plot VALUES ('Vegetation disturbed (not specified)', 'http://w3id.org/glosis/model/v1.0.0/codelists#humanInfluenceClassValueCode-VU', 122);
INSERT INTO core.thesaurus_desc_plot VALUES ('A = Crop agriculture (cropping)', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-A', 123);
INSERT INTO core.thesaurus_desc_plot VALUES ('Annual field cropping', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AA', 124);
INSERT INTO core.thesaurus_desc_plot VALUES ('Shifting cultivation', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AA1', 125);
INSERT INTO core.thesaurus_desc_plot VALUES ('Fallow system cultivation', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AA2', 126);
INSERT INTO core.thesaurus_desc_plot VALUES ('Ley system cultivation', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AA3', 127);
INSERT INTO core.thesaurus_desc_plot VALUES ('Rainfed arable cultivation', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AA4', 128);
INSERT INTO core.thesaurus_desc_plot VALUES ('Wet rice cultivation', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AA5', 129);
INSERT INTO core.thesaurus_desc_plot VALUES ('Irrigated cultivation', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AA6', 130);
INSERT INTO core.thesaurus_desc_plot VALUES ('Perennial field cropping', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AP', 131);
INSERT INTO core.thesaurus_desc_plot VALUES ('Non-irrigated cultivation', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AP1', 132);
INSERT INTO core.thesaurus_desc_plot VALUES ('Irrigated cultivation', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AP2', 133);
INSERT INTO core.thesaurus_desc_plot VALUES ('Tree and shrub cropping', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AT', 134);
INSERT INTO core.thesaurus_desc_plot VALUES ('Non-irrigated tree crop cultivation', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AT1', 135);
INSERT INTO core.thesaurus_desc_plot VALUES ('Irrigated tree crop cultivation', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AT2', 136);
INSERT INTO core.thesaurus_desc_plot VALUES ('Non-irrigated shrub crop cultivation', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AT3', 137);
INSERT INTO core.thesaurus_desc_plot VALUES ('Irrigated shrub crop cultivation', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-AT4', 138);
INSERT INTO core.thesaurus_desc_plot VALUES ('F = Forestry', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-F', 139);
INSERT INTO core.thesaurus_desc_plot VALUES ('Natural forest and woodland', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-FN', 140);
INSERT INTO core.thesaurus_desc_plot VALUES ('Selective felling', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-FN1', 141);
INSERT INTO core.thesaurus_desc_plot VALUES ('Clear felling', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-FN2', 142);
INSERT INTO core.thesaurus_desc_plot VALUES ('Plantation forestry', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-FP', 143);
INSERT INTO core.thesaurus_desc_plot VALUES ('H = Animal husbandry', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-H', 144);
INSERT INTO core.thesaurus_desc_plot VALUES ('Extensive grazing', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-HE', 145);
INSERT INTO core.thesaurus_desc_plot VALUES ('Nomadism', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-HE1', 146);
INSERT INTO core.thesaurus_desc_plot VALUES ('Semi-nomadism', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-HE2', 147);
INSERT INTO core.thesaurus_desc_plot VALUES ('Ranching', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-HE3', 148);
INSERT INTO core.thesaurus_desc_plot VALUES ('Intensive grazing', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-HI', 149);
INSERT INTO core.thesaurus_desc_plot VALUES ('Animal production', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-HI1', 150);
INSERT INTO core.thesaurus_desc_plot VALUES ('Dairying', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-HI2', 151);
INSERT INTO core.thesaurus_desc_plot VALUES ('M = Mixed farming', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-M', 152);
INSERT INTO core.thesaurus_desc_plot VALUES ('Agroforestry', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-MF', 153);
INSERT INTO core.thesaurus_desc_plot VALUES ('Agropastoralism', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-MP', 154);
INSERT INTO core.thesaurus_desc_plot VALUES ('Other land uses', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-Oi', 155);
INSERT INTO core.thesaurus_desc_plot VALUES ('P = Nature protection', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-P', 156);
INSERT INTO core.thesaurus_desc_plot VALUES ('Degradation control', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-PD', 157);
INSERT INTO core.thesaurus_desc_plot VALUES ('Without interference', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-PD1', 158);
INSERT INTO core.thesaurus_desc_plot VALUES ('With interference', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-PD2', 159);
INSERT INTO core.thesaurus_desc_plot VALUES ('Nature and game preservation', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-PN', 160);
INSERT INTO core.thesaurus_desc_plot VALUES ('Reserves', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-PN1', 161);
INSERT INTO core.thesaurus_desc_plot VALUES ('Parks', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-PN2', 162);
INSERT INTO core.thesaurus_desc_plot VALUES ('Wildlife management', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-PN3', 163);
INSERT INTO core.thesaurus_desc_plot VALUES ('S = Settlement, industry', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-S', 164);
INSERT INTO core.thesaurus_desc_plot VALUES ('Recreational use', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-SC', 165);
INSERT INTO core.thesaurus_desc_plot VALUES ('Disposal sites', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-SD', 166);
INSERT INTO core.thesaurus_desc_plot VALUES ('Industrial use', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-SI', 167);
INSERT INTO core.thesaurus_desc_plot VALUES ('Residential use', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-SR', 168);
INSERT INTO core.thesaurus_desc_plot VALUES ('Transport', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-ST', 169);
INSERT INTO core.thesaurus_desc_plot VALUES ('Excavations', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-SX', 170);
INSERT INTO core.thesaurus_desc_plot VALUES ('Not used and not managed', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-U', 171);
INSERT INTO core.thesaurus_desc_plot VALUES ('Military area', 'http://w3id.org/glosis/model/v1.0.0/codelists#landUseClassValueCode-Y', 172);
INSERT INTO core.thesaurus_desc_plot VALUES ('Cuesta-shaped', 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-CU', 173);
INSERT INTO core.thesaurus_desc_plot VALUES ('Dome-shaped', 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-DO', 174);
INSERT INTO core.thesaurus_desc_plot VALUES ('Dune-shaped', 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-DU', 175);
INSERT INTO core.thesaurus_desc_plot VALUES ('With intermontane plains (occupying > 15%) ', 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-IM', 176);
INSERT INTO core.thesaurus_desc_plot VALUES ('Inselberg covered (occupying > 1% of level land) ', 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-IN', 177);
INSERT INTO core.thesaurus_desc_plot VALUES ('Strong karst', 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-KA', 178);
INSERT INTO core.thesaurus_desc_plot VALUES ('Ridged ', 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-RI', 179);
INSERT INTO core.thesaurus_desc_plot VALUES ('Terraced', 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-TE', 180);
INSERT INTO core.thesaurus_desc_plot VALUES ('With wetlands (occupying > 15%)', 'http://w3id.org/glosis/model/v1.0.0/codelists#landformComplexValueCode-WE', 181);
INSERT INTO core.thesaurus_desc_plot VALUES ('igneous rock', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-I', 182);
INSERT INTO core.thesaurus_desc_plot VALUES ('acid igneous', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA', 183);
INSERT INTO core.thesaurus_desc_plot VALUES ('diorite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA1', 184);
INSERT INTO core.thesaurus_desc_plot VALUES ('grano-diorite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA2', 185);
INSERT INTO core.thesaurus_desc_plot VALUES ('quartz-diorite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA3', 186);
INSERT INTO core.thesaurus_desc_plot VALUES ('rhyolite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IA4', 187);
INSERT INTO core.thesaurus_desc_plot VALUES ('basic igneous', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IB', 188);
INSERT INTO core.thesaurus_desc_plot VALUES ('gabbro', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IB1', 189);
INSERT INTO core.thesaurus_desc_plot VALUES ('basalt', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IB2', 190);
INSERT INTO core.thesaurus_desc_plot VALUES ('dolerite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IB3', 191);
INSERT INTO core.thesaurus_desc_plot VALUES ('intermediate igneous', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-II', 192);
INSERT INTO core.thesaurus_desc_plot VALUES ('andesite, trachyte, phonolite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-II1', 193);
INSERT INTO core.thesaurus_desc_plot VALUES ('diorite-syenite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-II2', 194);
INSERT INTO core.thesaurus_desc_plot VALUES ('pyroclastic', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP', 195);
INSERT INTO core.thesaurus_desc_plot VALUES ('tuff, tuffite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP1', 196);
INSERT INTO core.thesaurus_desc_plot VALUES ('volcanic scoria/breccia', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP2', 197);
INSERT INTO core.thesaurus_desc_plot VALUES ('volcanic ash', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP3', 198);
INSERT INTO core.thesaurus_desc_plot VALUES ('ignimbrite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IP4', 199);
INSERT INTO core.thesaurus_desc_plot VALUES ('ultrabasic igneous', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IU', 200);
INSERT INTO core.thesaurus_desc_plot VALUES ('peridotite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IU1', 201);
INSERT INTO core.thesaurus_desc_plot VALUES ('pyroxenite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IU2', 202);
INSERT INTO core.thesaurus_desc_plot VALUES ('ilmenite, magnetite, ironstone, serpentine', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-IU3', 203);
INSERT INTO core.thesaurus_desc_plot VALUES ('metamorphic rock', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-M', 204);
INSERT INTO core.thesaurus_desc_plot VALUES ('acid metamorphic', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA', 205);
INSERT INTO core.thesaurus_desc_plot VALUES ('quartzite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA1', 206);
INSERT INTO core.thesaurus_desc_plot VALUES ('gneiss, migmatite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA2', 207);
INSERT INTO core.thesaurus_desc_plot VALUES ('slate, phyllite (pelitic rocks)', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA3', 208);
INSERT INTO core.thesaurus_desc_plot VALUES ('schist', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MA4', 209);
INSERT INTO core.thesaurus_desc_plot VALUES ('basic metamorphic', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB', 210);
INSERT INTO core.thesaurus_desc_plot VALUES ('slate, phyllite (pelitic rocks)', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB1', 211);
INSERT INTO core.thesaurus_desc_plot VALUES ('(green)schist', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB2', 212);
INSERT INTO core.thesaurus_desc_plot VALUES ('gneiss rich in Fe–Mg minerals', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB3', 213);
INSERT INTO core.thesaurus_desc_plot VALUES ('metamorphic limestone (marble)', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB4', 214);
INSERT INTO core.thesaurus_desc_plot VALUES ('amphibolite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB5', 215);
INSERT INTO core.thesaurus_desc_plot VALUES ('eclogite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MB6', 216);
INSERT INTO core.thesaurus_desc_plot VALUES ('ultrabasic metamorphic', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MU', 217);
INSERT INTO core.thesaurus_desc_plot VALUES ('serpentinite, greenstone', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-MU1', 218);
INSERT INTO core.thesaurus_desc_plot VALUES ('sedimentary rock (consolidated)', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-S', 219);
INSERT INTO core.thesaurus_desc_plot VALUES ('clastic sediments', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC', 220);
INSERT INTO core.thesaurus_desc_plot VALUES ('conglomerate, breccia', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC1', 221);
INSERT INTO core.thesaurus_desc_plot VALUES ('sandstone, greywacke, arkose', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC2', 222);
INSERT INTO core.thesaurus_desc_plot VALUES ('silt-, mud-, claystone', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC3', 223);
INSERT INTO core.thesaurus_desc_plot VALUES ('shale', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC4', 224);
INSERT INTO core.thesaurus_desc_plot VALUES ('ironstone', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SC5', 225);
INSERT INTO core.thesaurus_desc_plot VALUES ('evaporites', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SE', 226);
INSERT INTO core.thesaurus_desc_plot VALUES ('anhydrite, gypsum', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SE1', 227);
INSERT INTO core.thesaurus_desc_plot VALUES ('halite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SE2', 228);
INSERT INTO core.thesaurus_desc_plot VALUES ('carbonatic, organic', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SO', 229);
INSERT INTO core.thesaurus_desc_plot VALUES ('limestone, other carbonate rock', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SO1', 230);
INSERT INTO core.thesaurus_desc_plot VALUES ('marl and other mixtures', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SO2', 231);
INSERT INTO core.thesaurus_desc_plot VALUES ('coals, bitumen and related rocks', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-SO3', 232);
INSERT INTO core.thesaurus_desc_plot VALUES ('sedimentary rock (unconsolidated)', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-U', 233);
INSERT INTO core.thesaurus_desc_plot VALUES ('anthropogenic/technogenic', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UA', 234);
INSERT INTO core.thesaurus_desc_plot VALUES ('redeposited natural material', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UA1', 235);
INSERT INTO core.thesaurus_desc_plot VALUES ('industrial/artisanal deposits', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UA2', 236);
INSERT INTO core.thesaurus_desc_plot VALUES ('colluvial', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UC', 237);
INSERT INTO core.thesaurus_desc_plot VALUES ('slope deposits', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UC1', 238);
INSERT INTO core.thesaurus_desc_plot VALUES ('lahar', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UC2', 239);
INSERT INTO core.thesaurus_desc_plot VALUES ('eolian', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UE', 240);
INSERT INTO core.thesaurus_desc_plot VALUES ('loess', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UE1', 241);
INSERT INTO core.thesaurus_desc_plot VALUES ('sand', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UE2', 242);
INSERT INTO core.thesaurus_desc_plot VALUES ('fluvial', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UF', 243);
INSERT INTO core.thesaurus_desc_plot VALUES ('sand and gravel', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UF1', 244);
INSERT INTO core.thesaurus_desc_plot VALUES ('clay, silt and loam', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UF2', 245);
INSERT INTO core.thesaurus_desc_plot VALUES ('glacial', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UG', 246);
INSERT INTO core.thesaurus_desc_plot VALUES ('moraine', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UG1', 247);
INSERT INTO core.thesaurus_desc_plot VALUES ('UG2 glacio-fluvial sand', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UG2', 248);
INSERT INTO core.thesaurus_desc_plot VALUES ('UG3 glacio-fluvial gravel', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UG3', 249);
INSERT INTO core.thesaurus_desc_plot VALUES ('kryogenic', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UK', 250);
INSERT INTO core.thesaurus_desc_plot VALUES ('periglacial rock debris', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UK1', 251);
INSERT INTO core.thesaurus_desc_plot VALUES ('periglacial solifluction layer', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UK2', 252);
INSERT INTO core.thesaurus_desc_plot VALUES ('lacustrine', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UL', 253);
INSERT INTO core.thesaurus_desc_plot VALUES ('sand', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UL1', 254);
INSERT INTO core.thesaurus_desc_plot VALUES ('silt and clay', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UL2', 255);
INSERT INTO core.thesaurus_desc_plot VALUES ('marine, estuarine', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UM', 256);
INSERT INTO core.thesaurus_desc_plot VALUES ('sand', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UM1', 257);
INSERT INTO core.thesaurus_desc_plot VALUES ('clay and silt', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UM2', 258);
INSERT INTO core.thesaurus_desc_plot VALUES ('organic', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UO', 259);
INSERT INTO core.thesaurus_desc_plot VALUES ('rainwater-fed moor peat', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UO1', 260);
INSERT INTO core.thesaurus_desc_plot VALUES ('groundwater-fed bog peat', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UO2', 261);
INSERT INTO core.thesaurus_desc_plot VALUES ('weathered residuum', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UR', 262);
INSERT INTO core.thesaurus_desc_plot VALUES ('bauxite, laterite', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UR1', 263);
INSERT INTO core.thesaurus_desc_plot VALUES ('unspecified deposits', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU', 264);
INSERT INTO core.thesaurus_desc_plot VALUES ('clay', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU1', 265);
INSERT INTO core.thesaurus_desc_plot VALUES ('loam and silt', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU2', 266);
INSERT INTO core.thesaurus_desc_plot VALUES ('sand', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU3', 267);
INSERT INTO core.thesaurus_desc_plot VALUES ('gravelly sand', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU4', 268);
INSERT INTO core.thesaurus_desc_plot VALUES ('gravel, broken rock', 'http://w3id.org/glosis/model/v1.0.0/codelists#lithologyValueCode-UU5', 269);
INSERT INTO core.thesaurus_desc_plot VALUES ('level land ', 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-L', 270);
INSERT INTO core.thesaurus_desc_plot VALUES ('depression', 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-LD', 271);
INSERT INTO core.thesaurus_desc_plot VALUES ('plateau', 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-LL', 272);
INSERT INTO core.thesaurus_desc_plot VALUES ('plain', 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-LP', 273);
INSERT INTO core.thesaurus_desc_plot VALUES ('valley floor', 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-LV', 274);
INSERT INTO core.thesaurus_desc_plot VALUES ('sloping land ', 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-S', 275);
INSERT INTO core.thesaurus_desc_plot VALUES ('medium-gradient escarpment zone', 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-SE', 276);
INSERT INTO core.thesaurus_desc_plot VALUES ('medium-gradient hill', 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-SH', 277);
INSERT INTO core.thesaurus_desc_plot VALUES ('medium-gradient mountain', 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-SM', 278);
INSERT INTO core.thesaurus_desc_plot VALUES ('dissected plain', 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-SP', 279);
INSERT INTO core.thesaurus_desc_plot VALUES ('medium-gradient valley', 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-SV', 280);
INSERT INTO core.thesaurus_desc_plot VALUES ('steep land', 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-T', 281);
INSERT INTO core.thesaurus_desc_plot VALUES ('high-gradient escarpment zone', 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-TE', 282);
INSERT INTO core.thesaurus_desc_plot VALUES ('high-gradient hill', 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-TH', 283);
INSERT INTO core.thesaurus_desc_plot VALUES ('high-gradient mountain', 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-TM', 284);
INSERT INTO core.thesaurus_desc_plot VALUES ('high-gradient valley', 'http://w3id.org/glosis/model/v1.0.0/codelists#majorLandFormValueCode-TV', 285);
INSERT INTO core.thesaurus_desc_plot VALUES ('Bottom (drainage line)', 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-BOdl', 286);
INSERT INTO core.thesaurus_desc_plot VALUES ('Bottom (flat)', 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-BOf', 287);
INSERT INTO core.thesaurus_desc_plot VALUES ('Crest (summit)', 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-CR', 288);
INSERT INTO core.thesaurus_desc_plot VALUES ('Higher part (rise)', 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-HI', 289);
INSERT INTO core.thesaurus_desc_plot VALUES ('Intermediate part (talf)', 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-IN', 290);
INSERT INTO core.thesaurus_desc_plot VALUES ('Lower part (and dip)', 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-LO', 291);
INSERT INTO core.thesaurus_desc_plot VALUES ('Lower slope (foot slope)', 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-LS', 292);
INSERT INTO core.thesaurus_desc_plot VALUES ('Middle slope (back slope) ', 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-MS', 293);
INSERT INTO core.thesaurus_desc_plot VALUES ('Toe slope', 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-TS', 294);
INSERT INTO core.thesaurus_desc_plot VALUES ('Upper slope (shoulder) ', 'http://w3id.org/glosis/model/v1.0.0/codelists#physiographyValueCode-UP', 295);
INSERT INTO core.thesaurus_desc_plot VALUES ('Abundant', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsCoverValueCode-A', 296);
INSERT INTO core.thesaurus_desc_plot VALUES ('Common', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsCoverValueCode-C', 297);
INSERT INTO core.thesaurus_desc_plot VALUES ('Dominant', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsCoverValueCode-D', 298);
INSERT INTO core.thesaurus_desc_plot VALUES ('Few', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsCoverValueCode-F', 299);
INSERT INTO core.thesaurus_desc_plot VALUES ('Many', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsCoverValueCode-M', 300);
INSERT INTO core.thesaurus_desc_plot VALUES ('None', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsCoverValueCode-N', 301);
INSERT INTO core.thesaurus_desc_plot VALUES ('Very few', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsCoverValueCode-V', 302);
INSERT INTO core.thesaurus_desc_plot VALUES ('> 50', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsDistanceValueCode-1', 303);
INSERT INTO core.thesaurus_desc_plot VALUES ('20–50', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsDistanceValueCode-2', 304);
INSERT INTO core.thesaurus_desc_plot VALUES ('5–20', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsDistanceValueCode-3', 305);
INSERT INTO core.thesaurus_desc_plot VALUES ('2–5', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsDistanceValueCode-4', 306);
INSERT INTO core.thesaurus_desc_plot VALUES ('< 2', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockOutcropsDistanceValueCode-5', 307);
INSERT INTO core.thesaurus_desc_plot VALUES ('concave', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeFormValueCode-C', 308);
INSERT INTO core.thesaurus_desc_plot VALUES ('straight', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeFormValueCode-S', 309);
INSERT INTO core.thesaurus_desc_plot VALUES ('terraced', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeFormValueCode-T', 310);
INSERT INTO core.thesaurus_desc_plot VALUES ('convex', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeFormValueCode-V', 311);
INSERT INTO core.thesaurus_desc_plot VALUES ('complex (irregular)', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeFormValueCode-X', 312);
INSERT INTO core.thesaurus_desc_plot VALUES ('Flat', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-01', 313);
INSERT INTO core.thesaurus_desc_plot VALUES ('Level', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-02', 314);
INSERT INTO core.thesaurus_desc_plot VALUES ('Nearly level', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-03', 315);
INSERT INTO core.thesaurus_desc_plot VALUES ('Very gently sloping ', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-04', 316);
INSERT INTO core.thesaurus_desc_plot VALUES ('Gently sloping', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-05', 317);
INSERT INTO core.thesaurus_desc_plot VALUES ('Sloping', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-06', 318);
INSERT INTO core.thesaurus_desc_plot VALUES ('Strongly sloping', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-07', 319);
INSERT INTO core.thesaurus_desc_plot VALUES ('Moderately steep', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-08', 320);
INSERT INTO core.thesaurus_desc_plot VALUES ('Steep', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-09', 321);
INSERT INTO core.thesaurus_desc_plot VALUES ('Very steep', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopeGradientClassValueCode-10', 322);
INSERT INTO core.thesaurus_desc_plot VALUES ('CC', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-CC', 323);
INSERT INTO core.thesaurus_desc_plot VALUES ('CS', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-CS', 324);
INSERT INTO core.thesaurus_desc_plot VALUES ('CV', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-CV', 325);
INSERT INTO core.thesaurus_desc_plot VALUES ('SC', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-SC', 326);
INSERT INTO core.thesaurus_desc_plot VALUES ('SS', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-SS', 327);
INSERT INTO core.thesaurus_desc_plot VALUES ('SV', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-SV', 328);
INSERT INTO core.thesaurus_desc_plot VALUES ('VC', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-VC', 329);
INSERT INTO core.thesaurus_desc_plot VALUES ('VS', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-VS', 330);
INSERT INTO core.thesaurus_desc_plot VALUES ('VV', 'http://w3id.org/glosis/model/v1.0.0/codelists#slopePathwaysValueCode-VV', 331);
INSERT INTO core.thesaurus_desc_plot VALUES ('Holocene anthropogeomorphic', 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-Ha', 332);
INSERT INTO core.thesaurus_desc_plot VALUES ('Holocene natural', 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-Hn', 333);
INSERT INTO core.thesaurus_desc_plot VALUES ('Older, pre-Tertiary land surfaces', 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-O', 334);
INSERT INTO core.thesaurus_desc_plot VALUES ('Tertiary land surfaces', 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-T', 335);
INSERT INTO core.thesaurus_desc_plot VALUES ('Young anthropogeomorphic', 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-Ya', 336);
INSERT INTO core.thesaurus_desc_plot VALUES ('Young natural', 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-Yn', 337);
INSERT INTO core.thesaurus_desc_plot VALUES ('Late Pleistocene, without periglacial influence.', 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-lPf', 338);
INSERT INTO core.thesaurus_desc_plot VALUES ('Late Pleistocene, ice covered', 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-lPi', 339);
INSERT INTO core.thesaurus_desc_plot VALUES ('Late Pleistocene, periglacial', 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-lPp', 340);
INSERT INTO core.thesaurus_desc_plot VALUES ('Older Pleistocene, without periglacial influence.', 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-oPf', 341);
INSERT INTO core.thesaurus_desc_plot VALUES ('Older Pleistocene, ice covered', 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-oPi', 342);
INSERT INTO core.thesaurus_desc_plot VALUES ('Older Pleistocene, with periglacial influence', 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-oPp', 343);
INSERT INTO core.thesaurus_desc_plot VALUES ('Very young anthropogeomorphic', 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-vYa', 344);
INSERT INTO core.thesaurus_desc_plot VALUES ('Very young natural', 'http://w3id.org/glosis/model/v1.0.0/codelists#surfaceAgeValueCode-vYn', 345);
INSERT INTO core.thesaurus_desc_plot VALUES ('Groundwater-fed bog peat', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-B', 346);
INSERT INTO core.thesaurus_desc_plot VALUES ('Dwarf shrub', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-D', 347);
INSERT INTO core.thesaurus_desc_plot VALUES ('Deciduous dwarf shrub', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-DD', 348);
INSERT INTO core.thesaurus_desc_plot VALUES ('Evergreen dwarf shrub', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-DE', 349);
INSERT INTO core.thesaurus_desc_plot VALUES ('Semi-deciduous dwarf shrub', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-DS', 350);
INSERT INTO core.thesaurus_desc_plot VALUES ('Tundra', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-DT', 351);
INSERT INTO core.thesaurus_desc_plot VALUES ('Xermomorphic dwarf shrub', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-DX', 352);
INSERT INTO core.thesaurus_desc_plot VALUES ('Closed forest', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-F', 353);
INSERT INTO core.thesaurus_desc_plot VALUES ('Coniferous forest', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-FC', 354);
INSERT INTO core.thesaurus_desc_plot VALUES ('Deciduous forest', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-FD', 355);
INSERT INTO core.thesaurus_desc_plot VALUES ('Evergreen broad-leaved forest', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-FE', 356);
INSERT INTO core.thesaurus_desc_plot VALUES ('Semi-deciduous forest', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-FS', 357);
INSERT INTO core.thesaurus_desc_plot VALUES ('Xeromorphic forest', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-FX', 358);
INSERT INTO core.thesaurus_desc_plot VALUES ('Herbaceous', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-H', 359);
INSERT INTO core.thesaurus_desc_plot VALUES ('Forb', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-HF', 360);
INSERT INTO core.thesaurus_desc_plot VALUES ('Medium grassland', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-HM', 361);
INSERT INTO core.thesaurus_desc_plot VALUES ('Short grassland', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-HS', 362);
INSERT INTO core.thesaurus_desc_plot VALUES ('Tall grassland', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-HT', 363);
INSERT INTO core.thesaurus_desc_plot VALUES ('Rainwater-fed moor peat', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-M', 364);
INSERT INTO core.thesaurus_desc_plot VALUES ('Shrub', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-S', 365);
INSERT INTO core.thesaurus_desc_plot VALUES ('Deciduous shrub', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-SD', 366);
INSERT INTO core.thesaurus_desc_plot VALUES ('Evergreen shrub', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-SE', 367);
INSERT INTO core.thesaurus_desc_plot VALUES ('Semi-deciduous shrub', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-SS', 368);
INSERT INTO core.thesaurus_desc_plot VALUES ('Xeromorphic shrub', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-SX', 369);
INSERT INTO core.thesaurus_desc_plot VALUES ('Woodland', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-W', 370);
INSERT INTO core.thesaurus_desc_plot VALUES ('Deciduous woodland', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-WD', 371);
INSERT INTO core.thesaurus_desc_plot VALUES ('Evergreen woodland', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-WE', 372);
INSERT INTO core.thesaurus_desc_plot VALUES ('Semi-deciduous woodland', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-WS', 373);
INSERT INTO core.thesaurus_desc_plot VALUES ('Xeromorphic woodland', 'http://w3id.org/glosis/model/v1.0.0/codelists#vegetationClassValueCode-WX', 374);
INSERT INTO core.thesaurus_desc_plot VALUES ('overcast', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-OV', 375);
INSERT INTO core.thesaurus_desc_plot VALUES ('partly cloudy', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-PC', 376);
INSERT INTO core.thesaurus_desc_plot VALUES ('rain', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-RA', 377);
INSERT INTO core.thesaurus_desc_plot VALUES ('sleet', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-SL', 378);
INSERT INTO core.thesaurus_desc_plot VALUES ('snow', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-SN', 379);
INSERT INTO core.thesaurus_desc_plot VALUES ('sunny/clear', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-SU', 380);
INSERT INTO core.thesaurus_desc_plot VALUES ('no rain in the last month', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC1', 381);
INSERT INTO core.thesaurus_desc_plot VALUES ('no rain in the last week', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC2', 382);
INSERT INTO core.thesaurus_desc_plot VALUES ('no rain in the last 24 hours', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC3', 383);
INSERT INTO core.thesaurus_desc_plot VALUES ('rainy without heavy rain in the last 24 hours', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC4', 384);
INSERT INTO core.thesaurus_desc_plot VALUES ('heavier rain for some days or rainstorm in the last 24 hours', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC5', 385);
INSERT INTO core.thesaurus_desc_plot VALUES ('extremely rainy time or snow melting', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatherConditionsValueCode-WC6', 386);
INSERT INTO core.thesaurus_desc_plot VALUES ('Fresh or slightly weathered', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-F', 387);
INSERT INTO core.thesaurus_desc_plot VALUES ('Strongly weathered', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-S', 388);
INSERT INTO core.thesaurus_desc_plot VALUES ('Weathered', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-W', 389);


--
-- Data for Name: thesaurus_desc_profile; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.thesaurus_desc_profile VALUES ('Reference profile description', 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-1', 1);
INSERT INTO core.thesaurus_desc_profile VALUES ('Reference profile description - no sampling', 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-1.1', 2);
INSERT INTO core.thesaurus_desc_profile VALUES ('Routine profile description ', 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-2', 3);
INSERT INTO core.thesaurus_desc_profile VALUES ('Routine profile description - no sampling', 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-2.1', 4);
INSERT INTO core.thesaurus_desc_profile VALUES ('Incomplete description ', 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-3', 5);
INSERT INTO core.thesaurus_desc_profile VALUES ('Incomplete description - no sampling', 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-3.1', 6);
INSERT INTO core.thesaurus_desc_profile VALUES ('Soil augering description ', 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-4', 7);
INSERT INTO core.thesaurus_desc_profile VALUES ('Soil augering description - no sampling', 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-4.1', 8);
INSERT INTO core.thesaurus_desc_profile VALUES ('Other descriptions ', 'http://w3id.org/glosis/model/v1.0.0/codelists#profileDescriptionStatusValueCode-5', 9);


--
-- Data for Name: thesaurus_desc_specimen; Type: TABLE DATA; Schema: core; Owner: -
--



--
-- Data for Name: thesaurus_desc_surface; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.thesaurus_desc_surface VALUES ('Deep 10–20', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDepthValueCode-D', 1);
INSERT INTO core.thesaurus_desc_surface VALUES ('Medium 2–10', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDepthValueCode-M', 2);
INSERT INTO core.thesaurus_desc_surface VALUES ('Surface < 2', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDepthValueCode-S', 3);
INSERT INTO core.thesaurus_desc_surface VALUES ('Very deep > 20', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDepthValueCode-V', 4);
INSERT INTO core.thesaurus_desc_surface VALUES ('Very closely spaced < 0.2', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-C', 5);
INSERT INTO core.thesaurus_desc_surface VALUES ('Closely spaced 0.2–0.5', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-D', 6);
INSERT INTO core.thesaurus_desc_surface VALUES ('Moderately widely spaced 0.5–2', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-M', 7);
INSERT INTO core.thesaurus_desc_surface VALUES ('Very widely spaced > 5', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-V', 8);
INSERT INTO core.thesaurus_desc_surface VALUES ('Widely spaced 2–5', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksDistanceValueCode-W', 9);
INSERT INTO core.thesaurus_desc_surface VALUES ('Extremely wide > 10cm', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-E', 10);
INSERT INTO core.thesaurus_desc_surface VALUES ('Fine < 1cm', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-F', 11);
INSERT INTO core.thesaurus_desc_surface VALUES ('Medium 1cm–2cm', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-M', 12);
INSERT INTO core.thesaurus_desc_surface VALUES ('Very wide 5cm–10cm', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-V', 13);
INSERT INTO core.thesaurus_desc_surface VALUES ('Wide 2cm–5cm', 'http://w3id.org/glosis/model/v1.0.0/codelists#cracksWidthValueCode-W', 14);
INSERT INTO core.thesaurus_desc_surface VALUES ('Abundant', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-A', 15);
INSERT INTO core.thesaurus_desc_surface VALUES ('Common ', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-C', 16);
INSERT INTO core.thesaurus_desc_surface VALUES ('Dominant', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-D', 17);
INSERT INTO core.thesaurus_desc_surface VALUES ('Few', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-F', 18);
INSERT INTO core.thesaurus_desc_surface VALUES ('Many', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-M', 19);
INSERT INTO core.thesaurus_desc_surface VALUES ('None', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-N', 20);
INSERT INTO core.thesaurus_desc_surface VALUES ('Very few', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentCoverValueCode-V', 21);
INSERT INTO core.thesaurus_desc_surface VALUES ('Boulders', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-B', 22);
INSERT INTO core.thesaurus_desc_surface VALUES ('Coarse gravel', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-C', 23);
INSERT INTO core.thesaurus_desc_surface VALUES ('Fine gravel', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-F', 24);
INSERT INTO core.thesaurus_desc_surface VALUES ('Large boulders', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-L', 25);
INSERT INTO core.thesaurus_desc_surface VALUES ('Medium gravel', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-M', 26);
INSERT INTO core.thesaurus_desc_surface VALUES ('Stones', 'http://w3id.org/glosis/model/v1.0.0/codelists#fragmentSizeValueCode-S', 27);
INSERT INTO core.thesaurus_desc_surface VALUES ('Abundant ', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-A', 28);
INSERT INTO core.thesaurus_desc_surface VALUES ('Common', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-C', 29);
INSERT INTO core.thesaurus_desc_surface VALUES ('Dominant', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-D', 30);
INSERT INTO core.thesaurus_desc_surface VALUES ('Few', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-F', 31);
INSERT INTO core.thesaurus_desc_surface VALUES ('Many', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-M', 32);
INSERT INTO core.thesaurus_desc_surface VALUES ('None', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-N', 33);
INSERT INTO core.thesaurus_desc_surface VALUES ('Stone line', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-S', 34);
INSERT INTO core.thesaurus_desc_surface VALUES ('Very few', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockAbundanceValueCode-V', 35);
INSERT INTO core.thesaurus_desc_surface VALUES ('Angular', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockShapeValueCode-A', 36);
INSERT INTO core.thesaurus_desc_surface VALUES ('Flat', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockShapeValueCode-F', 37);
INSERT INTO core.thesaurus_desc_surface VALUES ('Rounded', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockShapeValueCode-R', 38);
INSERT INTO core.thesaurus_desc_surface VALUES ('Subrounded', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockShapeValueCode-S', 39);
INSERT INTO core.thesaurus_desc_surface VALUES ('Artefacts', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-A', 40);
INSERT INTO core.thesaurus_desc_surface VALUES ('Coarse artefacts', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-AC', 41);
INSERT INTO core.thesaurus_desc_surface VALUES ('Fine artefacts', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-AF', 42);
INSERT INTO core.thesaurus_desc_surface VALUES ('Medium artefacts', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-AM', 43);
INSERT INTO core.thesaurus_desc_surface VALUES ('Very fine artefacts', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-AV', 44);
INSERT INTO core.thesaurus_desc_surface VALUES ('Boulders and large boulders', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-BL', 45);
INSERT INTO core.thesaurus_desc_surface VALUES ('Combination of classes', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-C', 46);
INSERT INTO core.thesaurus_desc_surface VALUES ('Coarse gravel and stones', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-CS', 47);
INSERT INTO core.thesaurus_desc_surface VALUES ('Fine and medium gravel/artefacts', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-FM', 48);
INSERT INTO core.thesaurus_desc_surface VALUES ('Medium and coarse gravel/artefacts', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-MC', 49);
INSERT INTO core.thesaurus_desc_surface VALUES ('Rock fragments', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-R', 50);
INSERT INTO core.thesaurus_desc_surface VALUES ('Boulders', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RB', 51);
INSERT INTO core.thesaurus_desc_surface VALUES ('Coarse gravel', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RC', 52);
INSERT INTO core.thesaurus_desc_surface VALUES ('Fine gravel', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RF', 53);
INSERT INTO core.thesaurus_desc_surface VALUES ('Large boulders', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RL', 54);
INSERT INTO core.thesaurus_desc_surface VALUES ('Medium gravel', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RM', 55);
INSERT INTO core.thesaurus_desc_surface VALUES ('Stones', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-RS', 56);
INSERT INTO core.thesaurus_desc_surface VALUES ('Stones and boulders', 'http://w3id.org/glosis/model/v1.0.0/codelists#rockSizeValueCode-SB', 57);
INSERT INTO core.thesaurus_desc_surface VALUES ('None', 'http://w3id.org/glosis/model/v1.0.0/codelists#saltCoverValueCode-0', 58);
INSERT INTO core.thesaurus_desc_surface VALUES ('Low', 'http://w3id.org/glosis/model/v1.0.0/codelists#saltCoverValueCode-1', 59);
INSERT INTO core.thesaurus_desc_surface VALUES ('Moderate', 'http://w3id.org/glosis/model/v1.0.0/codelists#saltCoverValueCode-2', 60);
INSERT INTO core.thesaurus_desc_surface VALUES ('High', 'http://w3id.org/glosis/model/v1.0.0/codelists#saltCoverValueCode-3', 61);
INSERT INTO core.thesaurus_desc_surface VALUES ('Dominant', 'http://w3id.org/glosis/model/v1.0.0/codelists#saltCoverValueCode-4', 62);
INSERT INTO core.thesaurus_desc_surface VALUES ('Thick', 'http://w3id.org/glosis/model/v1.0.0/codelists#saltThicknessValueCode-C', 63);
INSERT INTO core.thesaurus_desc_surface VALUES ('Thin', 'http://w3id.org/glosis/model/v1.0.0/codelists#saltThicknessValueCode-F', 64);
INSERT INTO core.thesaurus_desc_surface VALUES ('Medium', 'http://w3id.org/glosis/model/v1.0.0/codelists#saltThicknessValueCode-M', 65);
INSERT INTO core.thesaurus_desc_surface VALUES ('None', 'http://w3id.org/glosis/model/v1.0.0/codelists#saltThicknessValueCode-N', 66);
INSERT INTO core.thesaurus_desc_surface VALUES ('Very thick', 'http://w3id.org/glosis/model/v1.0.0/codelists#saltThicknessValueCode-V', 67);
INSERT INTO core.thesaurus_desc_surface VALUES ('Extremely hard', 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingConsistenceValueCode-E', 68);
INSERT INTO core.thesaurus_desc_surface VALUES ('Hard', 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingConsistenceValueCode-H', 69);
INSERT INTO core.thesaurus_desc_surface VALUES ('Slightly hard', 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingConsistenceValueCode-S', 70);
INSERT INTO core.thesaurus_desc_surface VALUES ('Very hard', 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingConsistenceValueCode-V', 71);
INSERT INTO core.thesaurus_desc_surface VALUES ('Thick', 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingThicknessValueCode-C', 72);
INSERT INTO core.thesaurus_desc_surface VALUES ('Thin', 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingThicknessValueCode-F', 73);
INSERT INTO core.thesaurus_desc_surface VALUES ('Medium', 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingThicknessValueCode-M', 74);
INSERT INTO core.thesaurus_desc_surface VALUES ('None', 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingThicknessValueCode-N', 75);
INSERT INTO core.thesaurus_desc_surface VALUES ('Very thick', 'http://w3id.org/glosis/model/v1.0.0/codelists#sealingThicknessValueCode-V', 76);
INSERT INTO core.thesaurus_desc_surface VALUES ('Fresh or slightly weathered', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-F', 77);
INSERT INTO core.thesaurus_desc_surface VALUES ('Strongly weathered', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-S', 78);
INSERT INTO core.thesaurus_desc_surface VALUES ('Weathered', 'http://w3id.org/glosis/model/v1.0.0/codelists#weatheringValueCode-W', 79);


--
-- Data for Name: unit_of_measure; Type: TABLE DATA; Schema: core; Owner: -
--

INSERT INTO core.unit_of_measure VALUES ('Centimetre Per Hour', 'http://qudt.org/vocab/unit/CentiM-PER-HR', 8);
INSERT INTO core.unit_of_measure VALUES ('Percent', 'http://qudt.org/vocab/unit/PERCENT', 9);
INSERT INTO core.unit_of_measure VALUES ('Centimole per kilogram', 'http://qudt.org/vocab/unit/CentiMOL-PER-KiloGM', 10);
INSERT INTO core.unit_of_measure VALUES ('decisiemens per metre', 'http://qudt.org/vocab/unit/DeciS-PER-M', 11);
INSERT INTO core.unit_of_measure VALUES ('Gram Per Kilogram', 'http://qudt.org/vocab/unit/GM-PER-KiloGM', 12);
INSERT INTO core.unit_of_measure VALUES ('Kilogram Per Cubic Decimetre', 'http://qudt.org/vocab/unit/KiloGM-PER-DeciM3', 13);
INSERT INTO core.unit_of_measure VALUES ('Acidity', 'http://qudt.org/vocab/unit/PH', 14);
INSERT INTO core.unit_of_measure VALUES ('Centimol Per Litre', 'http://w3id.org/glosis/model/v1.0.0/unit#CentiMOL-PER-L', 15);
INSERT INTO core.unit_of_measure VALUES ('Gram Per Hectogram', 'http://w3id.org/glosis/model/v1.0.0/unit#GM-PER-HectoGM', 16);
INSERT INTO core.unit_of_measure VALUES ('Cubic metre per one hundred cubic metre', 'http://w3id.org/glosis/model/v1.0.0/unit#M3-PER-HundredM3', 17);


--
-- Data for Name: address; Type: TABLE DATA; Schema: metadata; Owner: -
--



--
-- Data for Name: individual; Type: TABLE DATA; Schema: metadata; Owner: -
--



--
-- Data for Name: organisation; Type: TABLE DATA; Schema: metadata; Owner: -
--



--
-- Data for Name: organisation_individual; Type: TABLE DATA; Schema: metadata; Owner: -
--



--
-- Data for Name: organisation_unit; Type: TABLE DATA; Schema: metadata; Owner: -
--



--
-- Name: element_element_id_seq; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.element_element_id_seq', 1, false);


--
-- Name: observation_numerical_specime_observation_numerical_specime_seq; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.observation_numerical_specime_observation_numerical_specime_seq', 1, false);


--
-- Name: observation_phys_chem_observation_phys_chem_id_seq; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.observation_phys_chem_observation_phys_chem_id_seq', 1007, true);


--
-- Name: plot_plot_id_seq; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.plot_plot_id_seq', 1, false);


--
-- Name: procedure_desc_procedure_desc_id_seq1; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.procedure_desc_procedure_desc_id_seq1', 1, true);


--
-- Name: procedure_numerical_specimen_procedure_numerical_specimen_i_seq; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.procedure_numerical_specimen_procedure_numerical_specimen_i_seq', 1, false);


--
-- Name: procedure_phys_chem_procedure_phys_chem_id_seq1; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.procedure_phys_chem_procedure_phys_chem_id_seq1', 298, true);


--
-- Name: profile_profile_id_seq; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.profile_profile_id_seq', 1, false);


--
-- Name: project_project_id_seq; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.project_project_id_seq', 1, false);


--
-- Name: property_desc_element_property_desc_element_id_seq1; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.property_desc_element_property_desc_element_id_seq1', 170, true);


--
-- Name: property_desc_plot_property_desc_plot_id_seq1; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.property_desc_plot_property_desc_plot_id_seq1', 84, true);


--
-- Name: property_desc_profile_property_desc_profile_id_seq1; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.property_desc_profile_property_desc_profile_id_seq1', 15, true);


--
-- Name: property_desc_specimen_property_desc_specimen_id_seq1; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.property_desc_specimen_property_desc_specimen_id_seq1', 1, false);


--
-- Name: property_desc_surface_property_desc_surface_id_seq1; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.property_desc_surface_property_desc_surface_id_seq1', 24, true);


--
-- Name: property_numerical_specimen_property_numerical_specimen_id_seq; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.property_numerical_specimen_property_numerical_specimen_id_seq', 1, false);


--
-- Name: property_phys_chem_property_phys_chem_id_seq1; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.property_phys_chem_property_phys_chem_id_seq1', 57, true);


--
-- Name: result_numerical_specimen_result_numerical_specimen_id_seq; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.result_numerical_specimen_result_numerical_specimen_id_seq', 1, false);


--
-- Name: result_phys_chem_result_phys_chem_id_seq; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.result_phys_chem_result_phys_chem_id_seq', 1, false);


--
-- Name: site_site_id_seq; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.site_site_id_seq', 1, false);


--
-- Name: specimen_prep_process_specimen_prep_process_id_seq; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.specimen_prep_process_specimen_prep_process_id_seq', 1, false);


--
-- Name: specimen_specimen_id_seq; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.specimen_specimen_id_seq', 1, false);


--
-- Name: specimen_storage_specimen_storage_id_seq; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.specimen_storage_specimen_storage_id_seq', 1, false);


--
-- Name: specimen_transport_specimen_transport_id_seq; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.specimen_transport_specimen_transport_id_seq', 1, false);


--
-- Name: surface_surface_id_seq; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.surface_surface_id_seq', 1, false);


--
-- Name: thesaurus_desc_element_thesaurus_desc_element_id_seq1; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.thesaurus_desc_element_thesaurus_desc_element_id_seq1', 358, true);


--
-- Name: thesaurus_desc_plot_thesaurus_desc_plot_id_seq1; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.thesaurus_desc_plot_thesaurus_desc_plot_id_seq1', 389, true);


--
-- Name: thesaurus_desc_profile_thesaurus_desc_profile_id_seq1; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.thesaurus_desc_profile_thesaurus_desc_profile_id_seq1', 9, true);


--
-- Name: thesaurus_desc_specimen_thesaurus_desc_specimen_id_seq1; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.thesaurus_desc_specimen_thesaurus_desc_specimen_id_seq1', 1, false);


--
-- Name: thesaurus_desc_surface_thesaurus_desc_surface_id_seq1; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.thesaurus_desc_surface_thesaurus_desc_surface_id_seq1', 79, true);


--
-- Name: unit_of_measure_unit_of_measure_id_seq1; Type: SEQUENCE SET; Schema: core; Owner: -
--

SELECT pg_catalog.setval('core.unit_of_measure_unit_of_measure_id_seq1', 17, true);


--
-- Name: address_address_id_seq; Type: SEQUENCE SET; Schema: metadata; Owner: -
--

SELECT pg_catalog.setval('metadata.address_address_id_seq', 1, false);


--
-- Name: individual_individual_id_seq; Type: SEQUENCE SET; Schema: metadata; Owner: -
--

SELECT pg_catalog.setval('metadata.individual_individual_id_seq', 1, false);


--
-- Name: organisation_organisation_id_seq; Type: SEQUENCE SET; Schema: metadata; Owner: -
--

SELECT pg_catalog.setval('metadata.organisation_organisation_id_seq', 1, false);


--
-- Name: organisation_unit_organisation_unit_id_seq; Type: SEQUENCE SET; Schema: metadata; Owner: -
--

SELECT pg_catalog.setval('metadata.organisation_unit_organisation_unit_id_seq', 1, false);


--
-- Name: element element_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.element
    ADD CONSTRAINT element_pkey PRIMARY KEY (element_id);


--
-- Name: observation_desc_element observation_desc_element_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_element
    ADD CONSTRAINT observation_desc_element_pkey PRIMARY KEY (property_desc_element_id, thesaurus_desc_element_id);


--
-- Name: observation_desc_element observation_desc_element_property_desc_element_id_thesaurus_key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_element
    ADD CONSTRAINT observation_desc_element_property_desc_element_id_thesaurus_key UNIQUE (property_desc_element_id, thesaurus_desc_element_id);


--
-- Name: observation_desc_plot observation_desc_plot_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_plot
    ADD CONSTRAINT observation_desc_plot_pkey PRIMARY KEY (property_desc_plot_id, thesaurus_desc_plot_id);


--
-- Name: observation_desc_plot observation_desc_plot_property_desc_plot_id_thesaurus_desc__key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_plot
    ADD CONSTRAINT observation_desc_plot_property_desc_plot_id_thesaurus_desc__key UNIQUE (property_desc_plot_id, thesaurus_desc_plot_id);


--
-- Name: observation_desc_profile observation_desc_profile_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_profile
    ADD CONSTRAINT observation_desc_profile_pkey PRIMARY KEY (property_desc_profile_id, thesaurus_desc_profile_id);


--
-- Name: observation_desc_profile observation_desc_profile_property_desc_profile_id_thesaurus_key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_profile
    ADD CONSTRAINT observation_desc_profile_property_desc_profile_id_thesaurus_key UNIQUE (property_desc_profile_id, thesaurus_desc_profile_id);


--
-- Name: observation_desc_specimen observation_desc_specimen_property_desc_specimen_id_thesaur_key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_specimen
    ADD CONSTRAINT observation_desc_specimen_property_desc_specimen_id_thesaur_key UNIQUE (property_desc_specimen_id, thesaurus_desc_specimen_id);


--
-- Name: observation_desc_surface observation_desc_surface_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_surface
    ADD CONSTRAINT observation_desc_surface_pkey PRIMARY KEY (property_desc_surface_id, thesaurus_desc_surface_id);


--
-- Name: observation_desc_surface observation_desc_surface_property_desc_surface_id_thesaurus_key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_surface
    ADD CONSTRAINT observation_desc_surface_property_desc_surface_id_thesaurus_key UNIQUE (property_desc_surface_id, thesaurus_desc_surface_id);


--
-- Name: observation_numerical_specimen observation_numerical_specime_property_numerical_specimen_i_key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_numerical_specimen
    ADD CONSTRAINT observation_numerical_specime_property_numerical_specimen_i_key UNIQUE (property_numerical_specimen_id, procedure_numerical_specimen_id);


--
-- Name: observation_numerical_specimen observation_numerical_specimen_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_numerical_specimen
    ADD CONSTRAINT observation_numerical_specimen_pkey PRIMARY KEY (observation_numerical_specimen_id);


--
-- Name: observation_phys_chem observation_phys_chem_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_phys_chem
    ADD CONSTRAINT observation_phys_chem_pkey PRIMARY KEY (observation_phys_chem_id);


--
-- Name: observation_phys_chem observation_phys_chem_property_phys_chem_id_procedure_phys__key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_phys_chem
    ADD CONSTRAINT observation_phys_chem_property_phys_chem_id_procedure_phys__key UNIQUE (property_phys_chem_id, procedure_phys_chem_id);


--
-- Name: plot_individual plot_individual_plot_id_individual_id_key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.plot_individual
    ADD CONSTRAINT plot_individual_plot_id_individual_id_key UNIQUE (plot_id, individual_id);


--
-- Name: plot plot_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.plot
    ADD CONSTRAINT plot_pkey PRIMARY KEY (plot_id);


--
-- Name: procedure_desc procedure_desc_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.procedure_desc
    ADD CONSTRAINT procedure_desc_pkey PRIMARY KEY (procedure_desc_id);


--
-- Name: procedure_desc procedure_desc_uri_key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.procedure_desc
    ADD CONSTRAINT procedure_desc_uri_key UNIQUE (uri);


--
-- Name: procedure_numerical_specimen procedure_numerical_specimen_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.procedure_numerical_specimen
    ADD CONSTRAINT procedure_numerical_specimen_pkey PRIMARY KEY (procedure_numerical_specimen_id);


--
-- Name: procedure_phys_chem procedure_phys_chem_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.procedure_phys_chem
    ADD CONSTRAINT procedure_phys_chem_pkey PRIMARY KEY (procedure_phys_chem_id);


--
-- Name: profile profile_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (profile_id);


--
-- Name: project project_name_key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.project
    ADD CONSTRAINT project_name_key UNIQUE (name);


--
-- Name: project_organisation project_organisation_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.project_organisation
    ADD CONSTRAINT project_organisation_pkey PRIMARY KEY (project_id, organisation_id);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (project_id);


--
-- Name: project_related project_related_project_source_id_project_target_id_key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.project_related
    ADD CONSTRAINT project_related_project_source_id_project_target_id_key UNIQUE (project_source_id, project_target_id);


--
-- Name: property_desc_element property_desc_element_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_desc_element
    ADD CONSTRAINT property_desc_element_pkey PRIMARY KEY (property_desc_element_id);


--
-- Name: property_desc_plot property_desc_plot_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_desc_plot
    ADD CONSTRAINT property_desc_plot_pkey PRIMARY KEY (property_desc_plot_id);


--
-- Name: property_desc_profile property_desc_profile_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_desc_profile
    ADD CONSTRAINT property_desc_profile_pkey PRIMARY KEY (property_desc_profile_id);


--
-- Name: property_desc_specimen property_desc_specimen_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_desc_specimen
    ADD CONSTRAINT property_desc_specimen_pkey PRIMARY KEY (property_desc_specimen_id);


--
-- Name: property_desc_surface property_desc_surface_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_desc_surface
    ADD CONSTRAINT property_desc_surface_pkey PRIMARY KEY (property_desc_surface_id);


--
-- Name: property_numerical_specimen property_numerical_specimen_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_numerical_specimen
    ADD CONSTRAINT property_numerical_specimen_pkey PRIMARY KEY (property_numerical_specimen_id);


--
-- Name: property_phys_chem property_phys_chem_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_phys_chem
    ADD CONSTRAINT property_phys_chem_pkey PRIMARY KEY (property_phys_chem_id);


--
-- Name: result_desc_specimen result_desc_specimen_specimen_id_property_desc_specimen_id_key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_desc_specimen
    ADD CONSTRAINT result_desc_specimen_specimen_id_property_desc_specimen_id_key UNIQUE (specimen_id, property_desc_specimen_id);


--
-- Name: result_numerical_specimen result_numerical_specimen_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_numerical_specimen
    ADD CONSTRAINT result_numerical_specimen_pkey PRIMARY KEY (result_numerical_specimen_id);


--
-- Name: result_numerical_specimen result_numerical_specimen_unq; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_numerical_specimen
    ADD CONSTRAINT result_numerical_specimen_unq UNIQUE (observation_numerical_specimen_id, specimen_id);


--
-- Name: result_numerical_specimen result_numerical_specimen_unq_foi_obs; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_numerical_specimen
    ADD CONSTRAINT result_numerical_specimen_unq_foi_obs UNIQUE (specimen_id, observation_numerical_specimen_id);


--
-- Name: result_phys_chem result_phys_chem_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_phys_chem
    ADD CONSTRAINT result_phys_chem_pkey PRIMARY KEY (result_phys_chem_id);


--
-- Name: result_phys_chem result_phys_chem_unq; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_phys_chem
    ADD CONSTRAINT result_phys_chem_unq UNIQUE (observation_phys_chem_id, element_id);


--
-- Name: result_phys_chem result_phys_chem_unq_foi_obs; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_phys_chem
    ADD CONSTRAINT result_phys_chem_unq_foi_obs UNIQUE (element_id, observation_phys_chem_id);


--
-- Name: site site_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.site
    ADD CONSTRAINT site_pkey PRIMARY KEY (site_id);


--
-- Name: site_project site_project_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.site_project
    ADD CONSTRAINT site_project_pkey PRIMARY KEY (site_id, project_id);


--
-- Name: specimen specimen_code_key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.specimen
    ADD CONSTRAINT specimen_code_key UNIQUE (code);


--
-- Name: specimen specimen_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.specimen
    ADD CONSTRAINT specimen_pkey PRIMARY KEY (specimen_id);


--
-- Name: specimen_prep_process specimen_prep_process_definition_key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.specimen_prep_process
    ADD CONSTRAINT specimen_prep_process_definition_key UNIQUE (definition);


--
-- Name: specimen_prep_process specimen_prep_process_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.specimen_prep_process
    ADD CONSTRAINT specimen_prep_process_pkey PRIMARY KEY (specimen_prep_process_id);


--
-- Name: specimen_storage specimen_storage_definition_key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.specimen_storage
    ADD CONSTRAINT specimen_storage_definition_key UNIQUE (definition);


--
-- Name: specimen_storage specimen_storage_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.specimen_storage
    ADD CONSTRAINT specimen_storage_pkey PRIMARY KEY (specimen_storage_id);


--
-- Name: specimen_transport specimen_transport_definition_key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.specimen_transport
    ADD CONSTRAINT specimen_transport_definition_key UNIQUE (definition);


--
-- Name: specimen_transport specimen_transport_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.specimen_transport
    ADD CONSTRAINT specimen_transport_pkey PRIMARY KEY (specimen_transport_id);


--
-- Name: surface_individual surface_individual_surface_id_individual_id_key; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.surface_individual
    ADD CONSTRAINT surface_individual_surface_id_individual_id_key UNIQUE (surface_id, individual_id);


--
-- Name: surface surface_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.surface
    ADD CONSTRAINT surface_pkey PRIMARY KEY (surface_id);


--
-- Name: thesaurus_desc_element thesaurus_desc_element_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.thesaurus_desc_element
    ADD CONSTRAINT thesaurus_desc_element_pkey PRIMARY KEY (thesaurus_desc_element_id);


--
-- Name: thesaurus_desc_plot thesaurus_desc_plot_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.thesaurus_desc_plot
    ADD CONSTRAINT thesaurus_desc_plot_pkey PRIMARY KEY (thesaurus_desc_plot_id);


--
-- Name: thesaurus_desc_profile thesaurus_desc_profile_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.thesaurus_desc_profile
    ADD CONSTRAINT thesaurus_desc_profile_pkey PRIMARY KEY (thesaurus_desc_profile_id);


--
-- Name: thesaurus_desc_specimen thesaurus_desc_specimen_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.thesaurus_desc_specimen
    ADD CONSTRAINT thesaurus_desc_specimen_pkey PRIMARY KEY (thesaurus_desc_specimen_id);


--
-- Name: thesaurus_desc_surface thesaurus_desc_surface_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.thesaurus_desc_surface
    ADD CONSTRAINT thesaurus_desc_surface_pkey PRIMARY KEY (thesaurus_desc_surface_id);


--
-- Name: unit_of_measure unit_of_measure_pkey; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.unit_of_measure
    ADD CONSTRAINT unit_of_measure_pkey PRIMARY KEY (unit_of_measure_id);


--
-- Name: element unq_element_profile_order_element; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.element
    ADD CONSTRAINT unq_element_profile_order_element UNIQUE (profile_id, order_element);


--
-- Name: plot unq_plot_code; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.plot
    ADD CONSTRAINT unq_plot_code UNIQUE (plot_code);


--
-- Name: procedure_desc unq_procedure_desc_label; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.procedure_desc
    ADD CONSTRAINT unq_procedure_desc_label UNIQUE (label);


--
-- Name: procedure_numerical_specimen unq_procedure_numerical_specimen_label; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.procedure_numerical_specimen
    ADD CONSTRAINT unq_procedure_numerical_specimen_label UNIQUE (label);


--
-- Name: procedure_phys_chem unq_procedure_phys_chem_label; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.procedure_phys_chem
    ADD CONSTRAINT unq_procedure_phys_chem_label UNIQUE (label);


--
-- Name: procedure_phys_chem unq_procedure_phys_chem_uri; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.procedure_phys_chem
    ADD CONSTRAINT unq_procedure_phys_chem_uri UNIQUE (uri);


--
-- Name: profile unq_profile_code; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.profile
    ADD CONSTRAINT unq_profile_code UNIQUE (profile_code);


--
-- Name: project unq_project_name; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.project
    ADD CONSTRAINT unq_project_name UNIQUE (name);


--
-- Name: property_desc_element unq_property_desc_element_label; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_desc_element
    ADD CONSTRAINT unq_property_desc_element_label UNIQUE (label);


--
-- Name: property_desc_element unq_property_desc_element_uri; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_desc_element
    ADD CONSTRAINT unq_property_desc_element_uri UNIQUE (uri);


--
-- Name: property_desc_plot unq_property_desc_plot_label; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_desc_plot
    ADD CONSTRAINT unq_property_desc_plot_label UNIQUE (label);


--
-- Name: property_desc_plot unq_property_desc_plot_uri; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_desc_plot
    ADD CONSTRAINT unq_property_desc_plot_uri UNIQUE (uri);


--
-- Name: property_desc_profile unq_property_desc_profile_label; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_desc_profile
    ADD CONSTRAINT unq_property_desc_profile_label UNIQUE (label);


--
-- Name: property_desc_profile unq_property_desc_profile_uri; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_desc_profile
    ADD CONSTRAINT unq_property_desc_profile_uri UNIQUE (uri);


--
-- Name: property_desc_specimen unq_property_desc_specimen_label; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_desc_specimen
    ADD CONSTRAINT unq_property_desc_specimen_label UNIQUE (label);


--
-- Name: property_desc_surface unq_property_desc_surface_label; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_desc_surface
    ADD CONSTRAINT unq_property_desc_surface_label UNIQUE (label);


--
-- Name: property_desc_surface unq_property_desc_surface_uri; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_desc_surface
    ADD CONSTRAINT unq_property_desc_surface_uri UNIQUE (uri);


--
-- Name: property_numerical_specimen unq_property_numerical_specimen_label; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_numerical_specimen
    ADD CONSTRAINT unq_property_numerical_specimen_label UNIQUE (label);


--
-- Name: property_phys_chem unq_property_phys_chem_label; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_phys_chem
    ADD CONSTRAINT unq_property_phys_chem_label UNIQUE (label);


--
-- Name: property_phys_chem unq_property_phys_chem_uri; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.property_phys_chem
    ADD CONSTRAINT unq_property_phys_chem_uri UNIQUE (uri);


--
-- Name: result_desc_element unq_result_desc_element; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_desc_element
    ADD CONSTRAINT unq_result_desc_element UNIQUE (element_id, property_desc_element_id);


--
-- Name: result_desc_plot unq_result_desc_plot; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_desc_plot
    ADD CONSTRAINT unq_result_desc_plot UNIQUE (plot_id, property_desc_plot_id);


--
-- Name: result_desc_profile unq_result_desc_profile; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_desc_profile
    ADD CONSTRAINT unq_result_desc_profile UNIQUE (profile_id, property_desc_profile_id);


--
-- Name: result_desc_surface unq_result_desc_surface; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_desc_surface
    ADD CONSTRAINT unq_result_desc_surface UNIQUE (surface_id, property_desc_surface_id);


--
-- Name: site unq_site_code; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.site
    ADD CONSTRAINT unq_site_code UNIQUE (site_code);


--
-- Name: specimen_storage unq_specimen_storage_label; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.specimen_storage
    ADD CONSTRAINT unq_specimen_storage_label UNIQUE (label);


--
-- Name: specimen_transport unq_specimen_transport_label; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.specimen_transport
    ADD CONSTRAINT unq_specimen_transport_label UNIQUE (label);


--
-- Name: surface unq_surface_super; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.surface
    ADD CONSTRAINT unq_surface_super UNIQUE (surface_id, super_surface_id);


--
-- Name: thesaurus_desc_element unq_thesaurus_desc_element_uri; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.thesaurus_desc_element
    ADD CONSTRAINT unq_thesaurus_desc_element_uri UNIQUE (uri);


--
-- Name: thesaurus_desc_plot unq_thesaurus_desc_plot_uri; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.thesaurus_desc_plot
    ADD CONSTRAINT unq_thesaurus_desc_plot_uri UNIQUE (uri);


--
-- Name: thesaurus_desc_profile unq_thesaurus_desc_profile_uri; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.thesaurus_desc_profile
    ADD CONSTRAINT unq_thesaurus_desc_profile_uri UNIQUE (uri);


--
-- Name: thesaurus_desc_specimen unq_thesaurus_desc_specimen_label; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.thesaurus_desc_specimen
    ADD CONSTRAINT unq_thesaurus_desc_specimen_label UNIQUE (label);


--
-- Name: thesaurus_desc_surface unq_thesaurus_desc_surface_uri; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.thesaurus_desc_surface
    ADD CONSTRAINT unq_thesaurus_desc_surface_uri UNIQUE (uri);


--
-- Name: unit_of_measure unq_unit_of_measure_uri; Type: CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.unit_of_measure
    ADD CONSTRAINT unq_unit_of_measure_uri UNIQUE (uri);


--
-- Name: address address_pkey; Type: CONSTRAINT; Schema: metadata; Owner: -
--

ALTER TABLE ONLY metadata.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (address_id);


--
-- Name: individual individual_pkey; Type: CONSTRAINT; Schema: metadata; Owner: -
--

ALTER TABLE ONLY metadata.individual
    ADD CONSTRAINT individual_pkey PRIMARY KEY (individual_id);


--
-- Name: organisation_individual organisation_individual_individual_id_organisation_id_key; Type: CONSTRAINT; Schema: metadata; Owner: -
--

ALTER TABLE ONLY metadata.organisation_individual
    ADD CONSTRAINT organisation_individual_individual_id_organisation_id_key UNIQUE (individual_id, organisation_id);


--
-- Name: organisation organisation_pkey; Type: CONSTRAINT; Schema: metadata; Owner: -
--

ALTER TABLE ONLY metadata.organisation
    ADD CONSTRAINT organisation_pkey PRIMARY KEY (organisation_id);


--
-- Name: organisation_unit organisation_unit_name_organisation_id_key; Type: CONSTRAINT; Schema: metadata; Owner: -
--

ALTER TABLE ONLY metadata.organisation_unit
    ADD CONSTRAINT organisation_unit_name_organisation_id_key UNIQUE (name, organisation_id);


--
-- Name: organisation_unit organisation_unit_pkey; Type: CONSTRAINT; Schema: metadata; Owner: -
--

ALTER TABLE ONLY metadata.organisation_unit
    ADD CONSTRAINT organisation_unit_pkey PRIMARY KEY (organisation_unit_id);


--
-- Name: result_phys_chem trg_check_result_value; Type: TRIGGER; Schema: core; Owner: -
--

CREATE TRIGGER trg_check_result_value BEFORE INSERT OR UPDATE ON core.result_phys_chem FOR EACH ROW EXECUTE FUNCTION core.check_result_value();


--
-- Name: TRIGGER trg_check_result_value ON result_phys_chem; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TRIGGER trg_check_result_value ON core.result_phys_chem IS 'Verifies if the value assigned to the result is valid. See the function core.ceck_result_valus function for implementation.';


--
-- Name: result_numerical_specimen trg_check_result_value_specimen; Type: TRIGGER; Schema: core; Owner: -
--

CREATE TRIGGER trg_check_result_value_specimen BEFORE INSERT OR UPDATE ON core.result_numerical_specimen FOR EACH ROW EXECUTE FUNCTION core.check_result_value_specimen();


--
-- Name: TRIGGER trg_check_result_value_specimen ON result_numerical_specimen; Type: COMMENT; Schema: core; Owner: -
--

COMMENT ON TRIGGER trg_check_result_value_specimen ON core.result_numerical_specimen IS 'Verifies if the value assigned to the result is valid. See the function core.ceck_result_value function for implementation.';


--
-- Name: procedure_numerical_specimen fk_broader; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.procedure_numerical_specimen
    ADD CONSTRAINT fk_broader FOREIGN KEY (broader_id) REFERENCES core.procedure_numerical_specimen(procedure_numerical_specimen_id);


--
-- Name: procedure_phys_chem fk_broader; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.procedure_phys_chem
    ADD CONSTRAINT fk_broader FOREIGN KEY (broader_id) REFERENCES core.procedure_phys_chem(procedure_phys_chem_id);


--
-- Name: result_phys_chem fk_element; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_phys_chem
    ADD CONSTRAINT fk_element FOREIGN KEY (element_id) REFERENCES core.element(element_id);


--
-- Name: result_desc_element fk_element; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_desc_element
    ADD CONSTRAINT fk_element FOREIGN KEY (element_id) REFERENCES core.element(element_id);


--
-- Name: surface_individual fk_individual; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.surface_individual
    ADD CONSTRAINT fk_individual FOREIGN KEY (individual_id) REFERENCES metadata.individual(individual_id);


--
-- Name: plot_individual fk_individual; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.plot_individual
    ADD CONSTRAINT fk_individual FOREIGN KEY (individual_id) REFERENCES metadata.individual(individual_id);


--
-- Name: result_phys_chem fk_individual; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_phys_chem
    ADD CONSTRAINT fk_individual FOREIGN KEY (individual_id) REFERENCES metadata.individual(individual_id);


--
-- Name: result_numerical_specimen fk_observation_numerical_specimen; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_numerical_specimen
    ADD CONSTRAINT fk_observation_numerical_specimen FOREIGN KEY (observation_numerical_specimen_id) REFERENCES core.observation_numerical_specimen(observation_numerical_specimen_id);


--
-- Name: result_phys_chem fk_observation_phys_chem; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_phys_chem
    ADD CONSTRAINT fk_observation_phys_chem FOREIGN KEY (observation_phys_chem_id) REFERENCES core.observation_phys_chem(observation_phys_chem_id);


--
-- Name: result_numerical_specimen fk_organisation; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_numerical_specimen
    ADD CONSTRAINT fk_organisation FOREIGN KEY (organisation_id) REFERENCES metadata.organisation(organisation_id);


--
-- Name: specimen fk_organisation; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.specimen
    ADD CONSTRAINT fk_organisation FOREIGN KEY (organisation_id) REFERENCES metadata.organisation(organisation_id);


--
-- Name: project_organisation fk_organisation; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.project_organisation
    ADD CONSTRAINT fk_organisation FOREIGN KEY (organisation_id) REFERENCES metadata.organisation(organisation_id);


--
-- Name: specimen fk_plot; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.specimen
    ADD CONSTRAINT fk_plot FOREIGN KEY (plot_id) REFERENCES core.plot(plot_id);


--
-- Name: plot_individual fk_plot; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.plot_individual
    ADD CONSTRAINT fk_plot FOREIGN KEY (plot_id) REFERENCES core.plot(plot_id);


--
-- Name: profile fk_plot; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.profile
    ADD CONSTRAINT fk_plot FOREIGN KEY (plot_id) REFERENCES core.plot(plot_id);


--
-- Name: result_desc_plot fk_plot; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_desc_plot
    ADD CONSTRAINT fk_plot FOREIGN KEY (plot_id) REFERENCES core.plot(plot_id);


--
-- Name: observation_desc_element fk_procedure_desc; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_element
    ADD CONSTRAINT fk_procedure_desc FOREIGN KEY (procedure_desc_id) REFERENCES core.procedure_desc(procedure_desc_id);


--
-- Name: observation_desc_plot fk_procedure_desc; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_plot
    ADD CONSTRAINT fk_procedure_desc FOREIGN KEY (procedure_desc_id) REFERENCES core.procedure_desc(procedure_desc_id);


--
-- Name: observation_desc_profile fk_procedure_desc; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_profile
    ADD CONSTRAINT fk_procedure_desc FOREIGN KEY (procedure_desc_id) REFERENCES core.procedure_desc(procedure_desc_id);


--
-- Name: observation_desc_specimen fk_procedure_desc; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_specimen
    ADD CONSTRAINT fk_procedure_desc FOREIGN KEY (procedure_desc_id) REFERENCES core.procedure_desc(procedure_desc_id);


--
-- Name: observation_desc_surface fk_procedure_desc; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_surface
    ADD CONSTRAINT fk_procedure_desc FOREIGN KEY (procedure_desc_id) REFERENCES core.procedure_desc(procedure_desc_id);


--
-- Name: observation_numerical_specimen fk_procedure_numerical_specimen; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_numerical_specimen
    ADD CONSTRAINT fk_procedure_numerical_specimen FOREIGN KEY (procedure_numerical_specimen_id) REFERENCES core.procedure_numerical_specimen(procedure_numerical_specimen_id);


--
-- Name: observation_phys_chem fk_procedure_phys_chem; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_phys_chem
    ADD CONSTRAINT fk_procedure_phys_chem FOREIGN KEY (procedure_phys_chem_id) REFERENCES core.procedure_phys_chem(procedure_phys_chem_id);


--
-- Name: element fk_profile; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.element
    ADD CONSTRAINT fk_profile FOREIGN KEY (profile_id) REFERENCES core.profile(profile_id);


--
-- Name: result_desc_profile fk_profile; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_desc_profile
    ADD CONSTRAINT fk_profile FOREIGN KEY (profile_id) REFERENCES core.profile(profile_id);


--
-- Name: site fk_profile; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.site
    ADD CONSTRAINT fk_profile FOREIGN KEY (typical_profile) REFERENCES core.profile(profile_id);


--
-- Name: site_project fk_project; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.site_project
    ADD CONSTRAINT fk_project FOREIGN KEY (project_id) REFERENCES core.project(project_id);


--
-- Name: project_organisation fk_project; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.project_organisation
    ADD CONSTRAINT fk_project FOREIGN KEY (project_id) REFERENCES core.project(project_id);


--
-- Name: project_related fk_project_source; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.project_related
    ADD CONSTRAINT fk_project_source FOREIGN KEY (project_source_id) REFERENCES core.project(project_id);


--
-- Name: project_related fk_project_target; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.project_related
    ADD CONSTRAINT fk_project_target FOREIGN KEY (project_target_id) REFERENCES core.project(project_id);


--
-- Name: observation_desc_element fk_property_desc_element; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_element
    ADD CONSTRAINT fk_property_desc_element FOREIGN KEY (property_desc_element_id) REFERENCES core.property_desc_element(property_desc_element_id);


--
-- Name: observation_desc_plot fk_property_desc_plot; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_plot
    ADD CONSTRAINT fk_property_desc_plot FOREIGN KEY (property_desc_plot_id) REFERENCES core.property_desc_plot(property_desc_plot_id);


--
-- Name: observation_desc_profile fk_property_desc_profile; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_profile
    ADD CONSTRAINT fk_property_desc_profile FOREIGN KEY (property_desc_profile_id) REFERENCES core.property_desc_profile(property_desc_profile_id);


--
-- Name: observation_desc_specimen fk_property_desc_specimen; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_specimen
    ADD CONSTRAINT fk_property_desc_specimen FOREIGN KEY (property_desc_specimen_id) REFERENCES core.property_desc_specimen(property_desc_specimen_id);


--
-- Name: observation_desc_surface fk_property_desc_surface; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_surface
    ADD CONSTRAINT fk_property_desc_surface FOREIGN KEY (property_desc_surface_id) REFERENCES core.property_desc_surface(property_desc_surface_id);


--
-- Name: observation_numerical_specimen fk_property_numerical_specimen; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_numerical_specimen
    ADD CONSTRAINT fk_property_numerical_specimen FOREIGN KEY (property_numerical_specimen_id) REFERENCES core.property_numerical_specimen(property_numerical_specimen_id);


--
-- Name: observation_phys_chem fk_property_phys_chem; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_phys_chem
    ADD CONSTRAINT fk_property_phys_chem FOREIGN KEY (property_phys_chem_id) REFERENCES core.property_phys_chem(property_phys_chem_id);


--
-- Name: surface fk_site; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.surface
    ADD CONSTRAINT fk_site FOREIGN KEY (site_id) REFERENCES core.site(site_id);


--
-- Name: plot fk_site; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.plot
    ADD CONSTRAINT fk_site FOREIGN KEY (site_id) REFERENCES core.site(site_id);


--
-- Name: site_project fk_site; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.site_project
    ADD CONSTRAINT fk_site FOREIGN KEY (site_id) REFERENCES core.site(site_id);


--
-- Name: result_desc_specimen fk_specimen; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_desc_specimen
    ADD CONSTRAINT fk_specimen FOREIGN KEY (specimen_id) REFERENCES core.specimen(specimen_id);


--
-- Name: result_numerical_specimen fk_specimen; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_numerical_specimen
    ADD CONSTRAINT fk_specimen FOREIGN KEY (specimen_id) REFERENCES core.specimen(specimen_id);


--
-- Name: specimen fk_specimen_prep_process; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.specimen
    ADD CONSTRAINT fk_specimen_prep_process FOREIGN KEY (specimen_prep_process_id) REFERENCES core.specimen_prep_process(specimen_prep_process_id);


--
-- Name: specimen_prep_process fk_specimen_storage; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.specimen_prep_process
    ADD CONSTRAINT fk_specimen_storage FOREIGN KEY (specimen_storage_id) REFERENCES core.specimen_storage(specimen_storage_id);


--
-- Name: specimen_prep_process fk_specimen_transport; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.specimen_prep_process
    ADD CONSTRAINT fk_specimen_transport FOREIGN KEY (specimen_transport_id) REFERENCES core.specimen_transport(specimen_transport_id);


--
-- Name: profile fk_surface; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.profile
    ADD CONSTRAINT fk_surface FOREIGN KEY (surface_id) REFERENCES core.surface(surface_id);


--
-- Name: result_desc_surface fk_surface; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_desc_surface
    ADD CONSTRAINT fk_surface FOREIGN KEY (surface_id) REFERENCES core.surface(surface_id);


--
-- Name: surface_individual fk_surface; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.surface_individual
    ADD CONSTRAINT fk_surface FOREIGN KEY (surface_id) REFERENCES core.surface(surface_id);


--
-- Name: surface fk_surface; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.surface
    ADD CONSTRAINT fk_surface FOREIGN KEY (super_surface_id) REFERENCES core.surface(surface_id);


--
-- Name: observation_desc_element fk_thesaurus_desc_element; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_element
    ADD CONSTRAINT fk_thesaurus_desc_element FOREIGN KEY (thesaurus_desc_element_id) REFERENCES core.thesaurus_desc_element(thesaurus_desc_element_id);


--
-- Name: observation_desc_plot fk_thesaurus_desc_plot; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_plot
    ADD CONSTRAINT fk_thesaurus_desc_plot FOREIGN KEY (thesaurus_desc_plot_id) REFERENCES core.thesaurus_desc_plot(thesaurus_desc_plot_id);


--
-- Name: observation_desc_profile fk_thesaurus_desc_profile; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_profile
    ADD CONSTRAINT fk_thesaurus_desc_profile FOREIGN KEY (thesaurus_desc_profile_id) REFERENCES core.thesaurus_desc_profile(thesaurus_desc_profile_id);


--
-- Name: observation_desc_specimen fk_thesaurus_desc_specimen; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_specimen
    ADD CONSTRAINT fk_thesaurus_desc_specimen FOREIGN KEY (thesaurus_desc_specimen_id) REFERENCES core.thesaurus_desc_specimen(thesaurus_desc_specimen_id);


--
-- Name: observation_desc_surface fk_thesaurus_desc_surface; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_desc_surface
    ADD CONSTRAINT fk_thesaurus_desc_surface FOREIGN KEY (thesaurus_desc_surface_id) REFERENCES core.thesaurus_desc_surface(thesaurus_desc_surface_id);


--
-- Name: observation_numerical_specimen fk_unit_of_measure; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_numerical_specimen
    ADD CONSTRAINT fk_unit_of_measure FOREIGN KEY (unit_of_measure_id) REFERENCES core.unit_of_measure(unit_of_measure_id);


--
-- Name: observation_phys_chem fk_unit_of_measure; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.observation_phys_chem
    ADD CONSTRAINT fk_unit_of_measure FOREIGN KEY (unit_of_measure_id) REFERENCES core.unit_of_measure(unit_of_measure_id);


--
-- Name: result_desc_element result_desc_element_property_desc_element_id_thesaurus_des_fkey; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_desc_element
    ADD CONSTRAINT result_desc_element_property_desc_element_id_thesaurus_des_fkey FOREIGN KEY (property_desc_element_id, thesaurus_desc_element_id) REFERENCES core.observation_desc_element(property_desc_element_id, thesaurus_desc_element_id);


--
-- Name: result_desc_plot result_desc_plot_property_desc_plot_id_thesaurus_desc_plot_fkey; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_desc_plot
    ADD CONSTRAINT result_desc_plot_property_desc_plot_id_thesaurus_desc_plot_fkey FOREIGN KEY (property_desc_plot_id, thesaurus_desc_plot_id) REFERENCES core.observation_desc_plot(property_desc_plot_id, thesaurus_desc_plot_id);


--
-- Name: result_desc_profile result_desc_profile_property_desc_profile_id_thesaurus_des_fkey; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_desc_profile
    ADD CONSTRAINT result_desc_profile_property_desc_profile_id_thesaurus_des_fkey FOREIGN KEY (property_desc_profile_id, thesaurus_desc_profile_id) REFERENCES core.observation_desc_profile(property_desc_profile_id, thesaurus_desc_profile_id);


--
-- Name: result_desc_specimen result_desc_specimen_property_desc_specimen_id_thesaurus_des_fk; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_desc_specimen
    ADD CONSTRAINT result_desc_specimen_property_desc_specimen_id_thesaurus_des_fk FOREIGN KEY (property_desc_specimen_id, thesaurus_desc_specimen_id) REFERENCES core.observation_desc_specimen(property_desc_specimen_id, thesaurus_desc_specimen_id);


--
-- Name: result_desc_surface result_desc_surface_property_desc_surface_id_thesaurus_des_fkey; Type: FK CONSTRAINT; Schema: core; Owner: -
--

ALTER TABLE ONLY core.result_desc_surface
    ADD CONSTRAINT result_desc_surface_property_desc_surface_id_thesaurus_des_fkey FOREIGN KEY (property_desc_surface_id, thesaurus_desc_surface_id) REFERENCES core.observation_desc_surface(property_desc_surface_id, thesaurus_desc_surface_id);


--
-- Name: individual fk_address; Type: FK CONSTRAINT; Schema: metadata; Owner: -
--

ALTER TABLE ONLY metadata.individual
    ADD CONSTRAINT fk_address FOREIGN KEY (address_id) REFERENCES metadata.address(address_id);


--
-- Name: organisation fk_address; Type: FK CONSTRAINT; Schema: metadata; Owner: -
--

ALTER TABLE ONLY metadata.organisation
    ADD CONSTRAINT fk_address FOREIGN KEY (address_id) REFERENCES metadata.address(address_id);


--
-- Name: organisation_individual fk_individual; Type: FK CONSTRAINT; Schema: metadata; Owner: -
--

ALTER TABLE ONLY metadata.organisation_individual
    ADD CONSTRAINT fk_individual FOREIGN KEY (individual_id) REFERENCES metadata.individual(individual_id);


--
-- Name: organisation_individual fk_organisation; Type: FK CONSTRAINT; Schema: metadata; Owner: -
--

ALTER TABLE ONLY metadata.organisation_individual
    ADD CONSTRAINT fk_organisation FOREIGN KEY (organisation_id) REFERENCES metadata.organisation(organisation_id);


--
-- Name: organisation_unit fk_organisation; Type: FK CONSTRAINT; Schema: metadata; Owner: -
--

ALTER TABLE ONLY metadata.organisation_unit
    ADD CONSTRAINT fk_organisation FOREIGN KEY (organisation_id) REFERENCES metadata.organisation(organisation_id);


--
-- Name: organisation_individual fk_organisation_unit; Type: FK CONSTRAINT; Schema: metadata; Owner: -
--

ALTER TABLE ONLY metadata.organisation_individual
    ADD CONSTRAINT fk_organisation_unit FOREIGN KEY (organisation_unit_id) REFERENCES metadata.organisation_unit(organisation_unit_id);


--
-- Name: organisation fk_parent; Type: FK CONSTRAINT; Schema: metadata; Owner: -
--

ALTER TABLE ONLY metadata.organisation
    ADD CONSTRAINT fk_parent FOREIGN KEY (organisation_id) REFERENCES metadata.organisation(organisation_id);


--
-- PostgreSQL database dump complete
--

