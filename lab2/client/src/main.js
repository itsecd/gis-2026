import 'ol/ol.css';
import Map from 'ol/Map';
import View from 'ol/View';
import TileLayer from 'ol/layer/Tile';
import OSM from 'ol/source/OSM';
import ImageLayer from 'ol/layer/Image';
import ImageWMS from 'ol/source/ImageWMS';
import { fromLonLat } from 'ol/proj';

console.log('OpenLayers карта с GeoServer слоями инициализируется...');


const mapElement = document.getElementById('map');
console.log('Элемент map найден:', mapElement);


const baseLayer = new TileLayer({
  source: new OSM()
});

// WMS слой зданий
const buildingsLayer = new ImageLayer({
  source: new ImageWMS({
    url: 'http://localhost:8080/geoserver/gis/wms',
    params: {
      LAYERS: 'gis:buildings',
      TILED: true,
      VERSION: '1.1.0'
    },
    serverType: 'geoserver',
    ratio: 1
  })
});

// WMS слой дорог
const roadsLayer = new ImageLayer({
  source: new ImageWMS({
    url: 'http://localhost:8080/geoserver/gis/wms',
    params: {
      LAYERS: 'gis:roads',
      TILED: true,
      VERSION: '1.1.0'
    },
    serverType: 'geoserver',
    ratio: 1
  })
});


const map = new Map({
  target: 'map',
  layers: [baseLayer, buildingsLayer, roadsLayer],
  view: new View({
    center: fromLonLat([50.22, 53.29]), 
    zoom: 14
  })
});

console.log('Карта с GeoServer слоями создана!');