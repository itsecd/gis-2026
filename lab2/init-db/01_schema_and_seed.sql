-- =============================================================
-- Скрипт инициализации БД для лабораторной работы №2
-- Автоматически генерирует структуру и данные из map.geojson
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
('way/1475588464', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '2-я улица', '142', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.279367 53.6014369, 49.2793515 53.6013821, 49.2794702 53.6013702, 49.2794858 53.6014251, 49.279367 53.6014369))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1475588465', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '1-я улица', '49А', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2787424 53.601351, 49.2787206 53.6012727, 49.2788097 53.601264, 49.2788315 53.6013423, 49.2787424 53.601351))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1475588466', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '2-я улица', '140', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2792763 53.6010945, 49.2792538 53.6010187, 49.2793817 53.6010053, 49.2794042 53.6010811, 49.2792763 53.6010945))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1475588467', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '1-я улица', '49', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2786624 53.6011041, 49.2786512 53.601059, 49.278758 53.6010496, 49.2787692 53.6010947, 49.2786624 53.6011041))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1475588468', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '2-я улица', '141', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2793506 53.6012418, 49.279343 53.601214, 49.2793018 53.6012179, 49.2792964 53.601198, 49.279334 53.6011944, 49.2793311 53.6011837, 49.2794061 53.6011766, 49.279422 53.601235, 49.2793506 53.6012418))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1475588469', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '2-я улица', '139', 'house', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2792116 53.6009092, 49.2791979 53.6008637, 49.2793218 53.6008505, 49.2793355 53.600896, 49.2792116 53.6009092))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1475588470', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '1-я улица', '50', 'house', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2786409 53.6009704, 49.2786315 53.6009264, 49.2787012 53.6009211, 49.2787106 53.6009652, 49.2786409 53.6009704))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1475588471', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '1-я улица', '51', 'house', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.27859 53.6007868, 49.2785764 53.6007414, 49.2786626 53.6007323, 49.2786762 53.6007777, 49.27859 53.6007868))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1475588473', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '2-я улица', '138', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2792049 53.6007319, 49.279195 53.6006798, 49.2792762 53.6006744, 49.279286 53.6007265, 49.2792049 53.6007319))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1475588474', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '2-я улица', '137', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2791111 53.6005857, 49.2790806 53.600483, 49.279216 53.6004689, 49.2792465 53.6005716, 49.2791111 53.6005857))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1475588475', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '1-я улица', '52', 'house', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2785391 53.6006199, 49.2785239 53.600558, 49.2786283 53.600549, 49.2786434 53.6006109, 49.2785391 53.6006199))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1475588476', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '2-я улица', '136', 'house', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2790121 53.6003868, 49.2789921 53.6003191, 49.2791408 53.6003037, 49.2791607 53.6003713, 49.2790121 53.6003868))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1475588477', 'сельское поселение Тимофеевка', 'СНТ "Сборщик"', '1-я улица', '53', 'house', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2784709 53.6003622, 49.2784509 53.6003126, 49.2785722 53.6002953, 49.2785922 53.600345, 49.2784709 53.6003622))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1475588478', 'с. Русская Борковка', 'СНТ "Сборщик"', '1-я улица', '54', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2784454 53.6002583, 49.2784298 53.6002083, 49.2785517 53.600195, 49.2785673 53.6002449, 49.2784454 53.6002583))'), 4326)));

INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES
('way/1475588479', 'с. Русская Борковка', 'СНТ "Сборщик"', '2-я улица', '135', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((49.2790461 53.6001901, 49.2790349 53.6001496, 49.279119 53.6001414, 49.2791301 53.6001819, 49.2790461 53.6001901))'), 4326)));

-- ===================== DML: Дороги =====================

INSERT INTO roads (osm_id, name, highway, waterway, geom) VALUES
('way/89726839', NULL, NULL, 'canal',
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(49.2133031 53.6083856, 49.2141997 53.6082929, 49.2274333 53.607016, 49.2446264 53.6052675, 49.2760608 53.6020587, 49.2771114 53.6041918, 49.2776038 53.6061982, 49.2765204 53.6075617, 49.2752237 53.608185, 49.2745671 53.6088375, 49.2747969 53.6095582, 49.2758474 53.6102302, 49.2757489 53.6109216, 49.2754662 53.6122073)'), 4326)));

INSERT INTO roads (osm_id, name, highway, waterway, geom) VALUES
('way/308542640', '1-я улица', 'unclassified', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(49.2980525 53.591284, 49.3002881 53.5988338, 49.299456 53.598886, 49.2986014 53.5989933, 49.2977794 53.5991723, 49.2969574 53.599393, 49.2962115 53.5995933, 49.2954154 53.599807, 49.2946194 53.6000207, 49.2943708 53.6000875, 49.2937654 53.6001479, 49.2929096 53.6002332, 49.2920468 53.6003192, 49.2912745 53.6003962, 49.2904639 53.600477, 49.2896027 53.6005552, 49.2887678 53.600631, 49.2879496 53.6007052, 49.2871028 53.6007821, 49.2862644 53.6008478, 49.2853741 53.6009329, 49.2845957 53.6010073, 49.2837574 53.6011293, 49.2829147 53.6012205, 49.282099 53.6013334, 49.2812702 53.6014153, 49.280452 53.6015091, 49.2796313 53.6016028, 49.2789755 53.6016599, 49.2788596 53.6016443, 49.278795 53.6015743, 49.2762946 53.5932423, 49.2762847 53.5932092, 49.2762874 53.5931838, 49.2763173 53.5931469)'), 4326)));

INSERT INTO roads (osm_id, name, highway, waterway, geom) VALUES
('way/308542641', '17-я улица', 'unclassified', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(49.2753785 53.5932039, 49.2755733 53.5937679, 49.2779259 53.6016771, 49.2770402 53.6017287, 49.2761861 53.6017662, 49.2753474 53.6018725, 49.2745569 53.6019727, 49.2736732 53.6020601, 49.2728896 53.6021376, 49.2720419 53.6022215, 49.2711764 53.6023153, 49.2703629 53.6024035, 49.2695286 53.6024951, 49.2686928 53.602587, 49.2678887 53.6026394, 49.2669875 53.6027443, 49.2662099 53.6028282, 49.2653616 53.6029121, 49.2628513 53.5942506)'), 4326)));

INSERT INTO roads (osm_id, name, highway, waterway, geom) VALUES
('way/308549380', NULL, 'service', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(49.2720412 53.5934831, 49.2745569 53.6019727)'), 4326)));

INSERT INTO roads (osm_id, name, highway, waterway, geom) VALUES
('way/308549381', '14-я улица', 'service', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(49.2753474 53.6018725, 49.2729033 53.5934109)'), 4326)));

INSERT INTO roads (osm_id, name, highway, waterway, geom) VALUES
('way/308549382', '15-я улица', 'service', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(49.2737023 53.5933441, 49.2761861 53.6017662)'), 4326)));

INSERT INTO roads (osm_id, name, highway, waterway, geom) VALUES
('way/308549383', '16-я улица', 'service', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(49.2770402 53.6017287, 49.2745462 53.5932735)'), 4326)));

INSERT INTO roads (osm_id, name, highway, waterway, geom) VALUES
('way/308549384', '2-я улица', 'service', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(49.2771184 53.5930665, 49.2786687 53.5983737, 49.2792602 53.6004093, 49.2796313 53.6016028)'), 4326)));

-- ===================== Пространственные индексы =====================

CREATE INDEX idx_buildings_geom ON buildings USING GIST (geom);
CREATE INDEX idx_roads_geom ON roads USING GIST (geom);
CREATE INDEX idx_poi_geom ON poi USING GIST (geom);
