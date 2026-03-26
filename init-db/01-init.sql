CREATE EXTENSION IF NOT EXISTS postgis;

-- ===================== DDL: Tables =====================

DROP TABLE IF EXISTS buildings CASCADE;
CREATE TABLE buildings (
    id SERIAL PRIMARY KEY,
    osm_id TEXT UNIQUE NOT NULL,
    addr_city TEXT,
    addr_street TEXT,
    addr_housenumber TEXT,
    addr_place TEXT,
    building TEXT,
    building_levels TEXT,
    name TEXT,
    geom GEOMETRY(MultiPolygon, 4326) NOT NULL
);

DROP TABLE IF EXISTS roads CASCADE;
CREATE TABLE roads (
    id SERIAL PRIMARY KEY,
    osm_id TEXT UNIQUE NOT NULL,
    name TEXT,
    highway TEXT,
    geom GEOMETRY(MultiLineString, 4326) NOT NULL
);

-- ===================== Spatial indexes =====================

CREATE INDEX idx_buildings_geom ON buildings USING gist (geom);
CREATE INDEX idx_roads_geom ON roads USING gist (geom);

-- ===================== DML: Buildings =====================

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1476430772', 'сельское поселение Тимофеевка', '2-я улица', '143', 'СНТ "Сборщик"', 'house', NULL, NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2796485 53.6014356,49.2796337 53.6013835,49.2797119 53.6013757,49.2797267 53.6014278,49.2796485 53.6014356))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1476430773', 'село Русская Борковка', '2-я улица', '145', 'СНТ "Сборщик"', 'house', '1', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.279539 53.6010336,49.2795324 53.6010123,49.2796127 53.6010036,49.2796112 53.6009988,49.2796703 53.6009924,49.2796857 53.6010428,49.2796229 53.6010496,49.2796155 53.6010254,49.279539 53.6010336))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1476430774', 'село Русская Борковка', '2-я улица', '146', 'СНТ "Сборщик"', 'house', NULL, NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2794588 53.6009011,49.2794472 53.6008641,49.2794757 53.600861,49.2794588 53.6008072,49.2795348 53.6007988,49.2795633 53.6008895,49.2794588 53.6009011))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1476430775', 'село Русская Борковка', '2-я улица', '144', 'СНТ "Сборщик"', 'house', NULL, NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2795954 53.6012195,49.2795847 53.6011884,49.2797335 53.6011704,49.2797491 53.6012157,49.2796718 53.601225,49.2796669 53.6012109,49.2795954 53.6012195))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1476430776', 'сельское поселение Тимофеевка', '2-я улица', '147', 'СНТ "Сборщик"', 'house', NULL, NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2794272 53.6007181,49.2794076 53.6006503,49.2794874 53.6006422,49.279507 53.60071,49.2794272 53.6007181))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1476430777', 'село Русская Борковка', '3-я улица', '236', 'СНТ "Сборщик"', 'house', '1', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.280133 53.6010146,49.2801202 53.6009793,49.2802131 53.6009674,49.280226 53.6010027,49.280133 53.6010146))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1476430778', 'сельское поселение Тимофеевка', '2-я улица', '148', 'СНТ "Сборщик"', 'house', NULL, NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2793834 53.6005266,49.2793686 53.6004829,49.2794572 53.6004724,49.279472 53.600516,49.2793834 53.6005266))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1476430779', 'село Русская Борковка', '2-я улица', '149', 'СНТ "Сборщик"', 'house', NULL, NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2793357 53.6003578,49.2793168 53.6002921,49.2794136 53.6002823,49.2794325 53.600348,49.2793357 53.6003578))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1476430780', 'сельское поселение Тимофеевка', '2-я улица', '150', 'СНТ "Сборщик"', 'house', NULL, NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2793021 53.6002121,49.2792934 53.6001825,49.2792795 53.600184,49.2792601 53.6001184,49.2793384 53.6001102,49.2793399 53.6001153,49.2793869 53.6001104,49.2794135 53.6002005,49.2793021 53.6002121))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1476430781', 'сельское поселение Тимофеевка', '3-я улица', '233', 'СНТ "Сборщик"', 'house', '1', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2799858 53.6004494,49.2799781 53.6004288,49.2800595 53.6004183,49.2800671 53.6004388,49.2799858 53.6004494))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1476430782', 'сельское поселение Тимофеевка', '3-я улица', '232', 'СНТ "Сборщик"', 'house', '2', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2799061 53.6003085,49.2798993 53.6002452,49.279943 53.6002435,49.2799424 53.6002378,49.2800168 53.6002351,49.2800219 53.6002833,49.2800016 53.6002841,49.2800038 53.6003049,49.2799061 53.6003085))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1476430783', 'сельское поселение Тимофеевка', '3-я улица', '231', 'СНТ "Сборщик"', 'house', '2', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2798521 53.6001334,49.2798419 53.6000893,49.2798894 53.6000855,49.279887 53.6000751,49.2799614 53.6000682,49.2799698 53.6000999,49.2799438 53.6001025,49.2799491 53.6001255,49.2798521 53.6001334))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1477363194', 'сельское поселение Тимофеевка', '3-я улица', '230', 'СНТ "Сборщик"', 'house', NULL, NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2798337 53.5999382,49.2798323 53.5999276,49.2798145 53.5999285,49.2798107 53.5998999,49.2798295 53.5998991,49.2798287 53.5998935,49.2798391 53.599893,49.279838 53.5998853,49.2798744 53.5998836,49.2798753 53.5998905,49.2799042 53.5998892,49.2799101 53.5999346,49.2798337 53.5999382))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1477363195', 'сельское поселение Тимофеевка', '3-я улица', '246', 'СНТ "Сборщик"', 'house', '1', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2800865 53.6001183,49.2800611 53.600025,49.2802015 53.6000116,49.2802269 53.6001049,49.2800865 53.6001183))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1477363196', 'сельское поселение Тимофеевка', '3-я улица', '246', 'СНТ "Сборщик"', 'garage', '1', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2800941 53.5999937,49.280081 53.5999379,49.2801628 53.5999312,49.2801759 53.5999869,49.2800941 53.5999937))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1477363197', 'сельское поселение Тимофеевка', '3-я улица', '245', 'СНТ "Сборщик"', 'house', '2', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2801664 53.6002783,49.2801543 53.6002361,49.2802103 53.6002304,49.2802039 53.600208,49.2802466 53.6002038,49.280265 53.6002684,49.2801664 53.6002783))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1477363198', 'сельское поселение Тимофеевка', '3-я улица', '244', 'СНТ "Сборщик"', 'house', NULL, NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2802117 53.6004487,49.28018 53.6003492,49.2802961 53.6003361,49.2803278 53.6004356,49.2802117 53.6004487))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1477363199', 'сельское поселение Тимофеевка', '3-я улица', '243', 'СНТ "Сборщик"', 'house', NULL, NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2803393 53.6005412,49.2803194 53.6004729,49.2804313 53.6004614,49.2804512 53.6005298,49.2803393 53.6005412))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1477363200', 'сельское поселение Тимофеевка', '3-я улица', '242', 'СНТ "Сборщик"', 'house', '1', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2803093 53.6007258,49.2803011 53.6006863,49.2803742 53.600681,49.2803823 53.6007204,49.2803093 53.6007258))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1477363201', 'сельское поселение Тимофеевка', '3-я улица', '241', 'СНТ "Сборщик"', 'house', '1', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2803756 53.6009729,49.2803589 53.6009139,49.2804534 53.6009045,49.2804701 53.6009635,49.2803756 53.6009729))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1477363202', 'сельское поселение Тимофеевка', '3-я улица', '240', 'СНТ "Сборщик"', 'house', '1', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2804036 53.6010464,49.2803916 53.6009966,49.2804784 53.6009892,49.2804904 53.601039,49.2804036 53.6010464))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1477363203', 'село Русская Борковка', '3-я улица', '239', 'СНТ "Сборщик"', 'house', '2', NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2804939 53.6013426,49.2804734 53.6012708,49.2806089 53.6012571,49.2806294 53.601329,49.2804939 53.6013426))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_street, addr_housenumber, addr_place, building, building_levels, name, geom) VALUES
('way/1477363204', 'сельское поселение Тимофеевка', '3-я улица', '247', 'СНТ "Сборщик"', 'house', NULL, NULL, ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2800629 53.5999084,49.2800414 53.5998339,49.2801531 53.5998226,49.2801745 53.5998971,49.2800629 53.5999084))'), 4326)));

-- ===================== DML: Roads =====================

INSERT INTO roads (osm_id, name, highway, geom) VALUES
('way/308542640', '1-я улица', 'unclassified', ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(49.2980525 53.591284,49.3002881 53.5988338,49.299456 53.598886,49.2986177 53.5989893,49.2977794 53.5991723,49.2969574 53.599393,49.2962115 53.5995933,49.2954154 53.599807,49.2946194 53.6000207,49.2943708 53.6000875,49.2937654 53.6001479,49.2929096 53.6002332,49.2920468 53.6003192,49.2912745 53.6003962,49.2904639 53.600477,49.2896027 53.6005552,49.2887678 53.600631,49.2879496 53.6007052,49.2871028 53.6007821,49.2862644 53.6008478,49.2853741 53.6009329,49.2845957 53.6010073,49.2837574 53.6011293,49.2829147 53.6012205,49.282099 53.6013334,49.2812702 53.6014153,49.280452 53.6015091,49.2796313 53.6016028,49.2789755 53.6016599,49.2788596 53.6016443,49.2787481 53.6015956,49.2762772 53.5932375,49.2762959 53.5931382)'), 4326)));

INSERT INTO roads (osm_id, name, highway, geom) VALUES
('way/308549384', '2-я улица', 'service', ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(49.2771184 53.5930665,49.2786687 53.5983737,49.2792602 53.6004093,49.2796313 53.6016028)'), 4326)));
