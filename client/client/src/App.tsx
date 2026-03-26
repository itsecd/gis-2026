import { useEffect, useRef } from 'react'
import 'ol/ol.css'
import Map from 'ol/Map'
import View from 'ol/View'
import TileLayer from 'ol/layer/Tile'
import OSM from 'ol/source/OSM'
import ImageLayer from 'ol/layer/Image'
import ImageWMS from 'ol/source/ImageWMS'
import { fromLonLat } from 'ol/proj'

function App() {
  const mapRef = useRef<HTMLDivElement>(null)

  useEffect(() => {
    if (!mapRef.current) return

    const map = new Map({
      target: mapRef.current,
      layers: [
        new TileLayer({
          source: new OSM()
        }),
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
        new ImageLayer({
          source: new ImageWMS({
            url: 'http://localhost:8080/geoserver/gis/wms',
            params: {
              LAYERS: 'gis:poi',
              TILED: true
            },
            ratio: 1,
            serverType: 'geoserver'
          })
        })
      ],
      view: new View({
        center: fromLonLat([50.336, 53.515]),
        zoom: 15
      })
    })

    return () => map.setTarget(undefined)
  }, [])

  return (
    <div
      id="map"
      ref={mapRef}
      style={{ width: '100%', height: '100vh' }}
    />
  )
}

export default App
