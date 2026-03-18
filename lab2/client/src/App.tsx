import { useEffect, useRef } from 'react';

import { View, Map } from 'ol';
import TileLayer from 'ol/layer/Tile';
import { OSM } from 'ol/source';
import ImageLayer from 'ol/layer/Image';
import ImageWMS from 'ol/source/ImageWMS';

function App() {

  const mapRef = useRef<Map>(null);

  useEffect(() => {
    if (!mapRef.current) return;

    const newLayers = [
        new ImageLayer({
          source: new ImageWMS({
            url: 'http://localhost:8080/geoserver/gis/wms',
            params: {
              LAYERS: 'gis:buildings',
              TILED: true
            },
            ratio: 1,
            serverType: 'geoserver'
          })
        }),
        new ImageLayer({
          source: new ImageWMS({
            url: 'http://localhost:8080/geoserver/gis/wms',
            params: {
              LAYERS: 'gis:roads',
              TILED: true
            },
            ratio: 1,
            serverType: 'geoserver'
          })
        }),
    ];

    newLayers.forEach(l => mapRef.current?.addLayer(l));
  }, [mapRef])

  useEffect(() => {
    if (mapRef.current) return;

    mapRef.current = new Map({
      target: 'map',
      layers: [
        new TileLayer({
          source: new OSM()
        })
      ],
      view: new View({
        center: [5637889.748140545, 7032983.351178021],
        zoom: 16
      })
    })
  }, [])

  return <div id="map" />
}

export default App
