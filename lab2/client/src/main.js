import './style.css';
import 'ol/ol.css';
import Map from 'ol/Map';
import View from 'ol/View';
import TileLayer from 'ol/layer/Tile';
import ImageLayer from 'ol/layer/Image';
import OSM from 'ol/source/OSM';
import ImageWMS from 'ol/source/ImageWMS';
import { fromLonLat } from 'ol/proj';

const wmsEndpoint = 'http://localhost:8080/geoserver/gis/wms';

const layersConfig = {
  buildings: {
    name: 'gis:buildings',
    opacity: 0.65,
    visible: true,
    color: '#e74c3c'
  },
  roads: {
    name: 'gis:roads',
    opacity: 0.8,
    visible: true,
    color: '#3498db'
  },
  poi: {
    name: 'gis:poi',
    opacity: 0.9,
    visible: true,
    color: '#2ecc71'
  }
};

const buildingLayer = new ImageLayer({
  source: new ImageWMS({
    url: wmsEndpoint,
    params: {
      LAYERS: layersConfig.buildings.name,
      TILED: true,
      FORMAT: 'image/png',
      TRANSPARENT: true
    },
    ratio: 1,
    serverType: 'geoserver'
  }),
  opacity: layersConfig.buildings.opacity,
  visible: layersConfig.buildings.visible
});

const roadLayer = new ImageLayer({
  source: new ImageWMS({
    url: wmsEndpoint,
    params: {
      LAYERS: layersConfig.roads.name,
      TILED: true,
      FORMAT: 'image/png',
      TRANSPARENT: true
    },
    ratio: 1,
    serverType: 'geoserver'
  }),
  opacity: layersConfig.roads.opacity,
  visible: layersConfig.roads.visible
});

const poiLayer = new ImageLayer({
  source: new ImageWMS({
    url: wmsEndpoint,
    params: {
      LAYERS: layersConfig.poi.name,
      TILED: true,
      FORMAT: 'image/png',
      TRANSPARENT: true
    },
    ratio: 1,
    serverType: 'geoserver'
  }),
  opacity: layersConfig.poi.opacity,
  visible: layersConfig.poi.visible
});

const map = new Map({
  target: 'map',
  layers: [
    new TileLayer({
      source: new OSM(),
      opacity: 0.7
    }),
    buildingLayer,
    roadLayer,
    poiLayer
  ],
  view: new View({
    center: fromLonLat([50.15, 53.20]), // Самара
    zoom: 13,
    minZoom: 6,
    maxZoom: 18
  })
});

document.getElementById('buildings-toggle').addEventListener('change', (e) => {
  buildingLayer.setVisible(e.target.checked);
});

document.getElementById('roads-toggle').addEventListener('change', (e) => {
  roadLayer.setVisible(e.target.checked);
});

document.getElementById('poi-toggle').addEventListener('change', (e) => {
  poiLayer.setVisible(e.target.checked);
});

console.log('Карта инициализирована. Слои: buildings, roads, poi');