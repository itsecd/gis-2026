import 'ol/ol.css';
import './style.css';
import Map from 'ol/Map';
import View from 'ol/View';
import TileLayer from 'ol/layer/Tile';
import OSM from 'ol/source/OSM';
import ImageLayer from 'ol/layer/Image';
import ImageWMS from 'ol/source/ImageWMS';
import { fromLonLat } from 'ol/proj';

const osmLayer = new TileLayer({
  source: new OSM(),
  visible: true,
  zIndex: 0
});

const buildingsLayer = new ImageLayer({
  source: new ImageWMS({
    url: 'http://localhost:8080/geoserver/gis/wms',
    params: {
      LAYERS: 'gis:buildings',
      TILED: true,
      FORMAT: 'image/png',
      TRANSPARENT: true
    },
    ratio: 1,
    serverType: 'geoserver'
  }),
  visible: true,
  zIndex: 1
});

const roadsLayer = new ImageLayer({
  source: new ImageWMS({
    url: 'http://localhost:8080/geoserver/gis/wms',
    params: {
      LAYERS: 'gis:roads',
      TILED: true,
      FORMAT: 'image/png',
      TRANSPARENT: true
    },
    ratio: 1,
    serverType: 'geoserver'
  }),
  visible: true,
  zIndex: 2
});

const poiLayer = new ImageLayer({
  source: new ImageWMS({
    url: 'http://localhost:8080/geoserver/gis/wms',
    params: {
      LAYERS: 'gis:poi',
      TILED: true,
      FORMAT: 'image/png',
      TRANSPARENT: true
    },
    ratio: 1,
    serverType: 'geoserver'
  }),
  visible: false,
  zIndex: 3
});

const layers = {
  osm: osmLayer,
  roads: roadsLayer,
  buildings: buildingsLayer,
  poi: poiLayer
};

const center = fromLonLat([106.38, 52.79]);

const map = new Map({
  target: 'map',
  layers: [osmLayer, buildingsLayer, roadsLayer, poiLayer],
  view: new View({
    center: center,
    zoom: 14,
    maxZoom: 19,
    minZoom: 10
  })
});

document.addEventListener('DOMContentLoaded', () => {
  const toggles = ['osm', 'roads', 'buildings', 'poi'];
  
  toggles.forEach(layerName => {
    const toggle = document.getElementById(`toggle-${layerName}`);
    if (toggle) {
      toggle.checked = layers[layerName].getVisible();
      toggle.addEventListener('change', (e) => {
        switch(layerName) {
          case 'osm':
            layers.osm.setVisible(e.target.checked);
            break;
          case 'roads':
            layers.roads.setVisible(e.target.checked);
            break;
          case 'buildings':
            layers.buildings.setVisible(e.target.checked);
            break;
          case 'poi':
            layers.poi.setVisible(e.target.checked);
            break;
          default:
            console.log(`Неизвестный слой: ${layerName}`);
        }
      });
    }
  });
});