<template>
  <main>
    <div id="map"></div>
  </main>
</template>

<script setup>
import { onMounted } from 'vue'

import 'ol/ol.css'
import Map from 'ol/Map'
import View from 'ol/View'
import TileLayer from 'ol/layer/Tile'
import XYZ from 'ol/source/XYZ'
import ImageLayer from 'ol/layer/Image'
import ImageWMS from 'ol/source/ImageWMS'
import { fromLonLat } from 'ol/proj'

onMounted(() => {

  const baseLayer = new TileLayer({
    source: new XYZ({
      url: 'https://{a-c}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}{r}.png'
    }),
    opacity: 1.0
  })

  const buildingsLayer = new ImageLayer({
    source: new ImageWMS({
      url: 'http://localhost:8080/geoserver/gis/wms',
      params: {
        LAYERS: 'gis:buildings',
        TILED: true,
        TRANSPARENT: true
      },
      ratio: 1,
      serverType: 'geoserver'
    })
  })

  const roadsLayer = new ImageLayer({
    source: new ImageWMS({
      url: 'http://localhost:8080/geoserver/gis/wms',
      params: {
        LAYERS: 'gis:roads',
        TILED: true,
        TRANSPARENT: true
      },
      ratio: 1,
      serverType: 'geoserver'
    })
  })

  const poisLayer = new ImageLayer({
    source: new ImageWMS({
      url: 'http://localhost:8080/geoserver/gis/wms',
      params: {
        LAYERS: 'gis:poi',
        TILED: true,
        TRANSPARENT: true
      },
      ratio: 1,
      serverType: 'geoserver'
    })
  })

  const map = new Map({
    target: 'map',
    layers: [
      baseLayer,
      buildingsLayer,
      roadsLayer,
      poisLayer
    ],
    view: new View({
      center: fromLonLat([50.85, 53.28]),
      zoom: 14
    })
  })

})
</script>

<style>
#map {
  width: 100%;
  height: 100vh;
}
</style>