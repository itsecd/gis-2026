-- =============================================================
-- Скрипт инициализации БД для лабораторной работы №2
-- =============================================================

-- Включение расширения PostGIS
CREATE EXTENSION IF NOT EXISTS postgis;

-- ===================== DDL: Таблицы =====================

-- Здания (полигональные объекты)
DROP TABLE IF EXISTS buildings CASCADE;
CREATE TABLE buildings (
    id SERIAL PRIMARY KEY,
    osm_id TEXT UNIQUE NOT NULL,
    addr_city TEXT,
    addr_place TEXT,
    addr_street TEXT,
    addr_housenumber TEXT,
    building TEXT,
    building_levels TEXT,
    geom GEOMETRY(MultiPolygon, 4326) NOT NULL
);

-- Дороги (линейные объекты)
DROP TABLE IF EXISTS roads CASCADE;
CREATE TABLE roads (
    id SERIAL PRIMARY KEY,
    osm_id TEXT UNIQUE NOT NULL,
    name TEXT,
    highway TEXT,
    waterway TEXT,
    geom GEOMETRY(MultiLineString, 4326) NOT NULL
);

-- POI (точечные объекты)
DROP TABLE IF EXISTS poi CASCADE;
CREATE TABLE poi (
    id SERIAL PRIMARY KEY,
    osm_id TEXT UNIQUE NOT NULL,
    name TEXT,
    category TEXT,
    geom GEOMETRY(Point, 4326) NOT NULL
);

-- ===================== DML: Здания =====================

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1353873654', NULL, NULL, NULL, NULL, NULL, NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2758327 53.5930379, 49.2989388 53.591081, 49.3009293 53.5994985, 49.2797658 53.6016177, 49.2783587 53.6017529, 49.2758327 53.5930379))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1353873655', NULL, NULL, NULL, NULL, NULL, NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2758327 53.5930379, 49.2783587 53.6017529, 49.2649135 53.6030443, 49.262408 53.5941346, 49.2758327 53.5930379))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1478811227', 'сельское поселение Тимофеевка', 'СНТ Сборщик', '1-я улица', '2', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2764171 53.5933583, 49.2763945 53.5932701, 49.276349 53.5932743, 49.2763273 53.5931899, 49.2765166 53.5931728, 49.2765609 53.5933453, 49.2764171 53.5933583))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1478811228', 'сельское поселение Тимофеевка', 'СНТ Сборщик', 'улица № 2', '97', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2770809 53.5934785, 49.277059 53.5934075, 49.277143 53.5933984, 49.2771649 53.5934693, 49.2770809 53.5934785))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1478811229', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '2-я улица', '187', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2773648 53.5936338, 49.2773491 53.5935873, 49.277456 53.5935746, 49.2774717 53.593621, 49.2773648 53.5936338))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1478811230', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', 'ул. №2', '186', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2774218 53.593811, 49.2774015 53.5937458, 49.2774831 53.5937368, 49.2775034 53.5938021, 49.2774218 53.593811))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1478811231', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '3-я улица', '193', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.277878 53.5935957, 49.2778618 53.5935356, 49.2780381 53.5935188, 49.2780543 53.593579, 49.277878 53.5935957))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1478811232', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '3-я улица', '194', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2780254 53.5937405, 49.2780097 53.59369, 49.278086 53.5936817, 49.2781016 53.5937322, 49.2780254 53.5937405))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1478811233', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '3-я улица', '195', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2780275 53.5938348, 49.2781292 53.5938247, 49.2781506 53.5939007, 49.2780489 53.5939108, 49.2780275 53.5938348))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1478811234', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '3-я улица', '281', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.278274 53.5937485, 49.2782419 53.5936517, 49.2785625 53.5936142, 49.2785946 53.593711, 49.278274 53.5937485))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1478811235', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '3-я улица', '279', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2783663 53.5940886, 49.2783487 53.5940195, 49.2784709 53.5940086, 49.2784885 53.5940776, 49.2783663 53.5940886))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1478811236', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '3-я улица', '197', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.278168 53.5942595, 49.2781547 53.5942052, 49.2782428 53.5941976, 49.2782561 53.5942518, 49.278168 53.5942595))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1478811237', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '3-я улица', '198', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2782052 53.5944539, 49.2781916 53.594401, 49.2783203 53.5943894, 49.2783339 53.5944423, 49.2782052 53.5944539))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1481723784', 'сельское поселение Тимофеевка', 'СНТ Сборщик', '1-я улица', '4', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2764398 53.5935359, 49.2764344 53.5934883, 49.2765124 53.5934852, 49.2765178 53.5935328, 49.2764398 53.5935359))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1481723785', 'сельское поселение Тимофеевка', 'СНТ Сборщик', '1-я улица', '6', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.276499 53.5936355, 49.2764889 53.5935885, 49.2765667 53.5935826, 49.2765768 53.5936296, 49.276499 53.5936355))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1481723786', 'сельское поселение Тимофеевка', 'СНТ Сборщик', '2-я улица', '5', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2767867 53.593711, 49.2767726 53.5936758, 49.27687 53.5936621, 49.2768841 53.5936973, 49.2767867 53.593711))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1481723787', 'сельское поселение Тимофеевка', 'СНТ Сборщик', '1-я улица', '10', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.276646 53.5940583, 49.276631 53.5940024, 49.2767333 53.5939927, 49.2767482 53.5940487, 49.276646 53.5940583))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1481723788', 'сельское поселение Тимофеевка', 'СНТ Сборщик', '1-я улица', '1', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2762691 53.5937375, 49.2762597 53.5936905, 49.2763479 53.5936843, 49.2763573 53.5937312, 49.2762691 53.5937375))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1481723789', 'сельское поселение Тимофеевка', 'СНТ Сборщик', '1-я улица', '3', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2762855 53.5939198, 49.2762666 53.5938585, 49.2763973 53.5938443, 49.276411 53.5938886, 49.2764444 53.593885, 49.2764535 53.5939146, 49.2764078 53.5939196, 49.2764039 53.5939069, 49.2762855 53.5939198))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1481723790', 'сельское поселение Тимофеевка', 'СНТ Сборщик', '1-я улица', '5', 'house', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2763278 53.5941071, 49.2763127 53.5940341, 49.2764465 53.5940244, 49.2764615 53.5940974, 49.2763278 53.5941071))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1481723791', 'сельское поселение Тимофеевка', 'СНТ Сборщик', '1-я улица', '11', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2764906 53.5946237, 49.2764702 53.5945602, 49.2765932 53.5945463, 49.2766136 53.5946098, 49.2764906 53.5946237))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1481723792', 'сельское поселение Тимофеевка', 'СНТ Сборщик', '1-я улица', '16', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2767974 53.59462, 49.2767917 53.5945947, 49.2767654 53.5945968, 49.2767543 53.5945477, 49.2769221 53.5945344, 49.2769339 53.5945866, 49.2768585 53.5945926, 49.2768635 53.5946147, 49.2767974 53.59462))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1481723793', 'сельское поселение Тимофеевка', 'СНТ Сборщик', '1-я улица', '12', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2766855 53.594237, 49.2766745 53.5941858, 49.276782 53.5941777, 49.276793 53.5942288, 49.2766855 53.594237))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1481723794', NULL, 'СНТ Сборщик', '1-я улица', '14', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2767518 53.5944302, 49.2767212 53.5943589, 49.276796 53.5943476, 49.2768266 53.5944189, 49.2767518 53.5944302))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1481723795', 'сельское поселение Тимофеевка', 'СНТ Сборщик', '1-я улица', '9', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2764453 53.5944413, 49.2764325 53.5943844, 49.276534 53.5943763, 49.2765468 53.5944332, 49.2764453 53.5944413))'), 4326)));

-- ===================== DML: Дороги =====================

INSERT INTO roads (osm_id, name, highway, waterway, geom) VALUES
('way/308542624', NULL, 'unclassified', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(49.2628513 53.5942506, 49.2636801 53.5941737, 49.2645175 53.5940961, 49.265382 53.5940159, 49.2662067 53.5939486, 49.2670508 53.5938798, 49.267849 53.593817, 49.2687061 53.5937495, 49.269549 53.5936832, 49.2703814 53.5936177, 49.2712265 53.5935512, 49.2720412 53.5934831, 49.2729033 53.5934109, 49.2737023 53.5933441, 49.2745462 53.5932735, 49.2753785 53.5932039)'), 4326)));

INSERT INTO roads (osm_id, name, highway, waterway, geom) VALUES
('way/308542626', NULL, 'unclassified', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(49.2753785 53.5932039, 49.2753371 53.5930293)'), 4326)));

INSERT INTO roads (osm_id, name, highway, waterway, geom) VALUES
('way/308542628', NULL, 'unclassified', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(49.2763173 53.5931469, 49.2763759 53.5931352, 49.2771184 53.5930665, 49.2779646 53.5929926, 49.2787967 53.5929185, 49.2795974 53.5928449, 49.2804558 53.5927673, 49.2812961 53.5926972, 49.282142 53.5926267, 49.2829859 53.5925563, 49.2838328 53.5924857, 49.2846472 53.5924183, 49.2854554 53.5923518, 49.2863722 53.5922819, 49.2872316 53.5922077, 49.2880944 53.5921341, 49.2889337 53.5920648, 49.2897676 53.5919962, 49.290588 53.5919282, 49.2913412 53.5918715, 49.2921536 53.5918075, 49.2930322 53.5917383, 49.293853 53.5916736, 49.2947041 53.5915946, 49.2956388 53.5915518, 49.29648 53.5914709, 49.2971897 53.5913962, 49.2980525 53.591284, 49.2980231 53.5911414)'), 4326)));

INSERT INTO roads (osm_id, name, highway, waterway, geom) VALUES
('way/308542640', '1-я улица', 'unclassified', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(49.2980525 53.591284, 49.3002881 53.5988338, 49.299456 53.598886, 49.2986014 53.5989933, 49.2977794 53.5991723, 49.2969574 53.599393, 49.2962115 53.5995933, 49.2954154 53.599807, 49.2946194 53.6000207, 49.2943708 53.6000875, 49.2937654 53.6001479, 49.2929096 53.6002332, 49.2920468 53.6003192, 49.2912745 53.6003962, 49.2904639 53.600477, 49.2896027 53.6005552, 49.2887678 53.600631, 49.2879496 53.6007052, 49.2871028 53.6007821, 49.2862644 53.6008478, 49.2853741 53.6009329, 49.2845957 53.6010073, 49.2837574 53.6011293, 49.2829147 53.6012205, 49.282099 53.6013334, 49.2812702 53.6014153, 49.280452 53.6015091, 49.2796313 53.6016028, 49.2789755 53.6016599, 49.2788596 53.6016443, 49.278795 53.6015743, 49.2762946 53.5932423, 49.2762847 53.5932092, 49.2762874 53.5931838, 49.2763173 53.5931469)'), 4326)));

INSERT INTO roads (osm_id, name, highway, waterway, geom) VALUES
('way/308542641', '17-я улица', 'unclassified', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(49.2753785 53.5932039, 49.2755733 53.5937679, 49.2779259 53.6016771, 49.2770402 53.6017287, 49.2761861 53.6017662, 49.2753474 53.6018725, 49.2745569 53.6019727, 49.2736732 53.6020601, 49.2728896 53.6021376, 49.2720419 53.6022215, 49.2711764 53.6023153, 49.2703629 53.6024035, 49.2695286 53.6024951, 49.2686928 53.602587, 49.2678887 53.6026394, 49.2669875 53.6027443, 49.2662099 53.6028282, 49.2653616 53.6029121, 49.2628513 53.5942506)'), 4326)));

INSERT INTO roads (osm_id, name, highway, waterway, geom) VALUES
('way/308549384', '2-я улица', 'service', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(49.2771184 53.5930665, 49.2786687 53.5983737, 49.2792602 53.6004093, 49.2796313 53.6016028)'), 4326)));

-- ===================== Пространственные индексы =====================

CREATE INDEX idx_buildings_geom ON buildings USING GIST (geom);
CREATE INDEX idx_roads_geom ON roads USING GIST (geom);
CREATE INDEX idx_poi_geom ON poi USING GIST (geom);
