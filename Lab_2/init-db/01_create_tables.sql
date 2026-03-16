
CREATE EXTENSION IF NOT EXISTS postgis;


-- Здания (полигональные объекты)
DROP TABLE IF EXISTS buildings;
CREATE TABLE buildings (
    id SERIAL PRIMARY KEY,
    osm_id BIGINT,
    name VARCHAR(255),
    building VARCHAR(100),
    amenity VARCHAR(100),
    geom geometry(MultiPolygon, 4326)
);

-- Дороги (линейные объекты)
DROP TABLE IF EXISTS roads;
CREATE TABLE roads (
    id SERIAL PRIMARY KEY,
    osm_id BIGINT,
    name VARCHAR(255),
    highway VARCHAR(100),
    surface VARCHAR(100),
    geom geometry(MultiLineString, 4326)
);

-- Точки интереса (точечные объекты)
DROP TABLE IF EXISTS pois;
CREATE TABLE pois (
    id SERIAL PRIMARY KEY,
    osm_id BIGINT,
    name VARCHAR(255),
    amenity VARCHAR(100),
    shop VARCHAR(100),
    geom geometry(Point, 4326)
);

-- Пространственные индексы 

CREATE INDEX idx_buildings_geom ON buildings USING GIST (geom);
CREATE INDEX idx_roads_geom ON roads USING GIST (geom);
CREATE INDEX idx_pois_geom ON pois USING GIST (geom);