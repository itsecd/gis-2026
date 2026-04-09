import Map from 'ol/Map';
import View from 'ol/View';
import TileLayer from 'ol/layer/Tile';
import ImageLayer from 'ol/layer/Image';
import OSM from 'ol/source/OSM';
import ImageWMS from 'ol/source/ImageWMS';

import { fromLonLat } from 'ol/proj';

import './style.css';
import 'ol/ol.css';

const GEOSERVER_WMS_URL = 'http://localhost:18080/geoserver/gis/wms';
const BOUNDS = [
  49.326586,
  53.579436,
  49.339310,
  53.575200
];
const ZOOM = 16;


function createWmsLayer(layerName: string) {
  return new ImageLayer({
    source: new ImageWMS({
      url: GEOSERVER_WMS_URL,
      params: {
        LAYERS: `gis:${layerName}`,
        TILED: true
      },
      ratio: 1,
      serverType: 'geoserver'
    }),
    visible: true
  });
}

const osmLayer = new TileLayer({
  source: new OSM()
});

const buildingsLayer = createWmsLayer('buildings');
const highwaysLayer = createWmsLayer('highways');

const map = new Map({
  target: 'map',
  layers: [
    osmLayer,
    buildingsLayer,
    highwaysLayer
  ],
  view: new View({
    center: fromLonLat([
      (BOUNDS[0] + BOUNDS[2]) / 2,
      (BOUNDS[1] + BOUNDS[3]) / 2
    ]),
    zoom: ZOOM
  })
});