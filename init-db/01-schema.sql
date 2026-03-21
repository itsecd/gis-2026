CREATE EXTENSION IF NOT EXISTS postgis;
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg110+2)
-- Dumped by pg_dump version 16.4 (Debian 16.4-1.pgdg110+2)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: buildings; Type: TABLE; Schema: public; Owner: gisuser
--

CREATE TABLE public.buildings (
    ogc_fid integer NOT NULL,
    wkb_geometry bytea,
    "timestamp" timestamp with time zone,
    version character varying,
    changeset character varying,
    "user" character varying,
    uid character varying,
    "addr:city" character varying,
    "addr:housenumber" character varying,
    "addr:street" character varying,
    building character varying,
    "building:levels" character varying,
    highway character varying,
    maxspeed character varying,
    name character varying,
    id character varying,
    geom public.geometry(MultiPolygon,4326)
);


ALTER TABLE public.buildings OWNER TO gisuser;

--
-- Name: poi; Type: TABLE; Schema: public; Owner: gisuser
--

CREATE TABLE public.poi (
    ogc_fid integer NOT NULL,
    wkb_geometry bytea,
    "timestamp" timestamp with time zone,
    version character varying,
    changeset character varying,
    "user" character varying,
    uid character varying,
    "addr:city" character varying,
    "addr:housenumber" character varying,
    "addr:street" character varying,
    building character varying,
    "building:levels" character varying,
    highway character varying,
    maxspeed character varying,
    name character varying,
    id character varying,
    geom public.geometry(Point,4326)
);


ALTER TABLE public.poi OWNER TO gisuser;

--
-- Name: roads; Type: TABLE; Schema: public; Owner: gisuser
--

CREATE TABLE public.roads (
    ogc_fid integer NOT NULL,
    wkb_geometry bytea,
    "timestamp" timestamp with time zone,
    version character varying,
    changeset character varying,
    "user" character varying,
    uid character varying,
    "addr:city" character varying,
    "addr:housenumber" character varying,
    "addr:street" character varying,
    building character varying,
    "building:levels" character varying,
    highway character varying,
    maxspeed character varying,
    name character varying,
    id character varying,
    geom public.geometry(MultiLineString,4326)
);


ALTER TABLE public.roads OWNER TO gisuser;

--
-- Name: buildings buildings_pkey; Type: CONSTRAINT; Schema: public; Owner: gisuser
--

ALTER TABLE ONLY public.buildings
    ADD CONSTRAINT buildings_pkey PRIMARY KEY (ogc_fid);


--
-- Name: poi poi_pkey; Type: CONSTRAINT; Schema: public; Owner: gisuser
--

ALTER TABLE ONLY public.poi
    ADD CONSTRAINT poi_pkey PRIMARY KEY (ogc_fid);


--
-- Name: roads roads_pkey; Type: CONSTRAINT; Schema: public; Owner: gisuser
--

ALTER TABLE ONLY public.roads
    ADD CONSTRAINT roads_pkey PRIMARY KEY (ogc_fid);


--
-- PostgreSQL database dump complete
--

