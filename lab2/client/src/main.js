import "ol/ol.css";

import Map from "ol/Map";
import View from "ol/View";

import TileLayer from "ol/layer/Tile";
import OSM from "ol/source/OSM";

import { fromLonLat } from "ol/proj";
import TileWMS from "ol/source/TileWMS";

const map = new Map({
  target: "map",
  layers: [
    new TileLayer({
      source: new OSM(),
    }),
  ],
  view: new View({
    center: fromLonLat([50.412987, 53.118023]),
    zoom: 16,
  }),
});

const buildingsLayer = new TileLayer({
  source: new TileWMS({
    url: "http://localhost:8080/geoserver/gis/wms",
    params: {
      LAYERS: "gis:buildings",
      TILED: true,
    },
    serverType: "geoserver",
  }),
});

const roadsLayer = new TileLayer({
  source: new TileWMS({
    url: "http://localhost:8080/geoserver/gis/wms",
    params: {
      LAYERS: "gis:roads",
      TILED: true,
    },
    serverType: "geoserver",
  }),
});

const poiLayer = new TileLayer({
  source: new TileWMS({
    url: "http://localhost:8080/geoserver/gis/wms",
    params: {
      LAYERS: "gis:poi",
      TILED: true,
    },
    serverType: "geoserver",
  }),
});

map.addLayer(buildingsLayer);
map.addLayer(roadsLayer);
map.addLayer(poiLayer);
