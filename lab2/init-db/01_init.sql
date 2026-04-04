-- public.buildings определение

-- Drop table

-- DROP TABLE public.buildings;

CREATE TABLE public.buildings (
	ogc_fid int4 NULL,
	osm_id varchar NULL,
	building varchar NULL,
	building_levels varchar NULL,
	addr_city varchar NULL,
	addr_street varchar NULL,
	addr_housenumber varchar NULL,
	addr_postcode varchar NULL,
	wkb_geometry bytea NULL,
	geom public.geometry(geometry, 4326) NULL,
	id serial4 NOT NULL,
	CONSTRAINT buildings_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_buildings_geom ON public.buildings USING gist (geom);

-- public.poi определение

-- Drop table

-- DROP TABLE public.poi;

CREATE TABLE public.poi (
	ogc_fid int4 NULL,
	osm_id varchar NULL,
	barrier varchar NULL,
	wkb_geometry bytea NULL,
	geom public.geometry(geometry, 4326) NULL,
	id serial4 NOT NULL,
	CONSTRAINT poi_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_poi_geom ON public.poi USING gist (geom);

-- public.roads определение

-- Drop table

-- DROP TABLE public.roads;

CREATE TABLE public.roads (
	ogc_fid int4 NULL,
	osm_id varchar NULL,
	highway varchar NULL,
	tracktype varchar NULL,
	wkb_geometry bytea NULL,
	geom public.geometry(geometry, 4326) NULL,
	id serial4 NOT NULL,
	CONSTRAINT roads_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_roads_geom ON public.roads USING gist (geom);