--
-- PostgreSQL database cluster dump
--

-- Started on 2026-04-11 13:46:02

\restrict V5UNmGKElfBYUBARuW4Z3zv8666XvYdQxwcbbkLH3CeYXAhspg4wg8X6bhEIrDI

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE gisuser;
ALTER ROLE gisuser WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;

--
-- User Configurations
--






\unrestrict V5UNmGKElfBYUBARuW4Z3zv8666XvYdQxwcbbkLH3CeYXAhspg4wg8X6bhEIrDI

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict LDSGgW4x03iPRG90aEWZ9bNLzfUpvTcQNtYu7VWdjjN97Y6c2mcj9uM4Vx5tWGH

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg110+2)
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-11 13:46:02

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2026-04-11 13:46:02

--
-- PostgreSQL database dump complete
--

\unrestrict LDSGgW4x03iPRG90aEWZ9bNLzfUpvTcQNtYu7VWdjjN97Y6c2mcj9uM4Vx5tWGH

--
-- Database "gis" dump
--

--
-- PostgreSQL database dump
--

\restrict tON10uyOBNUhhlOEkOgqxPI3tiBW8PbF4kuL4Wxak6OcQy2bJjERNOhzG9dVOfb

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg110+2)
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-11 13:46:02

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 4295 (class 1262 OID 16384)
-- Name: gis; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE gis WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


\unrestrict tON10uyOBNUhhlOEkOgqxPI3tiBW8PbF4kuL4Wxak6OcQy2bJjERNOhzG9dVOfb
\connect gis
\restrict tON10uyOBNUhhlOEkOgqxPI3tiBW8PbF4kuL4Wxak6OcQy2bJjERNOhzG9dVOfb

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 7 (class 2615 OID 17498)
-- Name: ogr_system_tables; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA ogr_system_tables;


--
-- TOC entry 2 (class 3079 OID 16389)
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- TOC entry 4296 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


--
-- TOC entry 957 (class 1255 OID 17499)
-- Name: event_trigger_function_for_metadata(); Type: FUNCTION; Schema: ogr_system_tables; Owner: -
--

CREATE FUNCTION ogr_system_tables.event_trigger_function_for_metadata() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
    obj record;
BEGIN
  IF has_schema_privilege('ogr_system_tables', 'USAGE') THEN
   IF has_table_privilege('ogr_system_tables.metadata', 'DELETE') THEN
    FOR obj IN SELECT * FROM pg_event_trigger_dropped_objects()
    LOOP
        IF obj.object_type = 'table' THEN
            DELETE FROM ogr_system_tables.metadata m 
            WHERE m.schema_name = obj.schema_name AND m.table_name = obj.object_name;
        END IF;
    END LOOP;
   END IF;
  END IF;
END;
$$;


--
-- TOC entry 606 (class 1255 OID 17508)
-- Name: update_geom_timestamp(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.update_geom_timestamp() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF NEW.geom IS NOT NULL THEN
        NEW.geom = ST_SetSRID(NEW.geom, 4326);
    END IF;
    RETURN NEW;
END;
$$;


--
-- TOC entry 226 (class 1259 OID 17505)
-- Name: metadata_id_seq; Type: SEQUENCE; Schema: ogr_system_tables; Owner: -
--

CREATE SEQUENCE ogr_system_tables.metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 225 (class 1259 OID 17500)
-- Name: metadata; Type: TABLE; Schema: ogr_system_tables; Owner: -
--

CREATE TABLE ogr_system_tables.metadata (
    id integer DEFAULT nextval('ogr_system_tables.metadata_id_seq'::regclass) NOT NULL,
    schema_name text NOT NULL,
    table_name text NOT NULL,
    metadata text
);


--
-- TOC entry 222 (class 1259 OID 17474)
-- Name: buildings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.buildings (
    id integer NOT NULL,
    building character varying,
    building_levels character varying,
    name character varying,
    housenumber character varying,
    street character varying,
    city character varying,
    geom public.geometry(Polygon,4326)
);


--
-- TOC entry 224 (class 1259 OID 17488)
-- Name: poi; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.poi (
    id integer NOT NULL,
    name character varying,
    shop character varying,
    opening_hours character varying,
    payment_cash character varying,
    payment_debit_cards character varying,
    geom public.geometry(Point,4326)
);


--
-- TOC entry 223 (class 1259 OID 17481)
-- Name: roads; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.roads (
    id integer NOT NULL,
    highway character varying,
    name character varying,
    surface character varying,
    oneway character varying,
    tracktype character varying,
    geom public.geometry(LineString,4326)
);


--
-- TOC entry 4288 (class 0 OID 17500)
-- Dependencies: 225
-- Data for Name: metadata; Type: TABLE DATA; Schema: ogr_system_tables; Owner: -
--

COPY ogr_system_tables.metadata (id, schema_name, table_name, metadata) FROM stdin;
1	public	tmp_layer	<GDALMetadata>\r\n  <Metadata domain="NATIVE_DATA">\r\n    <MDI key="NATIVE_DATA">{ }</MDI>\r\n    <MDI key="NATIVE_MEDIA_TYPE">application/vnd.geo+json</MDI>\r\n  </Metadata>\r\n</GDALMetadata>
\.


--
-- TOC entry 4285 (class 0 OID 17474)
-- Dependencies: 222
-- Data for Name: buildings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.buildings (id, building, building_levels, name, housenumber, street, city, geom) FROM stdin;
4	house	2	\N	\N	Березовая улица	Самара	0103000020E610000001000000050000004BE9995E621F4940E501767F06B84A406F97A201611F4940583F918202B84A4026D93400651F49404C7D6A0602B84A40012B2C5D661F4940D93F4F0306B84A404BE9995E621F4940E501767F06B84A40
5	yes	\N	\N	11	СТ Сокские Зори	Самара	0103000020E61000000100000005000000D50A2EB18D1F4940B23F9AFBF5B74A4082CA53B18C1F4940186D9F9FF3B74A40F6F6425C941F494007C02E79F2B74A40B477465B951F4940A19229D5F4B74A40D50A2EB18D1F4940B23F9AFBF5B74A40
6	house	2	\N	2	Берёзовая улица	Самара	0103000020E61000000100000005000000A8E56267651F494010B22C98F8B74A409D6BF35A641F49400053AB54F5B74A4036C82423671F49409ABB4C03F5B74A40D7016B30681F4940AB1ACE46F8B74A40A8E56267651F494010B22C98F8B74A40
7	house	2	\N	33	5-й массив	Самара	0103000020E6100000010000000500000026A36F777B1F4940CFD14FDD01B84A408CF84ECC7A1F4940241E9AC3FFB74A4060819EBC7E1F494012578451FFB74A40FA2BBF677F1F4940BE0A3A6B01B84A4026A36F777B1F4940CFD14FDD01B84A40
8	house	2	\N	4	Облепиховая улица	Самара	0103000020E6100000010000000500000061A17B7B7C1F4940B4F51D0DF1B74A4026D1819B7B1F49408C3A2982EEB74A40D17EFF417F1F49407A731310EEB74A400C4FF921801F4940A32E089BF0B74A4061A17B7B7C1F4940B4F51D0DF1B74A40
9	house	2	\N	6	Облепиховая улица	Самара	0103000020E61000000100000005000000E5153E117A1F4940714DCB59E9B74A4027F15E5A791F4940F623EAAAE5B74A4079C9A42B7D1F4940DE85F766E5B74A4037EE83E27D1F494059AFD815E9B74A40E5153E117A1F4940714DCB59E9B74A40
10	house	2	\N	8	Берёзовая улица	Самара	0103000020E61000000100000005000000D63A71395E1F4940F9CE79D7EAB74A408FA850DD5C1F4940CBE08332E8B74A40F952D3895F1F49402A5F86B5E7B74A4040E5F3E5601F4940584D7C5AEAB74A40D63A71395E1F4940F9CE79D7EAB74A40
11	house	2	\N	16	Берёзовая улица	Самара	0103000020E610000001000000050000005CC1DB28571F49403F694D98D5B74A40FDA43561561F4940F93889F7D2B74A4037DF88EE591F4940B2E8E797D2B74A402BBB05B75A1F49406359D537D5B74A405CC1DB28571F49403F694D98D5B74A40
12	house	2	\N	17	Берёзовая улица	Самара	0103000020E61000000100000005000000B4AF3C484F1F4940C8C22165D5B74A407E6E68CA4E1F49405ED0E748D3B74A408E290E56521F4940A0353FFED2B74A40C46AE2D3521F49400A28791AD5B74A40B4AF3C484F1F4940C8C22165D5B74A40
13	house	1	\N	20	Берёзовая улица	Самара	0103000020E6100000010000000500000046D33483531F49407BC03C64CAB74A40D0D0E407531F494023258799C7B74A4081898917551F49400BB5A679C7B74A40F88BD992551F494063505C44CAB74A4046D33483531F49407BC03C64CAB74A40
\.


--
-- TOC entry 4287 (class 0 OID 17488)
-- Dependencies: 224
-- Data for Name: poi; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.poi (id, name, shop, opening_hours, payment_cash, payment_debit_cards, geom) FROM stdin;
1	Магазин	convenience	Mo-Fr 09:00-17:00	yes	yes	0101000020E61000000327367A901F4940C4B0C398F4B74A40
\.


--
-- TOC entry 4286 (class 0 OID 17481)
-- Dependencies: 223
-- Data for Name: roads; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.roads (id, highway, name, surface, oneway, tracktype, geom) FROM stdin;
1	service	\N	\N	\N	grade1	0102000020E610000004000000B8D8A326B01E494094CD0B6602B84A40D74FFF59F31E4940238E2BE400B84A404921DAD8361F4940486A46ABFFB74A403634AF343A1F4940232CCF2802B84A40
2	service	\N	\N	\N	grade1	0102000020E61000000400000067CF0AB19F1E4940CCC12275F1B74A40F4ED13F6A31E4940A3625232EFB74A4031BF89D7AB1E49404B1D893CEEB74A40CCDD9D6B4E1F4940EDF2AD0FEBB74A40
3	service	\N	\N	\N	grade1	0102000020E6100000080000003295D97B4C1F4940714518F5FFB74A404F7A3AB24D1F494038F7578FFBB74A40D89FC4E74E1F4940FB873E69F2B74A40CCDD9D6B4E1F4940EDF2AD0FEBB74A40EE7085C1461F49404BB5AA80D6B74A405C81D71D411F4940D294F837C3B74A4095E0C3DB391F4940A7D5462BADB74A4095CC5603391F49400FF5166AA8B74A40
4	service	\N	\N	\N	grade1	0102000020E610000002000000EE7085C1461F49404BB5AA80D6B74A407D3B2E4F8C1E4940D81B6B35DAB74A40
5	service	\N	\N	\N	grade1	0102000020E6100000030000005C81D71D411F4940D294F837C3B74A40FAFD518A0C1F49401F8E6445C3B74A40835781107F1E4940B26FDD83C6B74A40
6	service	\N	\N	\N	grade1	0102000020E6100000050000000EDF1D74641F4940A25F5B3FFDB74A408FA850DD5C1F4940CBE08332E8B74A404FF344C6591F494087AEFA12E0B74A402D4E6B894B1F494046A7F809B1B74A407A104C7F401F49400FB2D1DE85B74A40
7	service	\N	\N	\N	grade1	0102000020E6100000040000008A7615527E1F4940C2FA3F87F9B74A40EEA29EF4741F49405303CDE7DCB74A4056ED3FD7631F4940651FBF12A3B74A403CC49A255C1F4940DBBEEC4383B74A40
8	service	\N	\N	\N	grade1	0102000020E610000006000000EAE1708B9E1F49408044B86EEFB74A4059969E9F981F4940B86F5A95E9B74A401310EE29941F4940A239FC7FE6B74A4021F5E857841F4940108EFE3CB2B74A406ABE4A3E761F494083C7123180B74A40B3902518731F4940CB93B5977EB74A40
9	service	\N	\N	\N	grade1	0102000020E61000000300000012B4136FAE1F49403242D36DE4B74A404E2E217AAD1F4940BEC7F4DFDEB74A40DC210F8EA31F4940D0C7C6CDBAB74A40
10	service	\N	\N	\N	grade1	0102000020E61000000500000075EED176A71F49400CEA5BE674B74A40915731A6AA1F494040C39B3578B74A4082806BDDBC1F49405BBD7960B6B74A403C45B357C41F494049168B3ACEB74A406AD14C41C81F4940DEAA9097DAB74A40
11	service	\N	\N	\N	grade1	0102000020E610000004000000EF2E617EB81F494064C4AAE6DEB74A4031410DDFC21F4940F8F65388ECB74A40B44D3B46C31F494031FD5C7EF1B74A409B47B4D3C51F49401DC87A6AF5B74A40
12	service	\N	\N	\N	grade1	0102000020E610000002000000F48189E4D01F4940F01BBA34D9B74A40FF1B203DEA1F49406AC768780EB84A40
13	unclassified	\N	\N	no	gravel	0102000020E61000000E000000D14B7B39A21F4940CFABF01DEBB74A4012B4136FAE1F49403242D36DE4B74A40EF2E617EB81F494064C4AAE6DEB74A406AD14C41C81F4940DEAA9097DAB74A40F48189E4D01F4940F01BBA34D9B74A409D407D70E31F4940F10D85CFD6B74A40C1BD7CFCEF1F494099863CDDD4B74A4060F4CB16FF1F4940654BA0D2D2B74A40F262BC410F204940DD877258D0B74A40ACAB02B5182049402B2BF290CEB74A40EF6A03C12D2049405DA79196CAB74A40DAD3C4F1322049407BDAE1AFC9B74A405B3C612E4E20494036F80CF2C4B74A40AAB294D16D204940455C4AA7BFB74A40
\.


--
-- TOC entry 4120 (class 0 OID 16707)
-- Dependencies: 218
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- TOC entry 4297 (class 0 OID 0)
-- Dependencies: 226
-- Name: metadata_id_seq; Type: SEQUENCE SET; Schema: ogr_system_tables; Owner: -
--

SELECT pg_catalog.setval('ogr_system_tables.metadata_id_seq', 1, true);


--
-- TOC entry 4126 (class 2606 OID 17480)
-- Name: buildings buildings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.buildings
    ADD CONSTRAINT buildings_pkey PRIMARY KEY (id);


--
-- TOC entry 4133 (class 2606 OID 17494)
-- Name: poi poi_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.poi
    ADD CONSTRAINT poi_pkey PRIMARY KEY (id);


--
-- TOC entry 4130 (class 2606 OID 17487)
-- Name: roads roads_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.roads
    ADD CONSTRAINT roads_pkey PRIMARY KEY (id);


--
-- TOC entry 4127 (class 1259 OID 17496)
-- Name: idx_buildings_geom; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_buildings_geom ON public.buildings USING gist (geom);


--
-- TOC entry 4131 (class 1259 OID 17495)
-- Name: idx_poi_geom; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_poi_geom ON public.poi USING gist (geom);


--
-- TOC entry 4128 (class 1259 OID 17497)
-- Name: idx_roads_geom; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_roads_geom ON public.roads USING gist (geom);


--
-- TOC entry 4134 (class 2620 OID 17509)
-- Name: buildings trigger_buildings_geom; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trigger_buildings_geom BEFORE INSERT OR UPDATE ON public.buildings FOR EACH ROW EXECUTE FUNCTION public.update_geom_timestamp();


--
-- TOC entry 4136 (class 2620 OID 17511)
-- Name: poi trigger_poi_geom; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trigger_poi_geom BEFORE INSERT OR UPDATE ON public.poi FOR EACH ROW EXECUTE FUNCTION public.update_geom_timestamp();


--
-- TOC entry 4135 (class 2620 OID 17510)
-- Name: roads trigger_roads_geom; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trigger_roads_geom BEFORE INSERT OR UPDATE ON public.roads FOR EACH ROW EXECUTE FUNCTION public.update_geom_timestamp();


--
-- TOC entry 4119 (class 3466 OID 17507)
-- Name: ogr_system_tables_event_trigger_for_metadata; Type: EVENT TRIGGER; Schema: -; Owner: -
--

CREATE EVENT TRIGGER ogr_system_tables_event_trigger_for_metadata ON sql_drop
   EXECUTE FUNCTION ogr_system_tables.event_trigger_function_for_metadata();


-- Completed on 2026-04-11 13:46:02

--
-- PostgreSQL database dump complete
--

\unrestrict tON10uyOBNUhhlOEkOgqxPI3tiBW8PbF4kuL4Wxak6OcQy2bJjERNOhzG9dVOfb

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict fCA0x1YB0CqfL6co7MXNmpAkoewilJ44xy60ARCQY00Ecrgvh75EOrSJ8mxFb8d

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg110+2)
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-11 13:46:02

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

-- Completed on 2026-04-11 13:46:02

--
-- PostgreSQL database dump complete
--

\unrestrict fCA0x1YB0CqfL6co7MXNmpAkoewilJ44xy60ARCQY00Ecrgvh75EOrSJ8mxFb8d

-- Completed on 2026-04-11 13:46:02

--
-- PostgreSQL database cluster dump complete
--

