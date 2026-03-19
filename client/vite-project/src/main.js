import 'ol/ol.css';

import Map from 'ol/Map';
import View from 'ol/View';
import TileLayer from 'ol/layer/Tile';
import ImageLayer from 'ol/layer/Image';

import OSM from 'ol/source/OSM';
import ImageWMS from 'ol/source/ImageWMS';

document.body.style.margin = '0';

const mapElement = document.getElementById('map');
mapElement.style.width = '100vw';
mapElement.style.height = '100vh';

const wmsLayer = new ImageLayer({
  source: new ImageWMS({
    url: 'http://localhost:8080/geoserver/gis/wms',
    params: {
      LAYERS: 'gis:buildings',
      FORMAT: 'image/png',
      TRANSPARENT: true,
    },
    ratio: 1,
    serverType: 'geoserver',
  }),
});

const map = new Map({
  target: 'map',
  layers: [
    new TileLayer({
      source: new OSM(),
    }),
    wmsLayer,
  ],
  view: new View({
    center: [0, 0],
    zoom: 2,
  }),
});

console.log(map.getLayers().getArray());