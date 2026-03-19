import 'ol/ol.css';
import { Map, View } from 'ol';
import TileLayer from 'ol/layer/Tile';
import OSM from 'ol/source/OSM';
import ImageLayer from 'ol/layer/Image';
import ImageWMS from 'ol/source/ImageWMS';
import { fromLonLat } from 'ol/proj';

const map = new Map({
  target: 'map',
  layers: [
    new TileLayer({
      source: new OSM()
    })
  ],
  view: new View({

    center: fromLonLat([50.2467455, 53.4376983]),
    zoom: 16
  })
});

const buildingsLayer = new ImageLayer({
  source: new ImageWMS({
    url: "http://localhost:8080/geoserver/gis/wms",
    params: {
      LAYERS: "gis:buildings",
      TILED: true,
      TRANSPARENT: true,
      VERSION: "1.1.1"
    },
    ratio: 1,
    serverType: "geoserver",
  }),
});

map.addLayer(buildingsLayer);