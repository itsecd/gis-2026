--
-- PostgreSQL database dump
--

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-03-18 09:55:56

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
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA IF NOT EXISTS public;

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;

ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 5852 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 230 (class 1259 OID 33885)
-- Name: buildings; Type: TABLE; Schema: public; Owner: gisuser
--

CREATE TABLE public.buildings (
    ogc_fid integer,
    "timestamp" timestamp with time zone,
    version character varying,
    changeset character varying,
    "user" character varying,
    uid character varying,
    "addr:city" character varying,
    "addr:country" character varying,
    "addr:district" character varying,
    "addr:housenumber" character varying,
    "addr:region" character varying,
    "addr:street" character varying,
    building character varying,
    "building:levels" character varying,
    highway character varying,
    landuse character varying,
    name character varying,
    "name:ru" character varying,
    "natural" character varying,
    official_status character varying,
    place character varying,
    water character varying,
    wikidata character varying,
    wikipedia character varying,
    id character varying,
    geom public.geometry(Geometry,4326)
);


ALTER TABLE public.buildings OWNER TO gisuser;

--
-- TOC entry 231 (class 1259 OID 33904)
-- Name: roads; Type: TABLE; Schema: public; Owner: gisuser
--

CREATE TABLE public.roads (
    ogc_fid integer,
    "timestamp" timestamp with time zone,
    version character varying,
    changeset character varying,
    "user" character varying,
    uid character varying,
    "addr:city" character varying,
    "addr:country" character varying,
    "addr:district" character varying,
    "addr:housenumber" character varying,
    "addr:region" character varying,
    "addr:street" character varying,
    building character varying,
    "building:levels" character varying,
    highway character varying,
    landuse character varying,
    name character varying,
    "name:ru" character varying,
    "natural" character varying,
    official_status character varying,
    place character varying,
    water character varying,
    wikidata character varying,
    wikipedia character varying,
    id character varying,
    geom public.geometry(Geometry,4326)
);


ALTER TABLE public.roads OWNER TO gisuser;

--
-- TOC entry 227 (class 1259 OID 33860)
-- Name: tmp_layer; Type: TABLE; Schema: public; Owner: gisuser
--

CREATE TABLE public.tmp_layer (
    ogc_fid integer NOT NULL,
    "timestamp" timestamp with time zone,
    version character varying,
    changeset character varying,
    "user" character varying,
    uid character varying,
    "addr:city" character varying,
    "addr:country" character varying,
    "addr:district" character varying,
    "addr:housenumber" character varying,
    "addr:region" character varying,
    "addr:street" character varying,
    building character varying,
    "building:levels" character varying,
    highway character varying,
    landuse character varying,
    name character varying,
    "name:ru" character varying,
    "natural" character varying,
    official_status character varying,
    place character varying,
    water character varying,
    wikidata character varying,
    wikipedia character varying,
    id character varying,
    geom public.geometry(Geometry,4326)
);


ALTER TABLE public.tmp_layer OWNER TO gisuser;

--
-- TOC entry 226 (class 1259 OID 33859)
-- Name: tmp_layer_ogc_fid_seq; Type: SEQUENCE; Schema: public; Owner: gisuser
--

CREATE SEQUENCE public.tmp_layer_ogc_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tmp_layer_ogc_fid_seq OWNER TO gisuser;

--
-- TOC entry 5853 (class 0 OID 0)
-- Dependencies: 226
-- Name: tmp_layer_ogc_fid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gisuser
--

ALTER SEQUENCE public.tmp_layer_ogc_fid_seq OWNED BY public.tmp_layer.ogc_fid;


--
-- TOC entry 5683 (class 2604 OID 33863)
-- Name: tmp_layer ogc_fid; Type: DEFAULT; Schema: public; Owner: gisuser
--

ALTER TABLE ONLY public.tmp_layer ALTER COLUMN ogc_fid SET DEFAULT nextval('public.tmp_layer_ogc_fid_seq'::regclass);


--
-- TOC entry 5845 (class 0 OID 33885)
-- Dependencies: 230
-- Data for Name: buildings; Type: TABLE DATA; Schema: public; Owner: gisuser
--

INSERT INTO public.buildings (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (3, '2026-02-11 08:29:28+04', '3', '178387552', 'AvtoBBus', '23787447', 'Культура', NULL, NULL, '4', NULL, 'Заречный переулок', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788468', '0106000020E61000000100000001030000000100000005000000B8640BF7805249409E1095A185A24A401D588E90815249405884ACB882A24A40E5EA6C6D865249404CD6F21483A24A4080F7E9D385524940FDA204FD85A24A40B8640BF7805249409E1095A185A24A40');
INSERT INTO public.buildings (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (4, '2026-02-11 08:29:28+04', '3', '178387552', 'AvtoBBus', '23787447', 'Культура', NULL, NULL, '5', NULL, 'Заречный переулок', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788469', '0106000020E61000000100000001030000000100000005000000F2704C6084524940915CA38A87A24A40F57700D5895249407976F9D687A24A405BCDDF2989524940F485353A8CA24A40C30655B4835249400C6CDFED8BA24A40F2704C6084524940915CA38A87A24A40');
INSERT INTO public.buildings (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (5, '2022-08-31 07:35:04+04', '2', '125593541', 'maxlax', '15972813', NULL, NULL, NULL, '8', NULL, 'Рябиновая улица', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788532', '0106000020E6100000010000000103000000010000000500000011E8A793C7524940F036CA5587A24A402766BD18CA52494027E0320285A24A40C0328001CE524940C19EC08586A24A403F74417DCB5249408AF557D988A24A4011E8A793C7524940F036CA5587A24A40');
INSERT INTO public.buildings (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (7, '2022-08-31 07:35:04+04', '2', '125593541', 'maxlax', '15972813', NULL, NULL, NULL, '6', NULL, 'Рябиновая улица', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788534', '0106000020E61000000100000001030000000100000005000000004C63C5BA5249409B65057580A24A4052B41776BD524940BFD18E1B7EA24A401B67D311C0524940B309302C7FA24A40C9FE1E61BD5249408E9DA68581A24A40004C63C5BA5249409B65057580A24A40');
INSERT INTO public.buildings (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (8, '2022-08-31 07:35:04+04', '2', '125593541', 'maxlax', '15972813', NULL, NULL, NULL, '5', NULL, 'Рябиновая улица', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788535', '0106000020E61000000100000001030000000100000005000000205D11A1B652494015A6947C91A24A4054F4D1F3B852494063EDEF6C8FA24A407C81B45ABB524940E6B1666490A24A40DDA9CA08B95249402C2AE27492A24A40205D11A1B652494015A6947C91A24A40');
INSERT INTO public.buildings (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (9, '2026-02-11 08:29:28+04', '3', '178387552', 'AvtoBBus', '23787447', 'Культура', NULL, NULL, '7', NULL, 'Заречный переулок', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788540', '0106000020E61000000100000001030000000100000005000000AFA01FFC7A52494017D522A298A24A405F950B957F5249404182E2C798A24A402A82493B7F524940458FCEAF9CA24A407A8D5DA27A524940862238899CA24A40AFA01FFC7A52494017D522A298A24A40');
INSERT INTO public.buildings (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (10, '2022-08-31 07:35:04+04', '1', '125593541', 'maxlax', '15972813', NULL, NULL, NULL, '4', NULL, 'Рябиновая улица', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1090644550', '0106000020E6100000010000000103000000010000000500000026039BCEA95249402C8EB9217CA24A40669E019AAD5249405DC2A1B778A24A405E8DA2BDB0524940DFE23CF779A24A408A3265F1AC524940AEAE54617DA24A4026039BCEA95249402C8EB9217CA24A40');
INSERT INTO public.buildings (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (12, '2026-02-04 14:59:45+04', '1', '178089258', 'AvtoBBus', '23787447', 'Культура', NULL, NULL, '11', NULL, 'улица Зеленая', 'house', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1474132826', '0106000020E610000001000000010300000001000000050000002E6E484849524940BF9D44847FA24A4048F949B54F524940E84A04AA7FA24A40DD5CFC6D4F524940CE6C57E883A24A405891D101495249401000C1C183A24A402E6E484849524940BF9D44847FA24A40');
INSERT INTO public.buildings (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (13, '2026-02-04 14:59:45+04', '1', '178089258', 'AvtoBBus', '23787447', 'Культура', NULL, NULL, '10А', NULL, 'улица Зеленая', 'house', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1474132827', '0106000020E610000001000000010300000001000000050000004514EEF03252494060C9552C7EA24A404272D7B738524940F5E450757EA24A40E9B6442E38524940A5F3E15982A24A40579984663252494011D8E61082A24A404514EEF03252494060C9552C7EA24A40');
INSERT INTO public.buildings (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (14, '2026-02-11 08:29:28+04', '2', '178387552', 'AvtoBBus', '23787447', 'Культура', NULL, NULL, '6', NULL, 'Заречный переулок', 'house', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1474132832', '0106000020E610000001000000010300000001000000050000002F53EE9980524940D80BAAB294A24A4035C86EB081524940A4607C8791A24A40682BE56B855249400926EDFC91A24A4063B66455845249403DD11A2895A24A402F53EE9980524940D80BAAB294A24A40');
INSERT INTO public.buildings (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (15, '2026-02-04 14:59:45+04', '1', '178089258', 'AvtoBBus', '23787447', 'Культура', NULL, NULL, '3А', NULL, 'Заречный переулок', 'house', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1474132833', '0106000020E6100000010000000103000000010000000500000056139F967A5249403E6F74DF7BA24A40DBA73EEB7552494085ABA8667BA24A4040F7E5CC765249404BFB8B4578A24A4050221D797B52494004BF57BE78A24A4056139F967A5249403E6F74DF7BA24A40');
INSERT INTO public.buildings (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (16, '2026-02-11 08:29:28+04', '2', '178387552', 'AvtoBBus', '23787447', 'Культура', NULL, NULL, '5А', NULL, 'Заречный переулок', 'house', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1474132834', '0106000020E6100000010000000103000000010000000500000045DCF703795249401968887489A24A40A7583508735249404F67DDF588A24A40E3CC0AA073524940686D646886A24A408050CD9B79524940C72DE6E786A24A4045DCF703795249401968887489A24A40');


--
-- TOC entry 5846 (class 0 OID 33904)
-- Dependencies: 231
-- Data for Name: roads; Type: TABLE DATA; Schema: public; Owner: gisuser
--

INSERT INTO public.roads (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (17, '2022-08-31 07:35:04+04', '2', '125593541', 'maxlax', '15972813', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'residential', NULL, 'Заречный переулок', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788470', '0105000020E6100000010000000102000000040000006745D4449F5249409A6DB8D969A24A407D5E4C8E96524940727385D272A24A401ABFF04A92524940C710001C7BA24A40E84D452A8C524940E0FDA7D19AA24A40');
INSERT INTO public.roads (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (18, '2026-02-04 14:59:45+04', '3', '178089258', 'AvtoBBus', '23787447', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'residential', NULL, 'Зелёная улица', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788541', '0105000020E610000001000000010200000007000000EDECD0555F5249401FDCF86E4EA24A407CB5A33847524940DDB3AED172A24A407F85CC9541524940FCF5AF517BA24A4057E47C563E524940EA735A5C88A24A40FEE0325D3E5249409C4F1DAB94A24A407D0E87003B52494017F2086EA4A24A40D260095A375249400CF7DBE8ADA24A40');


--
-- TOC entry 5682 (class 0 OID 33090)
-- Dependencies: 222
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: gisuser
--



--
-- TOC entry 5844 (class 0 OID 33860)
-- Dependencies: 227
-- Data for Name: tmp_layer; Type: TABLE DATA; Schema: public; Owner: gisuser
--

INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (1, '2016-10-11 09:15:17+04', '1', '42792232', 'lamax', '1860634', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'water', NULL, NULL, 'lake', NULL, NULL, 'way/446942624', '0106000020E61000000100000001030000000100000025000000AF10B11C7C524940370C303DABA24A402C3295D97B5249409E955929A9A24A40E3EF28DF7D5249403904334BA7A24A40C4CA0D2B81524940F85C5C99A6A24A400FCC762A85524940C22FF5F3A6A24A409719DB1088524940F1DB6B9CA8A24A40D19BE50D8B5249407FBE2D58AAA24A40881A3B9798524940A99F3715A9A24A4036A15A8EA15249403904334BA7A24A40B5D1EFB1AA52494074305173A8A24A409DF4BEF1B55249403F4BA13DA8A24A4046F2F0F9BC5249400966F107A8A24A4024E93F10C552494074BA87DFA8A24A4007697C15CF5249400FAD5FFAA8A24A40201620C0D85249403F4BA13DA8A24A40081F4AB4E452494014F4CDECA9A24A40B6BF0EF7EC5249401FF87365ABA24A40993F4BFCF65249409B0DE83BAEA24A40E7E50BB50153494081EDBB7DB1A24A40FB09C270095349406857C62BB5A24A409B0FBEE60B53494043BD2A61B7A24A40CA6548BA0B534940B98B3045B9A24A408C74F51906534940299DFEA2BAA24A40433D7D04FE524940299DFEA2BAA24A40F15BBE3FEF52494084A6800FB9A24A40A39B583BE552494048049953B8A24A405A982ABDDB524940E36C3A02B8A24A40D712F241CF5249406857C62BB5A24A408A86D6D4C35249408C7B9862B3A24A40CD4A49C5B5524940C7A7B68AB4A24A403B2A487DA35249406857C62BB5A24A40881A3B9798524940629A8EA5B4A24A40752ACF728F5249402227028BB2A24A406220BE02875249407C3084F7B0A24A4070C67AB4825249408EFDD1DCAFA24A40410697338052494018A5958CADA24A40AF10B11C7C524940370C303DABA24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (2, '2017-07-04 16:20:22+04', '1', '50033442', 'lamax', '1860634', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'residential', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/505048618', '0106000020E6100000010000000103000000010000001000000099A8948DBD524940CC3DC9C27CA24A402B65BE28E65249406B2C616D8CA24A401D9A6846F552494092F58A5D91A24A401558005306534940B315EA9F96A24A405D5B2ED10F5349405E53D62599A24A40EF7B2F1922534940D8D2A3A99EA24A40C32165D5315349407CD11E2FA4A24A40F859C05F27534940C5BAA761AEA24A40106B3BB71A534940D9092FC1A9A24A40530A15771753494084D151B3ACA24A404EA6C0B80A534940CE058948A8A24A40C10EAD5FFA5249403CE8C880A2A24A40DEF24707DA524940F47409E297A24A40343F4860BD5249408B636E089FA24A40F47D82D5A252494083633B8496A24A4099A8948DBD524940CC3DC9C27CA24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (3, '2026-02-11 08:29:28+04', '3', '178387552', 'AvtoBBus', '23787447', 'Культура', NULL, NULL, '4', NULL, 'Заречный переулок', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788468', '0106000020E61000000100000001030000000100000005000000B8640BF7805249409E1095A185A24A401D588E90815249405884ACB882A24A40E5EA6C6D865249404CD6F21483A24A4080F7E9D385524940FDA204FD85A24A40B8640BF7805249409E1095A185A24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (4, '2026-02-11 08:29:28+04', '3', '178387552', 'AvtoBBus', '23787447', 'Культура', NULL, NULL, '5', NULL, 'Заречный переулок', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788469', '0106000020E61000000100000001030000000100000005000000F2704C6084524940915CA38A87A24A40F57700D5895249407976F9D687A24A405BCDDF2989524940F485353A8CA24A40C30655B4835249400C6CDFED8BA24A40F2704C6084524940915CA38A87A24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (5, '2022-08-31 07:35:04+04', '2', '125593541', 'maxlax', '15972813', NULL, NULL, NULL, '8', NULL, 'Рябиновая улица', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788532', '0106000020E6100000010000000103000000010000000500000011E8A793C7524940F036CA5587A24A402766BD18CA52494027E0320285A24A40C0328001CE524940C19EC08586A24A403F74417DCB5249408AF557D988A24A4011E8A793C7524940F036CA5587A24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (6, '2019-07-12 09:18:05+04', '1', '72162568', 'lamax', '1860634', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'construction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788533', '0106000020E610000001000000010300000001000000050000008600E0D8B3524940BBAD3E6887A24A40BAF3C473B6524940E64CC92885A24A40CA38A16BBA524940C1FAE4CD86A24A409645BCD0B7524940965B5A0D89A24A408600E0D8B3524940BBAD3E6887A24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (7, '2022-08-31 07:35:04+04', '2', '125593541', 'maxlax', '15972813', NULL, NULL, NULL, '6', NULL, 'Рябиновая улица', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788534', '0106000020E61000000100000001030000000100000005000000004C63C5BA5249409B65057580A24A4052B41776BD524940BFD18E1B7EA24A401B67D311C0524940B309302C7FA24A40C9FE1E61BD5249408E9DA68581A24A40004C63C5BA5249409B65057580A24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (8, '2022-08-31 07:35:04+04', '2', '125593541', 'maxlax', '15972813', NULL, NULL, NULL, '5', NULL, 'Рябиновая улица', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788535', '0106000020E61000000100000001030000000100000005000000205D11A1B652494015A6947C91A24A4054F4D1F3B852494063EDEF6C8FA24A407C81B45ABB524940E6B1666490A24A40DDA9CA08B95249402C2AE27492A24A40205D11A1B652494015A6947C91A24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (9, '2026-02-11 08:29:28+04', '3', '178387552', 'AvtoBBus', '23787447', 'Культура', NULL, NULL, '7', NULL, 'Заречный переулок', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788540', '0106000020E61000000100000001030000000100000005000000AFA01FFC7A52494017D522A298A24A405F950B957F5249404182E2C798A24A402A82493B7F524940458FCEAF9CA24A407A8D5DA27A524940862238899CA24A40AFA01FFC7A52494017D522A298A24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (10, '2022-08-31 07:35:04+04', '1', '125593541', 'maxlax', '15972813', NULL, NULL, NULL, '4', NULL, 'Рябиновая улица', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1090644550', '0106000020E6100000010000000103000000010000000500000026039BCEA95249402C8EB9217CA24A40669E019AAD5249405DC2A1B778A24A405E8DA2BDB0524940DFE23CF779A24A408A3265F1AC524940AEAE54617DA24A4026039BCEA95249402C8EB9217CA24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (11, '2024-11-27 19:08:15+04', '2', '159664700', 'Руслан Т', '12947635', NULL, 'RU', 'Кинельский район', NULL, 'Самарская область', NULL, NULL, NULL, NULL, NULL, 'Культура', 'Культура', NULL, 'ru:посёлок', 'village', NULL, 'Q18783091', 'ru:Культура (Кинельский район)', 'way/1263632710', '0106000020E610000001000000010300000001000000490000002BB528FDCE51494033535A7F4BA24A40D84AE82E895149402FE301C00CA24A409C35785F95514940551344DD07A24A40F9179C1C995149401DB74E1201A24A4065564A2AAE5149407E1EA33CF3A14A40EA3B646FCE5149409FD623C3E0A14A40C018DBB5CE5149404769801CDEA14A40CEF5227FD55149402F5D77A9C7A14A401844FF5FD05149403F9F1221BFA14A4070F0E082C751494007431D56B8A14A402651D43EC2514940B75CA21FB2A14A400554933BC7514940F91ADD9CA5A14A407FCD284CCE514940E94BCA38A1A14A40C6F8307BD951494015EE4BEC90A14A40A897CE3DDA5149409C7AEE4E88A14A407EA257A8DA514940D2A755F487A14A404557D8C2E2514940938B31B08EA14A40D2D5671888524940B85CFDD824A24A40F159E894915249409082A7902BA24A40E8B2E26597524940B773AB3132A24A407E95D7A5A1524940AF2BC13D2AA24A404D6B2E92D1524940FFD2FDF73BA24A40BE0FAC4FDE524940926CBFC63FA24A4004EDC49BEB5249406258B4EF40A24A408C43A275F9524940DAD605723FA24A405FDD674B0C534940F9E7B34D3BA24A40C6B7C19A145349401891CDFA39A24A40E371512D2253494077514F7A3AA24A407D3958A42E5349408754AC753DA24A40B68A598A3F53494001309E4143A24A40A822707F89534940FDBBE3B963A24A400EFED9EACD5349409C2045F872A24A40FB8CB04DCF534940C6CB892C88A24A40CF9F36AAD35349401C7BF65CA6A24A409CE09BA6CF534940A39410ACAAA24A40A8F3F285DA534940738005D5ABA24A401CD0D2156C5449402511D033ACA24A4024A188A0C55449407C4A2943B0A24A409AAECC00BC54494080D01F3FC0A24A40B5C6FBCCB4544940C82F7205CAA24A401BD1E231A8544940406F850BD4A24A407EF32C5272544940E31698BAD0A24A40DCD440F339544940320807D6CCA24A40BE78509A1754494001C0B167CFA24A40DC31D010E95349405A619FA5D0A24A401FFBB4E5B7534940CA58C8B7D2A24A403DB4345C89534940E1AE038CD3A24A40C7AB62E06F534940E30BA4D5DAA24A401E0714A05C534940F93889F7D2A24A400783C6A75B53494031A072A7CFA24A4001FC53AA445349400E7162FEC0A24A4068A89BD54C53494095C9BAC9B9A24A4052A280481A534940A3AEB5F7A9A24A40CC1A063DE5524940A90C88B59DA24A404CC9CDCBBC52494032C280CA9DA24A4059D6A2AAAE524940C1960D219DA24A40383701E19E524940AB741CE49AA24A40C2514DA48F524940E2DB059497A24A403FFCA13E6E524940ED1978A4B0A24A4032D81E076F52494025D291B7B7A24A409E1DBAEA4B524940F60B76C3B6A24A4068661CD94B52494044AFF5FBB4A24A40F2DE07D627524940FD5E549CB4A24A40FA34DDA1175249404C5BB79CA6A24A40D1B82693095249401A5D948F93A24A40F6775B8EFC514940694E03AB8FA24A4016246C2EED514940FF9A070B82A24A404BDB0940ED5149401E5EC60380A24A40C4036FEDE951494006088B2F7FA24A40B30B06D7DC5149405DA5BBEB6CA24A401844FF5FD0514940A2BD55325BA24A409B36887BD1514940BBD408FD4CA24A402BB528FDCE51494033535A7F4BA24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (12, '2026-02-04 14:59:45+04', '1', '178089258', 'AvtoBBus', '23787447', 'Культура', NULL, NULL, '11', NULL, 'улица Зеленая', 'house', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1474132826', '0106000020E610000001000000010300000001000000050000002E6E484849524940BF9D44847FA24A4048F949B54F524940E84A04AA7FA24A40DD5CFC6D4F524940CE6C57E883A24A405891D101495249401000C1C183A24A402E6E484849524940BF9D44847FA24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (13, '2026-02-04 14:59:45+04', '1', '178089258', 'AvtoBBus', '23787447', 'Культура', NULL, NULL, '10А', NULL, 'улица Зеленая', 'house', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1474132827', '0106000020E610000001000000010300000001000000050000004514EEF03252494060C9552C7EA24A404272D7B738524940F5E450757EA24A40E9B6442E38524940A5F3E15982A24A40579984663252494011D8E61082A24A404514EEF03252494060C9552C7EA24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (14, '2026-02-11 08:29:28+04', '2', '178387552', 'AvtoBBus', '23787447', 'Культура', NULL, NULL, '6', NULL, 'Заречный переулок', 'house', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1474132832', '0106000020E610000001000000010300000001000000050000002F53EE9980524940D80BAAB294A24A4035C86EB081524940A4607C8791A24A40682BE56B855249400926EDFC91A24A4063B66455845249403DD11A2895A24A402F53EE9980524940D80BAAB294A24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (15, '2026-02-04 14:59:45+04', '1', '178089258', 'AvtoBBus', '23787447', 'Культура', NULL, NULL, '3А', NULL, 'Заречный переулок', 'house', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1474132833', '0106000020E6100000010000000103000000010000000500000056139F967A5249403E6F74DF7BA24A40DBA73EEB7552494085ABA8667BA24A4040F7E5CC765249404BFB8B4578A24A4050221D797B52494004BF57BE78A24A4056139F967A5249403E6F74DF7BA24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (16, '2026-02-11 08:29:28+04', '2', '178387552', 'AvtoBBus', '23787447', 'Культура', NULL, NULL, '5А', NULL, 'Заречный переулок', 'house', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1474132834', '0106000020E6100000010000000103000000010000000500000045DCF703795249401968887489A24A40A7583508735249404F67DDF588A24A40E3CC0AA073524940686D646886A24A408050CD9B79524940C72DE6E786A24A4045DCF703795249401968887489A24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (17, '2022-08-31 07:35:04+04', '2', '125593541', 'maxlax', '15972813', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'residential', NULL, 'Заречный переулок', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788470', '0105000020E6100000010000000102000000040000006745D4449F5249409A6DB8D969A24A407D5E4C8E96524940727385D272A24A401ABFF04A92524940C710001C7BA24A40E84D452A8C524940E0FDA7D19AA24A40');
INSERT INTO public.tmp_layer (ogc_fid, "timestamp", version, changeset, "user", uid, "addr:city", "addr:country", "addr:district", "addr:housenumber", "addr:region", "addr:street", building, "building:levels", highway, landuse, name, "name:ru", "natural", official_status, place, water, wikidata, wikipedia, id, geom) VALUES (18, '2026-02-04 14:59:45+04', '3', '178089258', 'AvtoBBus', '23787447', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'residential', NULL, 'Зелёная улица', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/703788541', '0105000020E610000001000000010200000007000000EDECD0555F5249401FDCF86E4EA24A407CB5A33847524940DDB3AED172A24A407F85CC9541524940FCF5AF517BA24A4057E47C563E524940EA735A5C88A24A40FEE0325D3E5249409C4F1DAB94A24A407D0E87003B52494017F2086EA4A24A40D260095A375249400CF7DBE8ADA24A40');


--
-- TOC entry 5854 (class 0 OID 0)
-- Dependencies: 226
-- Name: tmp_layer_ogc_fid_seq; Type: SEQUENCE SET; Schema: public; Owner: gisuser
--

SELECT pg_catalog.setval('public.tmp_layer_ogc_fid_seq', 18, true);


--
-- TOC entry 5689 (class 2606 OID 33868)
-- Name: tmp_layer tmp_layer_pkey; Type: CONSTRAINT; Schema: public; Owner: gisuser
--

ALTER TABLE ONLY public.tmp_layer
    ADD CONSTRAINT tmp_layer_pkey PRIMARY KEY (ogc_fid);


--
-- TOC entry 5690 (class 1259 OID 33890)
-- Name: idx_buildings_geom; Type: INDEX; Schema: public; Owner: gisuser
--

CREATE INDEX idx_buildings_geom ON public.buildings USING gist (geom);


CREATE INDEX idx_roads_geom ON public.roads USING gist (geom);

--
-- TOC entry 5687 (class 1259 OID 33869)
-- Name: tmp_layer_geom_geom_idx; Type: INDEX; Schema: public; Owner: gisuser
--

CREATE INDEX tmp_layer_geom_geom_idx ON public.tmp_layer USING gist (geom);


-- Completed on 2026-03-18 09:55:57

--
-- PostgreSQL database dump complete
--

