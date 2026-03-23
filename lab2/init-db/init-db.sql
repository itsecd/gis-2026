--
-- PostgreSQL database dump
--
-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1
-- Started on 2026-03-18 09:55:56
SET
    statement_timeout = 0;

SET
    lock_timeout = 0;

SET
    idle_in_transaction_session_timeout = 0;

SET
    client_encoding = 'UTF8';

SET
    standard_conforming_strings = on;

SELECT
    pg_catalog.set_config('search_path', '', false);

SET
    check_function_bodies = false;

SET
    xmloption = content;

SET
    client_min_messages = warning;

SET
    row_security = off;

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

SET
    default_tablespace = '';

SET
    default_table_access_method = heap;

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
    geom public.geometry(Geometry, 4326)
);

ALTER TABLE
    public.buildings OWNER TO gisuser;

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
    geom public.geometry(Geometry, 4326)
);

ALTER TABLE
    public.roads OWNER TO gisuser;

--
-- TOC entry 5845 (class 0 OID 33885)
-- Dependencies: 230
-- Data for Name: buildings; Type: TABLE DATA; Schema: public; Owner: gisuser
--
INSERT INTO
    public.buildings (
        ogc_fid,
        "timestamp",
        version,
        changeset,
        "user",
        uid,
        "addr:city",
        "addr:country",
        "addr:district",
        "addr:housenumber",
        "addr:region",
        "addr:street",
        building,
        "building:levels",
        highway,
        landuse,
        name,
        "name:ru",
        "natural",
        official_status,
        place,
        water,
        wikidata,
        wikipedia,
        id,
        geom
    )
VALUES
    (
        3,
        '2026-02-11 08:29:28+04',
        '3',
        '178387552',
        'AvtoBBus',
        '23787447',
        'Культура',
        NULL,
        NULL,
        '4',
        NULL,
        'Заречный переулок',
        'yes',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'way/703788468',
        '0106000020E61000000100000001030000000100000005000000B8640BF7805249409E1095A185A24A401D588E90815249405884ACB882A24A40E5EA6C6D865249404CD6F21483A24A4080F7E9D385524940FDA204FD85A24A40B8640BF7805249409E1095A185A24A40'
    );

INSERT INTO
    public.buildings (
        ogc_fid,
        "timestamp",
        version,
        changeset,
        "user",
        uid,
        "addr:city",
        "addr:country",
        "addr:district",
        "addr:housenumber",
        "addr:region",
        "addr:street",
        building,
        "building:levels",
        highway,
        landuse,
        name,
        "name:ru",
        "natural",
        official_status,
        place,
        water,
        wikidata,
        wikipedia,
        id,
        geom
    )
VALUES
    (
        4,
        '2026-02-11 08:29:28+04',
        '3',
        '178387552',
        'AvtoBBus',
        '23787447',
        'Культура',
        NULL,
        NULL,
        '5',
        NULL,
        'Заречный переулок',
        'yes',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'way/703788469',
        '0106000020E61000000100000001030000000100000005000000F2704C6084524940915CA38A87A24A40F57700D5895249407976F9D687A24A405BCDDF2989524940F485353A8CA24A40C30655B4835249400C6CDFED8BA24A40F2704C6084524940915CA38A87A24A40'
    );

INSERT INTO
    public.buildings (
        ogc_fid,
        "timestamp",
        version,
        changeset,
        "user",
        uid,
        "addr:city",
        "addr:country",
        "addr:district",
        "addr:housenumber",
        "addr:region",
        "addr:street",
        building,
        "building:levels",
        highway,
        landuse,
        name,
        "name:ru",
        "natural",
        official_status,
        place,
        water,
        wikidata,
        wikipedia,
        id,
        geom
    )
VALUES
    (
        5,
        '2022-08-31 07:35:04+04',
        '2',
        '125593541',
        'maxlax',
        '15972813',
        NULL,
        NULL,
        NULL,
        '8',
        NULL,
        'Рябиновая улица',
        'yes',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'way/703788532',
        '0106000020E6100000010000000103000000010000000500000011E8A793C7524940F036CA5587A24A402766BD18CA52494027E0320285A24A40C0328001CE524940C19EC08586A24A403F74417DCB5249408AF557D988A24A4011E8A793C7524940F036CA5587A24A40'
    );

INSERT INTO
    public.buildings (
        ogc_fid,
        "timestamp",
        version,
        changeset,
        "user",
        uid,
        "addr:city",
        "addr:country",
        "addr:district",
        "addr:housenumber",
        "addr:region",
        "addr:street",
        building,
        "building:levels",
        highway,
        landuse,
        name,
        "name:ru",
        "natural",
        official_status,
        place,
        water,
        wikidata,
        wikipedia,
        id,
        geom
    )
VALUES
    (
        7,
        '2022-08-31 07:35:04+04',
        '2',
        '125593541',
        'maxlax',
        '15972813',
        NULL,
        NULL,
        NULL,
        '6',
        NULL,
        'Рябиновая улица',
        'yes',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'way/703788534',
        '0106000020E61000000100000001030000000100000005000000004C63C5BA5249409B65057580A24A4052B41776BD524940BFD18E1B7EA24A401B67D311C0524940B309302C7FA24A40C9FE1E61BD5249408E9DA68581A24A40004C63C5BA5249409B65057580A24A40'
    );

INSERT INTO
    public.buildings (
        ogc_fid,
        "timestamp",
        version,
        changeset,
        "user",
        uid,
        "addr:city",
        "addr:country",
        "addr:district",
        "addr:housenumber",
        "addr:region",
        "addr:street",
        building,
        "building:levels",
        highway,
        landuse,
        name,
        "name:ru",
        "natural",
        official_status,
        place,
        water,
        wikidata,
        wikipedia,
        id,
        geom
    )
VALUES
    (
        8,
        '2022-08-31 07:35:04+04',
        '2',
        '125593541',
        'maxlax',
        '15972813',
        NULL,
        NULL,
        NULL,
        '5',
        NULL,
        'Рябиновая улица',
        'yes',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'way/703788535',
        '0106000020E61000000100000001030000000100000005000000205D11A1B652494015A6947C91A24A4054F4D1F3B852494063EDEF6C8FA24A407C81B45ABB524940E6B1666490A24A40DDA9CA08B95249402C2AE27492A24A40205D11A1B652494015A6947C91A24A40'
    );

INSERT INTO
    public.buildings (
        ogc_fid,
        "timestamp",
        version,
        changeset,
        "user",
        uid,
        "addr:city",
        "addr:country",
        "addr:district",
        "addr:housenumber",
        "addr:region",
        "addr:street",
        building,
        "building:levels",
        highway,
        landuse,
        name,
        "name:ru",
        "natural",
        official_status,
        place,
        water,
        wikidata,
        wikipedia,
        id,
        geom
    )
VALUES
    (
        9,
        '2026-02-11 08:29:28+04',
        '3',
        '178387552',
        'AvtoBBus',
        '23787447',
        'Культура',
        NULL,
        NULL,
        '7',
        NULL,
        'Заречный переулок',
        'yes',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'way/703788540',
        '0106000020E61000000100000001030000000100000005000000AFA01FFC7A52494017D522A298A24A405F950B957F5249404182E2C798A24A402A82493B7F524940458FCEAF9CA24A407A8D5DA27A524940862238899CA24A40AFA01FFC7A52494017D522A298A24A40'
    );

INSERT INTO
    public.buildings (
        ogc_fid,
        "timestamp",
        version,
        changeset,
        "user",
        uid,
        "addr:city",
        "addr:country",
        "addr:district",
        "addr:housenumber",
        "addr:region",
        "addr:street",
        building,
        "building:levels",
        highway,
        landuse,
        name,
        "name:ru",
        "natural",
        official_status,
        place,
        water,
        wikidata,
        wikipedia,
        id,
        geom
    )
VALUES
    (
        10,
        '2022-08-31 07:35:04+04',
        '1',
        '125593541',
        'maxlax',
        '15972813',
        NULL,
        NULL,
        NULL,
        '4',
        NULL,
        'Рябиновая улица',
        'yes',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'way/1090644550',
        '0106000020E6100000010000000103000000010000000500000026039BCEA95249402C8EB9217CA24A40669E019AAD5249405DC2A1B778A24A405E8DA2BDB0524940DFE23CF779A24A408A3265F1AC524940AEAE54617DA24A4026039BCEA95249402C8EB9217CA24A40'
    );

INSERT INTO
    public.buildings (
        ogc_fid,
        "timestamp",
        version,
        changeset,
        "user",
        uid,
        "addr:city",
        "addr:country",
        "addr:district",
        "addr:housenumber",
        "addr:region",
        "addr:street",
        building,
        "building:levels",
        highway,
        landuse,
        name,
        "name:ru",
        "natural",
        official_status,
        place,
        water,
        wikidata,
        wikipedia,
        id,
        geom
    )
VALUES
    (
        12,
        '2026-02-04 14:59:45+04',
        '1',
        '178089258',
        'AvtoBBus',
        '23787447',
        'Культура',
        NULL,
        NULL,
        '11',
        NULL,
        'улица Зеленая',
        'house',
        '1',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'way/1474132826',
        '0106000020E610000001000000010300000001000000050000002E6E484849524940BF9D44847FA24A4048F949B54F524940E84A04AA7FA24A40DD5CFC6D4F524940CE6C57E883A24A405891D101495249401000C1C183A24A402E6E484849524940BF9D44847FA24A40'
    );

INSERT INTO
    public.buildings (
        ogc_fid,
        "timestamp",
        version,
        changeset,
        "user",
        uid,
        "addr:city",
        "addr:country",
        "addr:district",
        "addr:housenumber",
        "addr:region",
        "addr:street",
        building,
        "building:levels",
        highway,
        landuse,
        name,
        "name:ru",
        "natural",
        official_status,
        place,
        water,
        wikidata,
        wikipedia,
        id,
        geom
    )
VALUES
    (
        13,
        '2026-02-04 14:59:45+04',
        '1',
        '178089258',
        'AvtoBBus',
        '23787447',
        'Культура',
        NULL,
        NULL,
        '10А',
        NULL,
        'улица Зеленая',
        'house',
        '1',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'way/1474132827',
        '0106000020E610000001000000010300000001000000050000004514EEF03252494060C9552C7EA24A404272D7B738524940F5E450757EA24A40E9B6442E38524940A5F3E15982A24A40579984663252494011D8E61082A24A404514EEF03252494060C9552C7EA24A40'
    );

INSERT INTO
    public.buildings (
        ogc_fid,
        "timestamp",
        version,
        changeset,
        "user",
        uid,
        "addr:city",
        "addr:country",
        "addr:district",
        "addr:housenumber",
        "addr:region",
        "addr:street",
        building,
        "building:levels",
        highway,
        landuse,
        name,
        "name:ru",
        "natural",
        official_status,
        place,
        water,
        wikidata,
        wikipedia,
        id,
        geom
    )
VALUES
    (
        14,
        '2026-02-11 08:29:28+04',
        '2',
        '178387552',
        'AvtoBBus',
        '23787447',
        'Культура',
        NULL,
        NULL,
        '6',
        NULL,
        'Заречный переулок',
        'house',
        '1',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'way/1474132832',
        '0106000020E610000001000000010300000001000000050000002F53EE9980524940D80BAAB294A24A4035C86EB081524940A4607C8791A24A40682BE56B855249400926EDFC91A24A4063B66455845249403DD11A2895A24A402F53EE9980524940D80BAAB294A24A40'
    );

INSERT INTO
    public.buildings (
        ogc_fid,
        "timestamp",
        version,
        changeset,
        "user",
        uid,
        "addr:city",
        "addr:country",
        "addr:district",
        "addr:housenumber",
        "addr:region",
        "addr:street",
        building,
        "building:levels",
        highway,
        landuse,
        name,
        "name:ru",
        "natural",
        official_status,
        place,
        water,
        wikidata,
        wikipedia,
        id,
        geom
    )
VALUES
    (
        15,
        '2026-02-04 14:59:45+04',
        '1',
        '178089258',
        'AvtoBBus',
        '23787447',
        'Культура',
        NULL,
        NULL,
        '3А',
        NULL,
        'Заречный переулок',
        'house',
        '2',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'way/1474132833',
        '0106000020E6100000010000000103000000010000000500000056139F967A5249403E6F74DF7BA24A40DBA73EEB7552494085ABA8667BA24A4040F7E5CC765249404BFB8B4578A24A4050221D797B52494004BF57BE78A24A4056139F967A5249403E6F74DF7BA24A40'
    );

INSERT INTO
    public.buildings (
        ogc_fid,
        "timestamp",
        version,
        changeset,
        "user",
        uid,
        "addr:city",
        "addr:country",
        "addr:district",
        "addr:housenumber",
        "addr:region",
        "addr:street",
        building,
        "building:levels",
        highway,
        landuse,
        name,
        "name:ru",
        "natural",
        official_status,
        place,
        water,
        wikidata,
        wikipedia,
        id,
        geom
    )
VALUES
    (
        16,
        '2026-02-11 08:29:28+04',
        '2',
        '178387552',
        'AvtoBBus',
        '23787447',
        'Культура',
        NULL,
        NULL,
        '5А',
        NULL,
        'Заречный переулок',
        'house',
        '2',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'way/1474132834',
        '0106000020E6100000010000000103000000010000000500000045DCF703795249401968887489A24A40A7583508735249404F67DDF588A24A40E3CC0AA073524940686D646886A24A408050CD9B79524940C72DE6E786A24A4045DCF703795249401968887489A24A40'
    );

--
-- TOC entry 5846 (class 0 OID 33904)
-- Dependencies: 231
-- Data for Name: roads; Type: TABLE DATA; Schema: public; Owner: gisuser
--
INSERT INTO
    public.roads (
        ogc_fid,
        "timestamp",
        version,
        changeset,
        "user",
        uid,
        "addr:city",
        "addr:country",
        "addr:district",
        "addr:housenumber",
        "addr:region",
        "addr:street",
        building,
        "building:levels",
        highway,
        landuse,
        name,
        "name:ru",
        "natural",
        official_status,
        place,
        water,
        wikidata,
        wikipedia,
        id,
        geom
    )
VALUES
    (
        17,
        '2022-08-31 07:35:04+04',
        '2',
        '125593541',
        'maxlax',
        '15972813',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'residential',
        NULL,
        'Заречный переулок',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'way/703788470',
        '0105000020E6100000010000000102000000040000006745D4449F5249409A6DB8D969A24A407D5E4C8E96524940727385D272A24A401ABFF04A92524940C710001C7BA24A40E84D452A8C524940E0FDA7D19AA24A40'
    );

INSERT INTO
    public.roads (
        ogc_fid,
        "timestamp",
        version,
        changeset,
        "user",
        uid,
        "addr:city",
        "addr:country",
        "addr:district",
        "addr:housenumber",
        "addr:region",
        "addr:street",
        building,
        "building:levels",
        highway,
        landuse,
        name,
        "name:ru",
        "natural",
        official_status,
        place,
        water,
        wikidata,
        wikipedia,
        id,
        geom
    )
VALUES
    (
        18,
        '2026-02-04 14:59:45+04',
        '3',
        '178089258',
        'AvtoBBus',
        '23787447',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'residential',
        NULL,
        'Зелёная улица',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        'way/703788541',
        '0105000020E610000001000000010200000007000000EDECD0555F5249401FDCF86E4EA24A407CB5A33847524940DDB3AED172A24A407F85CC9541524940FCF5AF517BA24A4057E47C563E524940EA735A5C88A24A40FEE0325D3E5249409C4F1DAB94A24A407D0E87003B52494017F2086EA4A24A40D260095A375249400CF7DBE8ADA24A40'
    );

--
-- TOC entry 5690 (class 1259 OID 33890)
-- Name: idx_buildings_geom; Type: INDEX; Schema: public; Owner: gisuser
--
CREATE INDEX idx_buildings_geom ON public.buildings USING gist (geom);

CREATE INDEX idx_roads_geom ON public.roads USING gist (geom);

-- Completed on 2026-03-18 09:55:57
--
-- PostgreSQL database dump complete
--