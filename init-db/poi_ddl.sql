CREATE TABLE public.poi (
    ogc_fid integer,
    "timestamp" timestamp with time zone,
    version character varying,
    changeset character varying,
    "user" character varying,
    uid character varying,
    access character varying,
    "addr:city" character varying,
    "addr:housenumber" character varying,
    "addr:place" character varying,
    "addr:street" character varying,
    barrier character varying,
    bicycle character varying,
    bridge character varying,
    building character varying,
    "building:levels" character varying,
    bus character varying,
    crossing character varying,
    "crossing:markings" character varying,
    description character varying,
    distance character varying,
    foot character varying,
    ford character varying,
    highway character varying,
    horse character varying,
    intermittent character varying,
    landuse character varying,
    lanes character varying,
    layer character varying,
    motor_vehicle character varying,
    name character varying,
    network character varying,
    oneway character varying,
    public_transport character varying,
    ref character varying,
    route character varying,
    surface character varying,
    tracktype character varying,
    tunnel character varying,
    type character varying,
    waterway character varying,
    width character varying,
    id character varying NOT NULL,
    geom public.geometry
);


ALTER TABLE public.poi OWNER TO gisuser;


INSERT INTO public.poi VALUES (84, '2025-11-09 11:58:03+00', '3', '174413546', 'Corsa5', '7731115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'crossing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'node/5214843069', '01040000000100000001010000002BC82A00215449402A79D04774A44A40');
INSERT INTO public.poi VALUES (85, '2019-10-07 07:14:00+00', '1', '75360313', 'NetWormKido', '518505', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'crossing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'node/6856724384', '0104000000010000000101000000659A9FD10C6149400010C18245A64A40');
INSERT INTO public.poi VALUES (86, '2025-11-09 11:58:03+00', '4', '174413546', 'Corsa5', '7731115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, 'bus_stop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'platform', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'node/7106538591', '0104000000010000000101000000E789E76C01554940A2ADEF6888A44A40');
INSERT INTO public.poi VALUES (87, '2022-07-10 17:28:55+00', '1', '123441168', 'Asker-80', '16506708', 'no', NULL, NULL, NULL, NULL, 'lift_gate', 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'node/9879321464', '01040000000100000001010000009ED156259155494017B83CD68CA44A40');
INSERT INTO public.poi VALUES (88, '2025-10-11 11:32:16+00', '1', '173132753', 'Asker-80', '16506708', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'node/13208492227', '010400000001000000010100000084CCDFCECF5549406DACC43C2BA44A40');
INSERT INTO public.poi VALUES (89, '2025-11-09 12:01:53+00', '1', '174413681', 'Corsa5', '7731115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stop_position', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'node/13290561804', '01040000000100000001010000005C430477FB6049400CEC8C4A45A64A40');
INSERT INTO public.poi VALUES (90, '2025-11-09 11:58:03+00', '1', '174413546', 'Corsa5', '7731115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stop_position', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'node/13290582185', '0104000000010000000101000000ABC1453877534940D791D90F67A44A40');
INSERT INTO public.poi VALUES (91, '2025-11-09 11:58:03+00', '1', '174413546', 'Corsa5', '7731115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stop_position', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'node/13290582186', '01040000000100000001010000003369F8BB1C54494030229BF573A44A40');
INSERT INTO public.poi VALUES (92, '2025-11-09 11:58:03+00', '1', '174413546', 'Corsa5', '7731115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stop_position', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'node/13290582187', '0104000000010000000101000000E7278BB10255494092F249DD84A44A40');
INSERT INTO public.poi VALUES (93, '2025-11-09 11:58:03+00', '1', '174413546', 'Corsa5', '7731115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uncontrolled', 'yes', NULL, NULL, NULL, NULL, 'crossing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'node/13290582188', '0104000000010000000101000000EEBA6D951655494032B6C65686A44A40');


ALTER TABLE ONLY public.poi
    ADD CONSTRAINT poi_pkey PRIMARY KEY (id);


CREATE INDEX idx_poi_geom ON public.poi USING gist (geom);
