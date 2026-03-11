import 'ol/ol.css';
import './style.css';
import { fromLonLat } from 'ol/proj';
import Map from 'ol/Map';
import View from 'ol/View';
import TileLayer from 'ol/layer/Tile';
import OSM from 'ol/source/OSM';
import ImageLayer from 'ol/layer/Image';
import ImageWMS from 'ol/source/ImageWMS';

const osmLayer = new TileLayer({
  source: new OSM()
});

const buildingsLayer = new ImageLayer({
  source: new ImageWMS({
    url: 'http://localhost:8080/geoserver/gis/wms',
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
    url: 'http://localhost:8080/geoserver/gis/wms',
    params: {
      LAYERS: 'gis:roads',
      TILED: true
    },
    ratio: 1,
    serverType: 'geoserver'
  })
});

const map = new Map({
  target: 'map',
  layers: [
    osmLayer,
    buildingsLayer,
    roadsLayer
  ],
  view: new View({
    center: fromLonLat([1.2775482, 51.1368032]),
    zoom: 17
  })
});
