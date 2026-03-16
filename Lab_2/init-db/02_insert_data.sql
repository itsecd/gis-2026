-- Здания 

-- Дом 60
INSERT INTO buildings (osm_id, addr_housenumber, addr_street, addr_village, addr_region, building, building_levels, geom) VALUES
('way/1484119273', '60', 'улица 30 лет Победы', 'Еланцы', 'Иркутская область', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((
    106.397573 52.8002899,
    106.3976349 52.8002358,
    106.3976616 52.8002469,
    106.3976784 52.8002321,
    106.3977972 52.8002817,
    106.3977185 52.8003507,
    106.397573 52.8002899
))'), 4326)));

-- Дом 62
INSERT INTO buildings (osm_id, addr_housenumber, addr_street, addr_village, addr_region, building, building_levels, geom) VALUES
('way/1484119274', '62', 'улица 30 лет Победы', 'Еланцы', 'Иркутская область', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((
    106.3974964 52.8001464,
    106.3973799 52.8002433,
    106.3971667 52.8001496,
    106.3972832 52.8000527,
    106.3974964 52.8001464
))'), 4326)));

-- Дом 64
INSERT INTO buildings (osm_id, addr_housenumber, addr_street, addr_village, addr_region, building, building_levels, geom) VALUES
('way/1484119275', '64', 'улица 30 лет Победы', 'Еланцы', 'Иркутская область', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((
    106.3969013 52.7998909,
    106.3968061 52.7999674,
    106.3965703 52.7998602,
    106.3966655 52.7997837,
    106.3969013 52.7998909
))'), 4326)));

-- Дом 66
INSERT INTO buildings (osm_id, addr_housenumber, addr_street, addr_village, addr_region, building, building_levels, geom) VALUES
('way/1484119276', '66', 'улица 30 лет Победы', 'Еланцы', 'Иркутская область', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((
    106.396438 52.7996652,
    106.396376 52.7997135,
    106.3962514 52.7996549,
    106.3963133 52.7996066,
    106.396438 52.7996652
))'), 4326)));

-- Дом 2 по Степной
INSERT INTO buildings (osm_id, addr_housenumber, addr_street, addr_village, addr_region, building, building_levels, geom) VALUES
('way/1484119277', '2', 'Степная улица', 'Еланцы', 'Иркутская область', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((
    106.3952356 52.7996513,
    106.3953792 52.7996209,
    106.3954971 52.799824,
    106.3954029 52.799844,
    106.3953882 52.7998187,
    106.3953388 52.7998292,
    106.3952356 52.7996513
))'), 4326)));

-- Дом 4 по Степной
INSERT INTO buildings (osm_id, addr_housenumber, addr_street, addr_village, addr_region, building, building_levels, geom) VALUES
('way/1484119278', '4', 'Степная улица', 'Еланцы', 'Иркутская область', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((
    106.3958186 52.8000648,
    106.3959254 52.8002029,
    106.3957578 52.8002503,
    106.3956776 52.8001466,
    106.3957321 52.8001312,
    106.3957055 52.8000968,
    106.3958186 52.8000648
))'), 4326)));

-- Дом 1 по Степной
INSERT INTO buildings (osm_id, addr_housenumber, addr_street, addr_village, addr_region, building, building_levels, geom) VALUES
('way/1484119279', '1', 'Степная улица', 'Еланцы', 'Иркутская область', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((
    106.3954951 52.8003822,
    106.3953785 52.8002963,
    106.3954905 52.8002408,
    106.3956071 52.8003267,
    106.3954951 52.8003822
))'), 4326)));

-- Дом 70
INSERT INTO buildings (osm_id, addr_housenumber, addr_street, addr_village, addr_region, building, building_levels, geom) VALUES
('way/1484119280', '70', 'улица 30 лет Победы', 'Еланцы', 'Иркутская область', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((
    106.3957032 52.799346,
    106.3958479 52.7994189,
    106.3957897 52.7994611,
    106.395645 52.7993882,
    106.3957032 52.799346
))'), 4326)));

-- Дом 31
INSERT INTO buildings (osm_id, addr_housenumber, addr_street, addr_village, addr_region, building, building_levels, geom) VALUES
('way/1484119281', '31', 'улица 30 лет Победы', 'Еланцы', 'Иркутская область', 'house', '1',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((
    106.3974499 52.7997114,
    106.3976178 52.7997842,
    106.3975154 52.7998705,
    106.3973475 52.7997977,
    106.3974499 52.7997114
))'), 4326)));

-- Дом 35
INSERT INTO buildings (osm_id, addr_housenumber, addr_street, addr_village, addr_region, building, building_levels, geom) VALUES
('way/1484119282', '35', 'улица 30 лет Победы', 'Еланцы', 'Иркутская область', 'house', '2',
 ST_Multi(ST_SetSRID(ST_GeomFromText('POLYGON((
    106.396759 52.799518,
    106.3968567 52.7994366,
    106.3970251 52.7995105,
    106.3969275 52.7995919,
    106.396759 52.799518
))'), 4326)));

-- Дороги 

-- Степная улица
INSERT INTO roads (osm_id, name, highway, surface, geom) VALUES
('way/101184674', 'Степная улица', 'residential', NULL,
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(
    106.3968847 52.8012235,
    106.3963598 52.8008017,
    106.3955043 52.8001141,
    106.3950491 52.7996052,
    106.3949618 52.7994167,
    106.3950367 52.7992999,
    106.395205 52.7992207,
    106.3953569 52.7991836,
    106.395562 52.7991026
)'), 4326)));

-- улица 30 лет Победы (основная)
INSERT INTO roads (osm_id, name, highway, surface, geom) VALUES
('way/101184680', 'улица 30 лет Победы', 'residential', 'asphalt',
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(
    106.4057616 52.8036013,
    106.4022976 52.8020605,
    106.4004259 52.801284,
    106.3980613 52.8002454
)'), 4326)));

-- Безымянная дорога (соединительная)
INSERT INTO roads (osm_id, highway, geom) VALUES
('way/101184686', 'residential',
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(
    106.396303 52.7994516,
    106.3957538 52.7992005,
    106.395562 52.7991026,
    106.3958249 52.7986823,
    106.3957724 52.798357,
    106.3958186 52.7979514,
    106.3959261 52.7976708,
    106.3958931 52.7974359,
    106.3957472 52.7971648,
    106.3953298 52.7967002,
    106.3950402 52.7964774,
    106.3947585 52.7963325,
    106.3945556 52.7962386,
    106.3941604 52.7960558,
    106.3934872 52.7958206,
    106.393109 52.7957394,
    106.3925614 52.7956099,
    106.3917732 52.7953405,
    106.391497 52.7952594,
    106.3912538 52.7951577,
    106.390251 52.7947047,
    106.3899146 52.7945549,
    106.3897108 52.7945047,
    106.3894665 52.7944534,
    106.3883948 52.7939855
)'), 4326)));

-- Советская улица (часть 1)
INSERT INTO roads (osm_id, name, highway, geom) VALUES
('way/101184700', 'Советская улица', 'residential',
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(
    106.3980613 52.8002454,
    106.3973737 52.8008836,
    106.3968847 52.8012235,
    106.3967975 52.8012787,
    106.3958367 52.8015855,
    106.3952133 52.8017076,
    106.3934459 52.8018136,
    106.3927631 52.8018146,
    106.3920308 52.8018714,
    106.3915856 52.8017433,
    106.3909357 52.8017257,
    106.3908457 52.801742,
    106.3905072 52.8018031,
    106.3900647 52.801889,
    106.3893002 52.8019636,
    106.3889951 52.8020403,
    106.3886619 52.8021241
)'), 4326)));

-- Советская улица (часть 2)
INSERT INTO roads (osm_id, name, highway, surface, geom) VALUES
('way/531377290', 'Советская улица', 'residential', 'asphalt',
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(
    106.4027234 52.7959404,
    106.4012295 52.7973995,
    106.4005082 52.7980367,
    106.3995409 52.7989403,
    106.3980613 52.8002454
)'), 4326)));

INSERT INTO roads (osm_id, name, highway, geom) VALUES
('way/531377291', 'улица 30 лет Победы', 'residential',
 ST_Multi(ST_SetSRID(ST_GeomFromText('LINESTRING(
    106.3980613 52.8002454,
    106.396303 52.7994516
)'), 4326)));
