-- public.buildings определение

-- Drop table

-- DROP TABLE public.buildings;
CREATE EXTENSION IF NOT EXISTS postgis;

CREATE TABLE public.buildings (
	ogc_fid int4 NOT NULL,
	geom public.geometry(geometry, 4326) NULL,
	"timestamp" timestamptz NULL,
	"version" varchar NULL,
	changeset varchar NULL,
	"user" varchar NULL,
	uid varchar NULL,
	"addr:housenumber" varchar NULL,
	"addr:place" varchar NULL,
	"addr:street" varchar NULL,
	alt_name varchar NULL,
	amenity varchar NULL,
	bench varchar NULL,
	building varchar NULL,
	"building:levels" varchar NULL,
	bus varchar NULL,
	button_operated varchar NULL,
	cables varchar NULL,
	circuits varchar NULL,
	crossing varchar NULL,
	description varchar NULL,
	"description:fr" varchar NULL,
	direction varchar NULL,
	distance varchar NULL,
	"from" varchar NULL,
	highway varchar NULL,
	int_ref varchar NULL,
	landuse varchar NULL,
	lit varchar NULL,
	maxspeed varchar NULL,
	"name" varchar NULL,
	"name:en" varchar NULL,
	"name:fr" varchar NULL,
	"name:nl" varchar NULL,
	"name:pl" varchar NULL,
	"name:ru" varchar NULL,
	"name:sk" varchar NULL,
	"natural" varchar NULL,
	network varchar NULL,
	oneway varchar NULL,
	"operator" varchar NULL,
	place varchar NULL,
	power varchar NULL,
	public_transport varchar NULL,
	"public_transport:version" varchar NULL,
	"ref" varchar NULL,
	route varchar NULL,
	"seamark:type" varchar NULL,
	shelter varchar NULL,
	"source" varchar NULL,
	surface varchar NULL,
	"to" varchar NULL,
	"type" varchar NULL,
	voltage varchar NULL,
	waterway varchar NULL,
	wikidata varchar NULL,
	wikipedia varchar NULL,
	id varchar NULL,
	CONSTRAINT buildings_pkey PRIMARY KEY (ogc_fid)
);


-- public.poi определение

-- Drop table

-- DROP TABLE public.poi;

CREATE TABLE public.poi (
	ogc_fid int4 NOT NULL,
	geom public.geometry(geometry, 4326) NULL,
	"timestamp" timestamptz NULL,
	"version" varchar NULL,
	changeset varchar NULL,
	"user" varchar NULL,
	uid varchar NULL,
	"addr:housenumber" varchar NULL,
	"addr:place" varchar NULL,
	"addr:street" varchar NULL,
	alt_name varchar NULL,
	amenity varchar NULL,
	bench varchar NULL,
	building varchar NULL,
	"building:levels" varchar NULL,
	bus varchar NULL,
	button_operated varchar NULL,
	cables varchar NULL,
	circuits varchar NULL,
	crossing varchar NULL,
	description varchar NULL,
	"description:fr" varchar NULL,
	direction varchar NULL,
	distance varchar NULL,
	"from" varchar NULL,
	highway varchar NULL,
	int_ref varchar NULL,
	landuse varchar NULL,
	lit varchar NULL,
	maxspeed varchar NULL,
	"name" varchar NULL,
	"name:en" varchar NULL,
	"name:fr" varchar NULL,
	"name:nl" varchar NULL,
	"name:pl" varchar NULL,
	"name:ru" varchar NULL,
	"name:sk" varchar NULL,
	"natural" varchar NULL,
	network varchar NULL,
	oneway varchar NULL,
	"operator" varchar NULL,
	place varchar NULL,
	power varchar NULL,
	public_transport varchar NULL,
	"public_transport:version" varchar NULL,
	"ref" varchar NULL,
	route varchar NULL,
	"seamark:type" varchar NULL,
	shelter varchar NULL,
	"source" varchar NULL,
	surface varchar NULL,
	"to" varchar NULL,
	"type" varchar NULL,
	voltage varchar NULL,
	waterway varchar NULL,
	wikidata varchar NULL,
	wikipedia varchar NULL,
	id varchar NULL,
	CONSTRAINT poi_pkey PRIMARY KEY (ogc_fid)
);


-- public.roads определение

-- Drop table

-- DROP TABLE public.roads;

CREATE TABLE public.roads (
	ogc_fid int4 NOT NULL,
	geom public.geometry(geometry, 4326) NULL,
	"timestamp" timestamptz NULL,
	"version" varchar NULL,
	changeset varchar NULL,
	"user" varchar NULL,
	uid varchar NULL,
	"addr:housenumber" varchar NULL,
	"addr:place" varchar NULL,
	"addr:street" varchar NULL,
	alt_name varchar NULL,
	amenity varchar NULL,
	bench varchar NULL,
	building varchar NULL,
	"building:levels" varchar NULL,
	bus varchar NULL,
	button_operated varchar NULL,
	cables varchar NULL,
	circuits varchar NULL,
	crossing varchar NULL,
	description varchar NULL,
	"description:fr" varchar NULL,
	direction varchar NULL,
	distance varchar NULL,
	"from" varchar NULL,
	highway varchar NULL,
	int_ref varchar NULL,
	landuse varchar NULL,
	lit varchar NULL,
	maxspeed varchar NULL,
	"name" varchar NULL,
	"name:en" varchar NULL,
	"name:fr" varchar NULL,
	"name:nl" varchar NULL,
	"name:pl" varchar NULL,
	"name:ru" varchar NULL,
	"name:sk" varchar NULL,
	"natural" varchar NULL,
	network varchar NULL,
	oneway varchar NULL,
	"operator" varchar NULL,
	place varchar NULL,
	power varchar NULL,
	public_transport varchar NULL,
	"public_transport:version" varchar NULL,
	"ref" varchar NULL,
	route varchar NULL,
	"seamark:type" varchar NULL,
	shelter varchar NULL,
	"source" varchar NULL,
	surface varchar NULL,
	"to" varchar NULL,
	"type" varchar NULL,
	voltage varchar NULL,
	waterway varchar NULL,
	wikidata varchar NULL,
	wikipedia varchar NULL,
	id varchar NULL,
	CONSTRAINT roads_pkey PRIMARY KEY (ogc_fid)
);


INSERT INTO public.buildings (ogc_fid,geom,"timestamp","version",changeset,"user",uid,"addr:housenumber","addr:place","addr:street",alt_name,amenity,bench,building,"building:levels",bus,button_operated,cables,circuits,crossing,description,"description:fr",direction,distance,"from",highway,int_ref,landuse,lit,maxspeed,"name","name:en","name:fr","name:nl","name:pl","name:ru","name:sk","natural",network,oneway,"operator",place,power,public_transport,"public_transport:version","ref",route,"seamark:type",shelter,"source",surface,"to","type",voltage,waterway,wikidata,wikipedia,id) VALUES
	 (13,'SRID=4326;MULTIPOLYGON (((50.4149498 53.1190039, 50.4149151 53.1189403, 50.4150142 53.1189208, 50.4150343 53.1189578, 50.4150016 53.1189642, 50.4150162 53.1189909, 50.4149498 53.1190039)))'::public.geometry,'2026-02-12 11:50:52+04','1','178440705','Beni_nika_007','23804575','6','СДТ "Юбилейный-1" ЗИМ','1-я линия',NULL,NULL,NULL,'house','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'way/1476748046'),
	 (14,'SRID=4326;MULTIPOLYGON (((50.4150271 53.1187648, 50.4150097 53.1187343, 50.415067 53.1187225, 50.4150412 53.1186773, 50.4151238 53.1186602, 50.4151488 53.118704, 50.415201 53.1186933, 50.4152192 53.1187252, 50.4150271 53.1187648)))'::public.geometry,'2026-02-12 11:50:52+04','1','178440705','Beni_nika_007','23804575','3','СДТ "Юбилейный-1 ЗИМ"','2-я линия',NULL,NULL,NULL,'house','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'way/1476748047'),
	 (15,'SRID=4326;MULTIPOLYGON (((50.414794 53.1187331, 50.414765 53.1186765, 50.4148307 53.1186644, 50.4148238 53.1186508, 50.41486 53.1186441, 50.4148959 53.1187144, 50.414794 53.1187331)))'::public.geometry,'2026-02-12 11:50:52+04','1','178440705','Beni_nika_007','23804575','5','СДТ "Юбилейный-1 ЗИМ"','2-я линия',NULL,NULL,NULL,'house','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'way/1476748048'),
	 (16,'SRID=4326;MULTIPOLYGON (((50.4143509 53.118572, 50.4143222 53.1185146, 50.4144049 53.1184997, 50.4144336 53.1185571, 50.4143509 53.118572)))'::public.geometry,'2026-02-12 11:50:52+04','1','178440705','Beni_nika_007','23804575','8','СДТ "Юбилейный-1 ЗИМ"','2-я линия',NULL,NULL,NULL,'house','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'way/1476748049'),
	 (17,'SRID=4326;MULTIPOLYGON (((50.4153311 53.1182771, 50.4152904 53.1182069, 50.4154098 53.1181819, 50.4154505 53.1182521, 50.4153311 53.1182771)))'::public.geometry,'2026-02-12 11:50:52+04','1','178440705','Beni_nika_007','23804575','2','СДТ "Юбилейный-1 ЗИМ"','2-я линия',NULL,NULL,NULL,'house','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'way/1476748050'),
	 (18,'SRID=4326;MULTIPOLYGON (((50.4124676 53.1191137, 50.4124308 53.1190435, 50.4125521 53.1190206, 50.4125889 53.1190908, 50.4124676 53.1191137)))'::public.geometry,'2026-02-12 11:50:52+04','1','178440705','Beni_nika_007','23804575','21','СДТ "Юбилейный-1 ЗИМ"','2-я линия',NULL,NULL,NULL,'house','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'way/1476748058'),
	 (19,'SRID=4326;MULTIPOLYGON (((50.4114517 53.1191242, 50.4114095 53.1190558, 50.4115506 53.1190245, 50.4115928 53.1190928, 50.4114517 53.1191242)))'::public.geometry,'2026-02-12 11:50:52+04','1','178440705','Beni_nika_007','23804575','28','СДТ "Юбилейный-1 ЗИМ"','2-я линия',NULL,NULL,NULL,'house','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'way/1476748059');
INSERT INTO public.poi (ogc_fid,geom,"timestamp","version",changeset,"user",uid,"addr:housenumber","addr:place","addr:street",alt_name,amenity,bench,building,"building:levels",bus,button_operated,cables,circuits,crossing,description,"description:fr",direction,distance,"from",highway,int_ref,landuse,lit,maxspeed,"name","name:en","name:fr","name:nl","name:pl","name:ru","name:sk","natural",network,oneway,"operator",place,power,public_transport,"public_transport:version","ref",route,"seamark:type",shelter,"source",surface,"to","type",voltage,waterway,wikidata,wikipedia,id) VALUES
	 (38,'SRID=4326;MULTIPOINT ((50.4165983 53.1190474))'::public.geometry,'2010-08-29 19:39:32+04','1','5627187','akks','291666',NULL,NULL,NULL,NULL,'cafe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'node/886299495');
INSERT INTO public.roads (ogc_fid,geom,"timestamp","version",changeset,"user",uid,"addr:housenumber","addr:place","addr:street",alt_name,amenity,bench,building,"building:levels",bus,button_operated,cables,circuits,crossing,description,"description:fr",direction,distance,"from",highway,int_ref,landuse,lit,maxspeed,"name","name:en","name:fr","name:nl","name:pl","name:ru","name:sk","natural",network,oneway,"operator",place,power,public_transport,"public_transport:version","ref",route,"seamark:type",shelter,"source",surface,"to","type",voltage,waterway,wikidata,wikipedia,id) VALUES
	 (20,'SRID=4326;MULTILINESTRING ((50.4194985 53.1247923, 50.4163269 53.1191552, 50.4144024 53.115564, 50.4143608 53.1154866, 50.4141964 53.1151814, 50.4119339 53.1109803, 50.4111391 53.1095466, 50.4106048 53.1087633, 50.4084448 53.1058474))'::public.geometry,'2024-09-09 02:51:55+04','15','156371511','nyuhn','21141751',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'trunk','E 121;AH63',NULL,'no','90',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no',NULL,NULL,NULL,NULL,NULL,'Р-229',NULL,NULL,NULL,NULL,'asphalt',NULL,NULL,NULL,NULL,NULL,NULL,'way/154266671'),
	 (24,'SRID=4326;MULTILINESTRING ((50.4161002 53.1195427, 50.4162329 53.1196584, 50.4163295 53.1198226, 50.4163609 53.1200396, 50.4163724 53.1201413, 50.416308 53.120299, 50.4159379 53.1207143, 50.4158467 53.1207401, 50.4156804 53.1207498, 50.4139531 53.1208689))'::public.geometry,'2020-11-18 00:53:45+04','1','94307438','Pakuhi_Ahi','10778905',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'residential',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'way/873228816'),
	 (25,'SRID=4326;MULTILINESTRING ((50.4163269 53.1191552, 50.4162226 53.1192573, 50.4161146 53.1194592, 50.4161002 53.1195427, 50.4159927 53.1195486, 50.413421 53.1196814, 50.4117648 53.1197658, 50.4115351 53.1197992, 50.4115042 53.1198185, 50.4114908 53.1198467, 50.4114975 53.1198757, 50.4115216 53.1199465))'::public.geometry,'2020-11-18 00:53:45+04','1','94307438','Pakuhi_Ahi','10778905',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'residential',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'way/873228817'),
	 (26,'SRID=4326;MULTILINESTRING ((50.4153511 53.1179256, 50.4108609 53.1187875))'::public.geometry,'2026-02-17 19:44:48+04','3','178685987','Beni_nika_007','23804575',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'service',NULL,NULL,NULL,NULL,'3-я линия',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'unpaved',NULL,NULL,NULL,NULL,NULL,NULL,'way/873228818'),
	 (27,'SRID=4326;MULTILINESTRING ((50.4156004 53.1183891, 50.411506 53.1191903))'::public.geometry,'2026-02-17 19:44:48+04','3','178685987','Beni_nika_007','23804575',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'service',NULL,NULL,NULL,NULL,'2-я линия',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'unpaved',NULL,NULL,NULL,NULL,NULL,NULL,'way/873228819'),
	 (28,'SRID=4326;MULTILINESTRING ((50.4100692 53.1088027, 50.4103895 53.1092777, 50.4107791 53.1098592, 50.4110963 53.1103307, 50.4114518 53.11093, 50.411901 53.1117019, 50.4122459 53.1123472, 50.4126844 53.1131152, 50.4129484 53.1136059, 50.4134657 53.1145233, 50.4134774 53.1145452, 50.4137356 53.1150301, 50.4137978 53.1151469, 50.4140068 53.1155281, 50.4142406 53.1159544, 50.4142724 53.1160116, 50.4145347 53.1164828, 50.4145919 53.1165856, 50.4147792 53.1169298, 50.4147992 53.116964, 50.4150773 53.1174387, 50.4151936 53.1176373, 50.4153511 53.1179256, 50.4155016 53.1182157, 50.4156004 53.1183891, 50.4158731 53.1188666, 50.4159387 53.1189819))'::public.geometry,'2026-02-17 19:44:48+04','3','178685987','Beni_nika_007','23804575',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'residential',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'way/873228820'),
	 (29,'SRID=4326;MULTILINESTRING ((50.4103882 53.1183576, 50.4150773 53.1174387))'::public.geometry,'2026-02-12 11:50:52+04','1','178440705','Beni_nika_007','23804575',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'service',NULL,NULL,NULL,NULL,'4-я линия',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'unpaved',NULL,NULL,NULL,NULL,NULL,NULL,'way/1476748051'),
	 (30,'SRID=4326;MULTILINESTRING ((50.4099647 53.1179128, 50.4147992 53.116964))'::public.geometry,'2026-02-12 11:50:52+04','1','178440705','Beni_nika_007','23804575',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'service',NULL,NULL,NULL,NULL,'5-я линия',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'unpaved',NULL,NULL,NULL,NULL,NULL,NULL,'way/1476748052'),
	 (31,'SRID=4326;MULTILINESTRING ((50.4094984 53.1174893, 50.4145347 53.1164828))'::public.geometry,'2026-02-12 11:50:52+04','1','178440705','Beni_nika_007','23804575',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'service',NULL,NULL,NULL,NULL,'6-я линия',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'unpaved',NULL,NULL,NULL,NULL,NULL,NULL,'way/1476748053'),
	 (32,'SRID=4326;MULTILINESTRING ((50.4090411 53.1170513, 50.4142724 53.1160116))'::public.geometry,'2026-02-12 11:50:52+04','1','178440705','Beni_nika_007','23804575',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'service',NULL,NULL,NULL,NULL,'7-я линия',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'unpaved',NULL,NULL,NULL,NULL,NULL,NULL,'way/1476748054');
INSERT INTO public.roads (ogc_fid,geom,"timestamp","version",changeset,"user",uid,"addr:housenumber","addr:place","addr:street",alt_name,amenity,bench,building,"building:levels",bus,button_operated,cables,circuits,crossing,description,"description:fr",direction,distance,"from",highway,int_ref,landuse,lit,maxspeed,"name","name:en","name:fr","name:nl","name:pl","name:ru","name:sk","natural",network,oneway,"operator",place,power,public_transport,"public_transport:version","ref",route,"seamark:type",shelter,"source",surface,"to","type",voltage,waterway,wikidata,wikipedia,id) VALUES
	 (33,'SRID=4326;MULTILINESTRING ((50.4086705 53.1166138, 50.4140068 53.1155281))'::public.geometry,'2026-02-12 11:50:52+04','1','178440705','Beni_nika_007','23804575',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'service',NULL,NULL,NULL,NULL,'8-я линия',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'unpaved',NULL,NULL,NULL,NULL,NULL,NULL,'way/1476748055'),
	 (34,'SRID=4326;MULTILINESTRING ((50.4084033 53.1161152, 50.4137356 53.1150301))'::public.geometry,'2026-02-12 11:50:52+04','1','178440705','Beni_nika_007','23804575',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'service',NULL,NULL,NULL,NULL,'9-я линия',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'unpaved',NULL,NULL,NULL,NULL,NULL,NULL,'way/1476748056'),
	 (35,'SRID=4326;MULTILINESTRING ((50.4080979 53.1156454, 50.4134774 53.1145452))'::public.geometry,'2026-02-12 11:50:52+04','1','178440705','Beni_nika_007','23804575',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'service',NULL,NULL,NULL,NULL,'10-я линия',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'unpaved',NULL,NULL,NULL,NULL,NULL,NULL,'way/1476748057'),
	 (36,'SRID=4326;MULTILINESTRING ((50.4158731 53.1188666, 50.4129864 53.1194418))'::public.geometry,'2026-02-17 19:44:48+04','1','178685987','Beni_nika_007','23804575',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'service',NULL,NULL,NULL,NULL,'1-я линия',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'unpaved',NULL,NULL,NULL,NULL,NULL,NULL,'way/1479804819'),
	 (533,'SRID=4326;MULTIPOINT ((50.4143608 53.1154866))'::public.geometry,'2024-09-08 01:35:45+04','1','156329844','nyuhn','21141751',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no',NULL,NULL,'uncontrolled',NULL,NULL,NULL,NULL,NULL,'crossing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'node/12162540952');


CREATE INDEX idx_buildings_geom
ON buildings
USING GIST (geom);

CREATE INDEX idx_roads_geom
ON roads
USING GIST (geom);

CREATE INDEX idx_poi_geom
ON poi
USING GIST (geom);