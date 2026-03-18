import 'ol/ol.css';
import { Map, View } from 'ol';
import TileLayer from 'ol/layer/Tile';
import OSM from 'ol/source/OSM';
import ImageLayer from 'ol/layer/Image';
import ImageWMS from 'ol/source/ImageWMS';

// Создаем базовую карту с подложкой OpenStreetMap
const map = new Map({
  target: 'map',
  layers: [
    new TileLayer({
      source: new OSM()
    })
  ],
  view: new View({
    // Координаты центра - нужно подобрать под твой район
    // Это примерно для Самары/Тольятти
    center: [5486325, 7082910],
    zoom: 16
  })
});

const buildingsLayer = new ImageLayer({
  source: new ImageWMS({
    url: "http://localhost:8080/geoserver/gis/wms",
    params: {
      LAYERS: "gis:buildings",
      TILED: true,
      TRANSPARENT: true, // добавляем прозрачность
    },
    ratio: 1,
    serverType: "geoserver",
  }),
});

const roadsLayer = new ImageLayer({
  source: new ImageWMS({
    url: "http://localhost:8080/geoserver/gis/wms",
    params: {
      LAYERS: "gis:roads",
      TILED: true,
      TRANSPARENT: true,
    },
    ratio: 1,
    serverType: "geoserver",
  }),
});

const poiLayer = new ImageLayer({
  source: new ImageWMS({
    url: "http://localhost:8080/geoserver/gis/wms",
    params: {
      LAYERS: "gis:poi",
      TILED: true,
      TRANSPARENT: true,
    },
    ratio: 1,
    serverType: "geoserver",
  }),
});

map.addLayer(buildingsLayer);
map.addLayer(roadsLayer);
map.addLayer(poiLayer);