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
    geom public.geometry(Geometry,4326),
    "timestamp" timestamp with time zone,
    version character varying,
    changeset character varying,
    "user" character varying,
    uid character varying,
    "addr:city" character varying,
    "addr:housenumber" character varying,
    "addr:postcode" character varying,
    "addr:street" character varying,
    amenity character varying,
    building character varying,
    "building:levels" character varying,
    capacity character varying,
    check_date date,
    crossing character varying,
    denomination character varying,
    description character varying,
    diocese character varying,
    direction character varying,
    distance character varying,
    "fhrs:id" character varying,
    "from" character varying,
    highway character varying,
    "isced:level" character varying,
    lanes character varying,
    max_age character varying,
    maxspeed character varying,
    min_age character varying,
    name character varying,
    network character varying,
    operator character varying,
    phone character varying,
    ref character varying,
    "ref:edubase" character varying,
    "ref:gb:uprn" character varying,
    religion character varying,
    route character varying,
    school character varying,
    "school:boarding" character varying,
    "school:gender" character varying,
    "school:selective" character varying,
    "school:type" character varying,
    "source:addr" character varying,
    "to" character varying,
    type character varying,
    url character varying,
    via character varying,
    website character varying,
    wikidata character varying,
    wikipedia character varying,
    id character varying
);


ALTER TABLE public.buildings OWNER TO gisuser;

--
-- Name: poi; Type: TABLE; Schema: public; Owner: gisuser
--

CREATE TABLE public.poi (
    ogc_fid integer NOT NULL,
    geom public.geometry(Geometry,4326),
    "timestamp" timestamp with time zone,
    version character varying,
    changeset character varying,
    "user" character varying,
    uid character varying,
    "addr:city" character varying,
    "addr:housenumber" character varying,
    "addr:postcode" character varying,
    "addr:street" character varying,
    amenity character varying,
    building character varying,
    "building:levels" character varying,
    capacity character varying,
    check_date date,
    crossing character varying,
    denomination character varying,
    description character varying,
    diocese character varying,
    direction character varying,
    distance character varying,
    "fhrs:id" character varying,
    "from" character varying,
    highway character varying,
    "isced:level" character varying,
    lanes character varying,
    max_age character varying,
    maxspeed character varying,
    min_age character varying,
    name character varying,
    network character varying,
    operator character varying,
    phone character varying,
    ref character varying,
    "ref:edubase" character varying,
    "ref:gb:uprn" character varying,
    religion character varying,
    route character varying,
    school character varying,
    "school:boarding" character varying,
    "school:gender" character varying,
    "school:selective" character varying,
    "school:type" character varying,
    "source:addr" character varying,
    "to" character varying,
    type character varying,
    url character varying,
    via character varying,
    website character varying,
    wikidata character varying,
    wikipedia character varying,
    id character varying
);


ALTER TABLE public.poi OWNER TO gisuser;

--
-- Name: roads; Type: TABLE; Schema: public; Owner: gisuser
--

CREATE TABLE public.roads (
    ogc_fid integer NOT NULL,
    geom public.geometry(Geometry,4326),
    "timestamp" timestamp with time zone,
    version character varying,
    changeset character varying,
    "user" character varying,
    uid character varying,
    "addr:city" character varying,
    "addr:housenumber" character varying,
    "addr:postcode" character varying,
    "addr:street" character varying,
    amenity character varying,
    building character varying,
    "building:levels" character varying,
    capacity character varying,
    check_date date,
    crossing character varying,
    denomination character varying,
    description character varying,
    diocese character varying,
    direction character varying,
    distance character varying,
    "fhrs:id" character varying,
    "from" character varying,
    highway character varying,
    "isced:level" character varying,
    lanes character varying,
    max_age character varying,
    maxspeed character varying,
    min_age character varying,
    name character varying,
    network character varying,
    operator character varying,
    phone character varying,
    ref character varying,
    "ref:edubase" character varying,
    "ref:gb:uprn" character varying,
    religion character varying,
    route character varying,
    school character varying,
    "school:boarding" character varying,
    "school:gender" character varying,
    "school:selective" character varying,
    "school:type" character varying,
    "source:addr" character varying,
    "to" character varying,
    type character varying,
    url character varying,
    via character varying,
    website character varying,
    wikidata character varying,
    wikipedia character varying,
    id character varying
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
-- Name: idx_buildings_geom; Type: INDEX; Schema: public; Owner: gisuser
--

CREATE INDEX idx_buildings_geom ON public.buildings USING gist (geom);


--
-- Name: idx_poi_geom; Type: INDEX; Schema: public; Owner: gisuser
--

CREATE INDEX idx_poi_geom ON public.poi USING gist (geom);


--
-- Name: idx_roads_geom; Type: INDEX; Schema: public; Owner: gisuser
--

CREATE INDEX idx_roads_geom ON public.roads USING gist (geom);


--
-- PostgreSQL database dump complete
--

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

--
-- Data for Name: buildings; Type: TABLE DATA; Schema: public; Owner: gisuser
--

INSERT INTO public.buildings VALUES (5, '0106000020E610000001000000010300000001000000050000007E795CAF44BBF8BF2F0ED36300F84940FF4C73E1F6BAF8BF281719D302F8494008944DB9C2BBF8BFA4A2563D05F8494086C0368710BCF8BFAB9910CE02F849407E795CAF44BBF8BF2F0ED36300F84940', '2026-02-14 11:00:34+00', '3', '178539119', 'acebiscuits', '23824053', 'Chipping Norton', '11', 'OX7 5DH', 'The Green', NULL, 'house', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Brasenose Villas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1477873215');
INSERT INTO public.buildings VALUES (6, '0106000020E610000001000000010300000001000000050000006D8FDE701FB9F8BF39FD8F02FAF749407364E597C1B8F8BF3ECE3461FBF749405E5E25C401B9F8BF737F9AFFFCF74940B8D90EFC5EB9F8BF566C27A5FBF749406D8FDE701FB9F8BF39FD8F02FAF74940', '2026-02-13 20:33:59+00', '1', '178520966', 'acebiscuits', '23824053', 'Chipping Norton', '8', 'OX7 5DH', 'The Green', NULL, 'house', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1477882638');
INSERT INTO public.buildings VALUES (7, '0106000020E61000000100000001030000000100000005000000E18B40063CBAF8BFB45483D5FDF749401480DA0308BAF8BF4209336DFFF749404F47B6A970BAF8BF41A7D6B100F84940B288BC40A4BAF8BFE376C311FFF74940E18B40063CBAF8BFB45483D5FDF74940', '2026-02-13 20:33:59+00', '1', '178520966', 'acebiscuits', '23824053', 'Chipping Norton', '10', 'OX7 5DH', 'The Green', NULL, 'house', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1477882639');
INSERT INTO public.buildings VALUES (8, '0106000020E61000000100000001030000000100000005000000B288BC40A4BAF8BFE376C311FFF749404F47B6A970BAF8BF41A7D6B100F849400DCDD0D3DBBAF8BFAC85A3F501F849406F0ED76A0FBBF8BF4D55905500F84940B288BC40A4BAF8BFE376C311FFF74940', '2026-02-13 20:33:59+00', '1', '178520966', 'acebiscuits', '23824053', 'Chipping Norton', '9', 'OX7 5DH', 'The Green', NULL, 'house', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1477882640');
INSERT INTO public.buildings VALUES (9, '0106000020E610000001000000010300000001000000050000007364E597C1B8F8BF3ECE3461FBF7494039DACC7C62B8F8BF141B3DC8FCF74940BFC6E4C3A2B8F8BF48CCA266FEF749405E5E25C401B9F8BF737F9AFFFCF749407364E597C1B8F8BF3ECE3461FBF74940', '2026-02-13 20:33:59+00', '1', '178520966', 'acebiscuits', '23824053', 'Chipping Norton', '61', 'OX7 5EB', 'Burford Road', NULL, 'house', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1477882641');
INSERT INTO public.buildings VALUES (10, '0106000020E61000000100000001030000000100000005000000366D6BB015B9F8BF70F7281202F84940075DC2A1B7B8F8BF6AAA82AC02F84940526D2695DFB8F8BF09826CFE04F84940817DCFA33DB9F8BF394EC06504F84940366D6BB015B9F8BF70F7281202F84940', '2026-02-13 20:33:59+00', '1', '178520966', 'acebiscuits', '23824053', 'Chipping Norton', '59', 'OX7 5EB', 'Burford Road', NULL, 'house', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1477882642');
INSERT INTO public.buildings VALUES (11, '0106000020E610000001000000010300000001000000050000002621EC6F64B9F8BFB5ABEBAB06F84940817DCFA33DB9F8BF394EC06504F84940526D2695DFB8F8BF09826CFE04F84940F710436106B9F8BF85DF974407F849402621EC6F64B9F8BFB5ABEBAB06F84940', '2026-02-21 21:32:44+00', '2', '178877726', 'acebiscuits', '23824053', 'Chipping Norton', '57', 'OX7 5EB', 'Burford Road', NULL, 'house', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1477882643');
INSERT INTO public.buildings VALUES (12, '0106000020E610000001000000010300000001000000090000007720A11CBBBAF8BFFC4685FB12F84940E12C8084BCB9F8BF1AA2AFC513F849407E99DEB4CFB9F8BFA73CBA1116F8494027BD6F7CEDB9F8BF60483DFA15F849401FFA491009BAF8BF4023224619F849405CFEE8407BBAF8BF765089EB18F849408E2C4FD65EBAF8BF25027A8615F849403EF83F76CDBAF8BF196E652E15F849407720A11CBBBAF8BFFC4685FB12F84940', '2026-02-14 10:48:39+00', '1', '178538675', 'acebiscuits', '23824053', 'Chipping Norton', NULL, 'OX7 5EB', 'Burford Road', NULL, 'yes', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1478524519');
INSERT INTO public.buildings VALUES (13, '0106000020E610000001000000010300000001000000050000000AE764F382B9F8BF79A7A73407F84940C2A2224E27B9F8BFA9E38CBC07F849400A3609394AB9F8BF1304D9FC09F84940527A4BDEA5B9F8BF7887CA7509F849400AE764F382B9F8BF79A7A73407F84940', '2026-02-14 10:48:39+00', '1', '178538675', 'acebiscuits', '23824053', 'Chipping Norton', '55', 'OX7 5EB', 'Burford Road', NULL, 'house', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1478524520');
INSERT INTO public.buildings VALUES (14, '0106000020E610000001000000010300000001000000050000000A3609394AB9F8BF1304D9FC09F84940620097B66EB9F8BF835726570CF84940AA44D95BCAB9F8BF7D9AEED00BF84940527A4BDEA5B9F8BF7887CA7509F849400A3609394AB9F8BF1304D9FC09F84940', '2026-02-14 10:48:39+00', '1', '178538675', 'acebiscuits', '23824053', 'Chipping Norton', '53', 'OX7 5EB', 'Burford Road', NULL, 'house', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/1478524521');


--
-- Data for Name: poi; Type: TABLE DATA; Schema: public; Owner: gisuser
--

INSERT INTO public.poi VALUES (4, '0106000020E61000000100000001030000000100000009000000B9A063ACDBC5F8BFC39558BED3F74940C6AC72FCABC2F8BF3DBB7CEBC3F749402A1A6B7F67BBF8BF79701C1DFCF749406830575062C1F8BF119C44CE0CF84940F26C455156C2F8BF41D5E8D500F84940B7A3EEB902C0F8BF3ECE3461FBF74940444882154CC1F8BF634BEA5FEDF749400A15771783C2F8BFCC1A063DE5F74940B9A063ACDBC5F8BFC39558BED3F74940', '2025-11-20 16:34:35+00', '8', '174914484', 'confusedbuffalo', '242345', 'Chipping Norton', NULL, 'OX7 5DH', 'The Green', 'school', NULL, NULL, '345', '2025-09-01', NULL, 'anglican', NULL, 'Diocese of Oxford', NULL, NULL, '924656', NULL, NULL, '0;1', NULL, '11', NULL, '3', 'St Mary''s Church of England (Aided) Primary School', NULL, NULL, '+44 1608 642673', NULL, '123227', '10003995320', 'christian', NULL, 'primary', 'no', 'mixed', 'no', 'voluntary_aided', 'FHRS Open Data', NULL, NULL, NULL, NULL, 'https://www.st-marys-chipping.oxon.sch.uk/', 'Q66227125', NULL, 'way/115722552');


--
-- Data for Name: roads; Type: TABLE DATA; Schema: public; Owner: gisuser
--

INSERT INTO public.roads VALUES (15, '0105000020E6100000010000000102000000110000003BCD5DA681BAF8BF1E7123C044F84940B80B282F8DBAF8BF8B75053642F84940BC8B9C2A84BAF8BFAA52697A3FF84940AD1D20F35CBAF8BF0CCFA67E39F84940345FCA6548BAF8BF85E39E5335F84940C9E30E400FBAF8BF5FF29AB22EF84940A941E268D8B9F8BF7BDCB75A27F8494013211A8288B9F8BF09185DDE1CF849408CBA7B2535B9F8BFED9458631AF84940BE4F55A181B8F8BF46F185240EF84940096B63EC84B7F8BFD7A02FBDFDF74940D563B6BF0EB7F8BF2237C30DF8F749404740E0DCBAB6F8BF95FE147DF4F74940B24CBF44BCB5F8BF57276728EEF74940C0E4EBD742B5F8BF349F73B7EBF7494096E8D1F995B3F8BFBB2B161AE3F74940A9E628F686B1F8BF7AD7EABCD7F74940', '2025-11-23 11:53:44+00', '9', '175022476', 'Robin Peterson', '2894151', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'primary', NULL, '2', NULL, '20 mph', NULL, 'Burford Road', NULL, NULL, NULL, 'A361', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/136398023');
INSERT INTO public.roads VALUES (16, '0105000020E6100000010000000102000000080000008F386403E9C2F8BF4A88A87812F8494028A490BF0FC2F8BF10ECF82F10F849406C216D8896C1F8BFE16D94AB0EF84940C389439149C1F8BFA69D9ACB0DF8494077B6ECB545BEF8BFB05010E104F84940389AC8714CBBF8BF1407D0EFFBF7494068565B5606BAF8BF041E1840F8F749406EC72F174CB7F8BF8BEC399FF0F74940', '2021-07-20 15:02:07+00', '6', '108325994', 'MrMapperBanbury', '12637824', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'residential', NULL, NULL, NULL, '30 mph', NULL, 'The Green', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/138839159');
INSERT INTO public.roads VALUES (17, '0105000020E61000000100000001020000000600000068565B5606BAF8BF041E1840F8F749403ABD416AC9B9F8BFE88F1FE0FFF7494001CFAC5BF3B9F8BFDB93765902F84940D768DE16D1BBF8BF9F1CAACE0FF84940B92869B40BBCF8BF5C55F65D11F849408B130434B6BCF8BF4A40F10813F84940', '2020-09-25 06:42:00+00', '1', '91486683', 'sabodige', '10170576', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/851397468');
INSERT INTO public.roads VALUES (18, '0105000020E610000001000000010200000006000000112851E56ABAF8BF39888CFD1BF849408F029F7AFFBAF8BFAC0727FD18F84940877945A632BBF8BF47E6913F18F84940C152020759BBF8BFC435882018F84940AD4F39268BBBF8BF6B8E626F18F8494040D6F8F13CBDF8BFE5417A8A1CF84940', '2020-12-14 09:07:50+00', '1', '95796012', 'kukarana', '11734027', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/884660426');
INSERT INTO public.roads VALUES (19, '0105000020E610000001000000010200000004000000C152020759BBF8BFC435882018F84940D086B2A668BBF8BF66D7625C16F849408F615FFC7EBBF8BFA29927D714F849400C14C2B4B9BBF8BF91AA37B412F84940', '2020-12-14 09:07:50+00', '1', '95796012', 'kukarana', '11734027', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'service', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'way/884660427');
INSERT INTO public.roads VALUES (20, '0104000020E61000000100000001010000003BCD5DA681BAF8BF1E7123C044F84940', '2021-07-20 15:02:07+00', '6', '108325994', 'MrMapperBanbury', '12637824', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'clockwise', NULL, NULL, NULL, 'mini_roundabout', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'node/25290363');
INSERT INTO public.roads VALUES (21, '0104000020E6100000010000000101000000C0E4EBD742B5F8BF349F73B7EBF74940', '2020-12-22 18:05:21+00', '1', '96275111', 'Robert Whittaker', '84263', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'traffic_signals', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'crossing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'node/8252496121');


--
-- PostgreSQL database dump complete
--
