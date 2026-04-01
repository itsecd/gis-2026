import 'ol/ol.css';
import Map from 'ol/Map';
import View from 'ol/View';
import TileLayer from 'ol/layer/Tile';
import OSM from 'ol/source/OSM';
import ImageLayer from 'ol/layer/Image';
import ImageWMS from 'ol/source/ImageWMS';


const center = [5490000, 7300000]; // Примерные координаты для OSM

const map = new Map({
  target: 'map',
  layers: [
    new TileLayer({
      source: new OSM()
    })
  ],
  view: new View({
    center: center,
    zoom: 14
  })
});

const buildingsLayer = new ImageLayer({
  source: new ImageWMS({
    url: 'http://localhost:8080/geoserver/gis/wms',
    params: { LAYERS: 'gis:buildings', TILED: true },
    ratio: 1,
    serverType: 'geoserver'
  })
});


const roadsLayer = new ImageLayer({
  source: new ImageWMS({
    url: 'http://localhost:8080/geoserver/gis/wms',
    params: { LAYERS: 'gis:roads', TILED: true },
    ratio: 1,
    serverType: 'geoserver'
  })
});


const poiLayer = new ImageLayer({
  source: new ImageWMS({
    url: 'http://localhost:8080/geoserver/gis/wms',
    params: { LAYERS: 'gis:poi', TILED: true },
    ratio: 1,
    serverType: 'geoserver'
  })
});

map.addLayer(buildingsLayer);
map.addLayer(roadsLayer);
map.addLayer(poiLayer);