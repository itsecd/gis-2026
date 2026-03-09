import json

# Read input.geojson
with open('input.geojson', 'r', encoding='utf-8-sig') as f:
    content = f.read()
    data = json.loads(content)

# Helper function to safely format value for SQL
def sql_value(val):
    if val is None:
        return 'NULL'
    val_str = str(val).replace("'", "''")
    return f"'{val_str}'"

# Helper function to format coordinates
def format_coords(coords, geom_type):
    if geom_type == 'Polygon':
        # coords is a list of rings
        rings = []
        for ring in coords:
            points = []
            for lon, lat in ring:
                points.append(f"{lon} {lat}")
            rings.append(f"({', '.join(points)})")
        return f"POLYGON({', '.join(rings)})"
    elif geom_type == 'LineString':
        # coords is a list of [lon, lat]
        points = []
        for lon, lat in coords:
            points.append(f"{lon} {lat}")
        return f"LINESTRING({', '.join(points)})"

# Separate features by geometry type
buildings = []
roads = []

for feature in data['features']:
    geom_type = feature['geometry']['type']
    
    if geom_type == 'Polygon':
        buildings.append(feature)
    elif geom_type == 'LineString':
        roads.append(feature)

# Generate SQL
sql = """-- =============================================================
-- Скрипт инициализации БД для лабораторной работы №2
-- Автоматически генерирует структуру и данные из input.geojson
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

"""

# Buildings
if buildings:
    sql += "-- ===================== DML: Здания =====================\n\n"
    for feature in buildings:
        props = feature.get('properties', {})
        osm_id = props.get('id', feature.get('id', ''))
        
        addr_city = props.get('addr:city')
        addr_place = props.get('addr:place')
        addr_street = props.get('addr:street')
        addr_housenumber = props.get('addr:housenumber')
        building = props.get('building')
        building_levels = props.get('building:levels')
        
        # Format coordinates
        coords = feature['geometry']['coordinates']
        wkt = format_coords(coords, 'Polygon')
        
        sql += f"INSERT INTO buildings (osm_id, addr_city, addr_place, addr_street, addr_housenumber, building, building_levels, geom) VALUES\n"
        sql += f"({sql_value(osm_id)}, {sql_value(addr_city)}, {sql_value(addr_place)}, {sql_value(addr_street)}, {sql_value(addr_housenumber)}, {sql_value(building)}, {sql_value(building_levels)},\n"
        sql += f" ST_Multi(ST_SetSRID(ST_GeomFromText('{wkt}'), 4326)));\n\n"

# Roads
if roads:
    sql += "-- ===================== DML: Дороги =====================\n\n"
    for feature in roads:
        props = feature.get('properties', {})
        osm_id = props.get('id', feature.get('id', ''))
        
        name = props.get('name')
        highway = props.get('highway')
        waterway = props.get('waterway')
        
        # Format coordinates
        coords = feature['geometry']['coordinates']
        wkt = format_coords(coords, 'LineString')
        
        sql += f"INSERT INTO roads (osm_id, name, highway, waterway, geom) VALUES\n"
        sql += f"({sql_value(osm_id)}, {sql_value(name)}, {sql_value(highway)}, {sql_value(waterway)},\n"
        sql += f" ST_Multi(ST_SetSRID(ST_GeomFromText('{wkt}'), 4326)));\n\n"

# Spatial indexes
sql += """-- ===================== Пространственные индексы =====================

CREATE INDEX idx_buildings_geom ON buildings USING GIST (geom);
CREATE INDEX idx_roads_geom ON roads USING GIST (geom);
CREATE INDEX idx_poi_geom ON poi USING GIST (geom);
"""

# Write SQL file
with open('01-init.sql', 'w', encoding='utf-8') as f:
    f.write(sql)

print(f"Generated 01-init.sql with {len(buildings)} buildings and {len(roads)} roads")
