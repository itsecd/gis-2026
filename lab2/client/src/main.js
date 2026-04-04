import 'ol/ol.css';
import Map from 'ol/Map';
import View from 'ol/View';
import TileLayer from 'ol/layer/Tile';
import OSM from 'ol/source/OSM';
import ImageLayer from 'ol/layer/Image';
import ImageWMS from 'ol/source/ImageWMS';
import { fromLonLat } from 'ol/proj';

console.log('OpenLayers карта с GeoServer слоями инициализируется...');

const baseLayer = new TileLayer({
  title: 'OSM',
  source: new OSM()
});

const buildingsLayer = new ImageLayer({
  title: 'Здания',
  visible: true,
  source: new ImageWMS({
    url: 'http://localhost:8080/geoserver/gis/wms',
    params: {
      LAYERS: 'gis:buildings',
      TILED: true,
      VERSION: '1.1.0',
      TRANSPARENT: true
    },
    serverType: 'geoserver',
    ratio: 1
  })
});


const roadsLayer = new ImageLayer({
  title: 'Дороги',
  visible: true,
  source: new ImageWMS({
    url: 'http://localhost:8080/geoserver/gis/wms',
    params: {
      LAYERS: 'gis:roads',
      TILED: true,
      VERSION: '1.1.0',
      TRANSPARENT: true
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
    zoom: 15
  })
});

console.log('Карта с GeoServer слоями создана!');

function addLayerControl() {
  const controlDiv = document.createElement('div');
  controlDiv.className = 'layer-control';
  controlDiv.innerHTML = `
    <h4>Слои</h4>
    <label>
      <input type="checkbox" id="toggle-buildings" checked> Здания
    </label>
    <label>
      <input type="checkbox" id="toggle-roads" checked> Дороги
    </label>
  `;
  
  document.body.appendChild(controlDiv);

  const style = document.createElement('style');
  style.textContent = `
    .layer-control {
      position: absolute;
      top: 20px;
      right: 20px;
      background: white;
      padding: 12px 16px;
      border-radius: 8px;
      box-shadow: 0 2px 10px rgba(0,0,0,0.2);
      z-index: 1000;
      font-family: Arial, sans-serif;
      font-size: 14px;
      min-width: 120px;
    }
    .layer-control h4 {
      margin: 0 0 8px 0;
      font-size: 14px;
    }
    .layer-control label {
      display: block;
      margin: 5px 0;
      cursor: pointer;
    }
    .layer-control input {
      margin-right: 8px;
      cursor: pointer;
    }
  `;
  document.head.appendChild(style);
  
 
  document.getElementById('toggle-buildings').addEventListener('change', (e) => {
    buildingsLayer.setVisible(e.target.checked);
  });
  
  document.getElementById('toggle-roads').addEventListener('change', (e) => {
    roadsLayer.setVisible(e.target.checked);
  });
}

function addCoordinateInfo() {
  const infoDiv = document.createElement('div');
  infoDiv.className = 'coords-info';
  infoDiv.innerHTML = `Координаты: нажмите на карту`;
  document.body.appendChild(infoDiv);
  
  const style = document.createElement('style');
  style.textContent = `
    .coords-info {
      position: absolute;
      bottom: 20px;
      right: 20px;
      background: rgba(0,0,0,0.7);
      color: white;
      padding: 8px 12px;
      border-radius: 6px;
      font-family: monospace;
      font-size: 12px;
      z-index: 1000;
      pointer-events: none;
    }
  `;
  document.head.appendChild(style);
  
  map.on('click', (event) => {
    const coords = fromLonLat(event.coordinate);
    infoDiv.innerHTML = `Координаты (lon/lat): ${coords[0].toFixed(6)}, ${coords[1].toFixed(6)}`;
  });
}

function addResetViewButton() {
  const resetBtn = document.createElement('button');
  resetBtn.className = 'reset-view-btn';
  resetBtn.innerHTML = 'Сбросить вид';
  document.body.appendChild(resetBtn);
  
  const style = document.createElement('style');
  style.textContent = `
    .reset-view-btn {
      position: absolute;
      bottom: 20px;
      left: 20px;
      background: white;
      border: 1px solid #ccc;
      padding: 8px 16px;
      border-radius: 6px;
      cursor: pointer;
      font-size: 14px;
      z-index: 1000;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }
    .reset-view-btn:hover {
      background: #f0f0f0;
    }
  `;
  document.head.appendChild(style);
  
  resetBtn.addEventListener('click', () => {
    map.getView().setCenter(fromLonLat([50.22, 53.29]));
    map.getView().setZoom(15);
  });
}

addLayerControl();
addCoordinateInfo();
addResetViewButton();

console.log('Все слои добавлены, UI настроен');