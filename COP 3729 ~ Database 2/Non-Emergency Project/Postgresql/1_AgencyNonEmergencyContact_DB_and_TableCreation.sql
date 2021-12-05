BEGIN;

CREATE DATABASE "AgencyNonEmergencyContact"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

------------------------------------------------------------

CREATE TABLE IF NOT EXISTS public.agencies
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    "nonEmergencyPhone" character varying COLLATE pg_catalog."default" NOT NULL,
    jurisdiction polygon NOT NULL,
    CONSTRAINT agencies_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.agencies
    OWNER to postgres;

------------------------------------------------------------

CREATE TABLE IF NOT EXISTS public.counties
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    state_id integer NOT NULL,
    CONSTRAINT counties_pkey PRIMARY KEY (id),
    CONSTRAINT counties_state_id_fkey FOREIGN KEY (state_id)
        REFERENCES public.states (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public.counties
    OWNER to postgres;

------------------------------------------------------------

CREATE TABLE IF NOT EXISTS public.counties_agencies
(
    counties_agencies_pk integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    agency_id integer NOT NULL,
    county_id integer NOT NULL,
    CONSTRAINT counties_agencies_pkey PRIMARY KEY (counties_agencies_pk),
    CONSTRAINT counties_agencies_agency_id_fkey FOREIGN KEY (agency_id)
        REFERENCES public.agencies (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT counties_agencies_county_id_fkey FOREIGN KEY (county_id)
        REFERENCES public.counties (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public.counties_agencies
    OWNER to postgres;

------------------------------------------------------------

CREATE TABLE IF NOT EXISTS public.localities
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    type character varying COLLATE pg_catalog."default" NOT NULL,
    county_id integer,
    state_id integer NOT NULL,
    CONSTRAINT localities_pkey PRIMARY KEY (id),
    CONSTRAINT localities_county_id_fkey FOREIGN KEY (county_id)
        REFERENCES public.counties (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT localities_state_id_fkey FOREIGN KEY (state_id)
        REFERENCES public.states (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public.localities
    OWNER to postgres;

------------------------------------------------------------

CREATE TABLE IF NOT EXISTS public.localities_agencies
(
    localities_agencies_pk integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    agency_id integer NOT NULL,
    locality_id integer NOT NULL,
    CONSTRAINT localities_agencies_pkey PRIMARY KEY (localities_agencies_pk),
    CONSTRAINT localities_agencies_agency_id_fkey FOREIGN KEY (agency_id)
        REFERENCES public.agencies (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT localities_agencies_locality_id_fkey FOREIGN KEY (locality_id)
        REFERENCES public.localities (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public.localities_agencies
    OWNER to postgres;

------------------------------------------------------------

CREATE TABLE IF NOT EXISTS public.states
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    code character(2) COLLATE pg_catalog."default" NOT NULL,
    name character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT states_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.states
    OWNER to postgres;

------------------------------------------------------------

CREATE TABLE IF NOT EXISTS public.states_agencies
(
    states_agency_pk integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    agency_id integer NOT NULL,
    state_id integer NOT NULL,
    CONSTRAINT states_agencies_pkey PRIMARY KEY (states_agency_pk),
    CONSTRAINT states_agencies_agency_id_fkey FOREIGN KEY (agency_id)
        REFERENCES public.agencies (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT states_agencies_state_id_fkey FOREIGN KEY (state_id)
        REFERENCES public.states (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public.states_agencies
    OWNER to postgres;

END;