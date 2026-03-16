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
    const map = new Map({
      target: mapRef.current!,
      layers: [
        new TileLayer({
          source: new OSM()
        }),
        new ImageLayer({
          source: new ImageWMS({
            url: 'http://localhost:8080/geoserver/gis/wms',
            params: {
              LAYERS: 'gis:buildings,gis:roads,gis:poi',
              TILED: true,
              SRS: 'EPSG:4326'
            },
            ratio: 1,
            serverType: 'geoserver'
          })
        })
      ],
      view: new View({
        center: fromLonLat([50.63, 53.19]),
        zoom: 14
      })
    })

    return () => map.setTarget(undefined)
  }, [])

  return (
    <main>
      <div ref={mapRef} style={{ width: '100%', height: '100vh' }} />
    </main>
  )
}

export default App