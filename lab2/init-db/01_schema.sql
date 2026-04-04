-- public.buildings definition

-- Drop table

-- DROP TABLE public.buildings;

CREATE TABLE public.buildings (
	id varchar NULL,
	building varchar NULL,
	building_levels varchar NULL,
	addr_city varchar NULL,
	addr_housenumber varchar NULL,
	addr_place varchar NULL,
	addr_postcode varchar NULL,
	"timestamp" timestamptz NULL,
	"version" varchar NULL,
	changeset varchar NULL,
	"user" varchar NULL,
	uid varchar NULL,
	pk_id serial4 NOT NULL,
	geom public.geometry NULL,
	CONSTRAINT buildings_pkey PRIMARY KEY (pk_id)
);
CREATE INDEX idx_buildings_geom ON public.buildings USING gist (geom);

-- public.poi definition

-- Drop table

-- DROP TABLE public.poi;

CREATE TABLE public.poi (
	id varchar NULL,
	geom public.geometry NULL,
	highway varchar NULL,
	crossing varchar NULL,
	tactile_paving varchar NULL,
	"timestamp" timestamptz NULL,
	"version" varchar NULL,
	changeset varchar NULL,
	"user" varchar NULL,
	uid varchar NULL,
	pk_id serial4 NOT NULL,
	CONSTRAINT poi_pkey PRIMARY KEY (pk_id)
);
CREATE INDEX idx_poi_geom ON public.poi USING gist (geom);

-- public.roads definition

-- Drop table

-- DROP TABLE public.roads;

CREATE TABLE public.roads (
	id varchar NULL,
	geom public.geometry NULL,
	highway varchar NULL,
	tracktype varchar NULL,
	footway varchar NULL,
	"timestamp" timestamptz NULL,
	"version" varchar NULL,
	changeset varchar NULL,
	"user" varchar NULL,
	uid varchar NULL,
	pk_id serial4 NOT NULL,
	CONSTRAINT roads_pkey PRIMARY KEY (pk_id)
);
CREATE INDEX idx_roads_geom ON public.roads USING gist (geom);