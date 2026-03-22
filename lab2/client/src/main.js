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
  opacity: 0.5
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

// WMS-слой: POI
const poiLayer = new ImageLayer({
  source: new ImageWMS({
    url: 'http://localhost:8080/geoserver/gis/wms',
    params: {
      LAYERS: 'gis:poi',
      TILED: true
    },
    ratio: 1,
    serverType: 'geoserver'
  })
});

const center = fromLonLat([49.279, 53.601]);

const map = new Map({
  target: 'map',
  layers: [
    osmLayer,
    buildingsLayer,
    roadsLayer,
    poiLayer
  ],
  view: new View({
    center: center,
    zoom: 15
  })
});

const toggles = [
  { id: 'toggle-osm', layer: osmLayer },
  { id: 'toggle-roads', layer: roadsLayer },
  { id: 'toggle-buildings', layer: buildingsLayer },
  { id: 'toggle-poi', layer: poiLayer }
];

toggles.forEach(({ id, layer }) => {
  document.getElementById(id).addEventListener('change', (e) => {
    layer.setVisible(e.target.checked);
  });
});
