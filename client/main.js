import 'ol/ol.css';
import Map from 'ol/Map';
import View from 'ol/View';
import TileLayer from 'ol/layer/Tile';
import ImageLayer from 'ol/layer/Image';
import ImageWMS from 'ol/source/ImageWMS';
import OSM from 'ol/source/OSM';
import { fromLonLat } from 'ol/proj';
import MousePosition from 'ol/control/MousePosition';
import {createStringXY} from 'ol/coordinate';

const center = fromLonLat([49.35, 53.66]);

const map = new Map({
  target: 'map',
  layers: [
    new TileLayer({
      source: new OSM()
    })
  ],
  view: new View({
    center: center,
    zoom: 15
  })
});

const mousePosition = new MousePosition({
  coordinateFormat: createStringXY(6),
  projection: 'EPSG:4326',
  target: document.getElementById('coordinates')
});
map.addControl(mousePosition);

const geoserverUrl = 'http://localhost:8080/geoserver/gis/wms';

const buildingsLayer = new ImageLayer({
  source: new ImageWMS({
    url: geoserverUrl,
    params: {
      LAYERS: 'gis:buildings',
      TILED: true
    },
    ratio: 1,
    serverType: 'geoserver'
  })
});

const roadsLayer = new ImageLayer({
  source: new ImageWMS({
    url: geoserverUrl,
    params: {
      LAYERS: 'gis:roads',
      TILED: true
    },
    ratio: 1,
    serverType: 'geoserver'
  })
});

const poiLayer = new ImageLayer({
  source: new ImageWMS({
    url: geoserverUrl,
    params: {
      LAYERS: 'gis:poi',
      TILED: true
    },
    ratio: 1,
    serverType: 'geoserver'
  })
});

map.addLayer(buildingsLayer);
map.addLayer(roadsLayer);
map.addLayer(poiLayer);

document.getElementById('buildings-layer').addEventListener('change', (e) => {
  buildingsLayer.setVisible(e.target.checked);
});

document.getElementById('roads-layer').addEventListener('change', (e) => {
  roadsLayer.setVisible(e.target.checked);
});

document.getElementById('poi-layer').addEventListener('change', (e) => {
  poiLayer.setVisible(e.target.checked);
});

console.log('Карта загружена!');