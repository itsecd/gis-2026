import 'ol/ol.css';
import Map from 'ol/Map';
import View from 'ol/View';
import TileLayer from 'ol/layer/Tile';
import OSM from 'ol/source/OSM';
import ImageLayer from 'ol/layer/Image';
import ImageWMS from 'ol/source/ImageWMS';

// Создаем базовую карту (OpenStreetMap)
const map = new Map({
  target: 'map',
  layers: [
    new TileLayer({
      source: new OSM()
    })
  ],
  view: new View({
    center: [5593535.5, 7012288.5], // Координаты Самары в проекции Web Mercator
    zoom: 16
  })
});

// Функция для создания WMS слоя
function createWMSLayer(layerName, visible = true) {
  const layer = new ImageLayer({
    visible: visible,
    source: new ImageWMS({
      url: 'http://localhost:8080/geoserver/gis/wms',
      params: {
        'LAYERS': `gis:${layerName}`,
        'TILED': true,
        'FORMAT': 'image/png',
        'TRANSPARENT': true
      },
      ratio: 1,
      serverType: 'geoserver'
    })
  });
  return layer;
}

// Создаем слои для наших данных
const buildingsLayer = createWMSLayer('buildings', true);
const roadsLayer = createWMSLayer('roads', true);
const poiLayer = createWMSLayer('poi', true);

// Добавляем слои на карту
map.addLayer(buildingsLayer);
map.addLayer(roadsLayer);
map.addLayer(poiLayer);

// Добавляем управление видимостью слоев
document.getElementById('buildingsToggle').addEventListener('change', (e) => {
  buildingsLayer.setVisible(e.target.checked);
});

document.getElementById('roadsToggle').addEventListener('change', (e) => {
  roadsLayer.setVisible(e.target.checked);
});

document.getElementById('poiToggle').addEventListener('change', (e) => {
  poiLayer.setVisible(e.target.checked);
});

// Выводим координаты при клике на карту (для отладки)
map.on('click', (event) => {
  const coords = event.coordinate;
  console.log('Координаты клика:', coords);
});

console.log('Карта инициализирована. Слои добавлены.');