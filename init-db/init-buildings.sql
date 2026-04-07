CREATE EXTENSION IF NOT EXISTS postgis;

DROP TABLE IF EXISTS buildings CASCADE;

CREATE TABLE buildings (
    ogc_fid serial primary key,
    id character varying,
    timestamp timestamp with time zone,
    addr_city character varying,
    addr_place character varying,
    addr_housenumber character varying,
    addr_street character varying,
    building character varying,
    building_levels character varying,
    name character varying,
    name_etymology_wikidata character varying,
    geom geometry(MultiPolygon, 4326) not null
);

INSERT INTO buildings (id, timestamp, addr_city, addr_place, addr_housenumber, addr_street, building, building_levels, name, name_etymology_wikidata, geom) VALUES
('way/1476450784', '2026-02-11T11:34:54Z', 'сельское поселение Тимофеевка', 'НСТ Мелиоратор', '1', 'улица Коммассив', 'house', '2', NULL, NULL, ST_Multi(ST_GeomFromText('POLYGON((49.3295402 53.5759023,49.3295061 53.5758011,49.329788 53.5757676,49.3298221 53.5758689,49.3295402 53.5759023))', 4326))),
('way/1476450785', '2026-02-11T11:34:54Z', 'село Русская Борковка', 'НСТ Мелиоратор', '2А', '12-я Садовая улица', 'house', '2', NULL, NULL, ST_Multi(ST_GeomFromText('POLYGON((49.3302603 53.5758029,49.3302698 53.5757282,49.330411 53.5757345,49.3304015 53.5758092,49.3302603 53.5758029))', 4326))),
('way/1476450786', '2026-02-11T11:34:54Z', 'сельское поселение Тимофеевка', 'НСТ Мелиоратор', '13', '12-я Садовая', 'house', '2', NULL, NULL, ST_Multi(ST_GeomFromText('POLYGON((49.3310508 53.5755784,49.3310777 53.5755289,49.3311834 53.5755492,49.3311565 53.5755987,49.3310508 53.5755784))', 4326))),
('way/1476450787', '2026-02-11T11:34:54Z', 'сельское поселение Тимофеевка', 'НСТ Мелиоратор', '11', '12-я Садовая улица', 'house', '1', NULL, NULL, ST_Multi(ST_GeomFromText('POLYGON((49.3310679 53.5757514,49.3309927 53.5757375,49.3310367 53.5756536,49.3311119 53.5756675,49.3310679 53.5757514))', 4326))),
('way/1476450788', '2026-02-11T11:34:54Z', 'сельское поселение Тимофеевка', 'НСТ Мелиоратор', '15', '12-я Садовая улица', 'house', NULL, NULL, NULL, ST_Multi(ST_GeomFromText('POLYGON((49.3311951 53.5757585,49.3312337 53.5756946,49.3313637 53.5757223,49.3313251 53.5757862,49.3311951 53.5757585))', 4326))),
('way/1476450789', '2026-02-11T11:34:54Z', 'село Русская Борковка', 'НСТ Мелиоратор', '5', '12-я Садовая улица', 'house', '1', NULL, NULL, ST_Multi(ST_GeomFromText('POLYGON((49.3307534 53.576126,49.3307762 53.5760864,49.3308565 53.5761028,49.3308338 53.5761423,49.3307534 53.576126))', 4326))),
('way/1476450790', '2026-02-11T11:34:54Z', 'сельское поселение Тимофеевка', 'НСТ Мелиоратор', '6', '12-я Садовая улица', 'house', '2', NULL, NULL, ST_Multi(ST_GeomFromText('POLYGON((49.3308926 53.5763622,49.3308618 53.5764045,49.3307873 53.5763854,49.3308181 53.5763431,49.3308926 53.5763622))', 4326))),
('way/1476450791', '2026-02-11T11:34:54Z', 'сельское поселение Тимофеевка', 'НСТ Мелиоратор', '11А', 'улица Коммассив', 'house', '2', NULL, NULL, ST_Multi(ST_GeomFromText('POLYGON((49.3296927 53.5764511,49.3297098 53.5765028,49.3296041 53.5765151,49.329587 53.5764634,49.3296927 53.5764511))', 4326))),
('way/1476450792', '2026-02-11T11:34:54Z', 'сельское поселение Тимофеевка', 'НСТ Мелиоратор', '17А', 'улица Коммассив', 'house', NULL, NULL, NULL, ST_Multi(ST_GeomFromText('POLYGON((49.3292773 53.5769115,49.3292583 53.5768464,49.3293632 53.5768357,49.3293822 53.5769007,49.3292773 53.5769115))', 4326))),
('way/1476450793', '2026-02-11T11:34:54Z', 'сельское поселение Тимофеевка', 'НСТ Мелиоратор', '24А', 'улица Коммассив', 'house', '2', NULL, NULL, ST_Multi(ST_GeomFromText('POLYGON((49.3300128 53.5773398,49.3299939 53.5772417,49.3301278 53.5772326,49.3301467 53.5773308,49.3300128 53.5773398))', 4326)));

CREATE INDEX index_buildings_geom ON buildings USING GIST (geom);