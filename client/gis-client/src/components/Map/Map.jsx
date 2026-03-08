import { useEffect, useRef } from 'react';
import Map from 'ol/Map';
import View from 'ol/View';
import TileLayer from 'ol/layer/Tile';
import ImageLayer from 'ol/layer/Image';
import ImageWMS from 'ol/source/ImageWMS';
import OSM from 'ol/source/OSM';
import 'ol/ol.css';
import './Map.css'

const MapComponent = () => {
    const mapRef = useRef(null);
    const mapInstanceRef = useRef(null);

    useEffect(() => {
        if (mapRef.current && !mapInstanceRef.current) {
            const minX = 50.650245666503906;
            const minY = 53.280426025390625;
            const maxX = 50.67279052734375;
            const maxY = 53.29293441772461;
            
            const centerLon = (minX + maxX) / 2;
            const centerLat = (minY + maxY) / 2;
            
            const centerOSM = [centerLon, centerLat];
            
            mapInstanceRef.current = new Map({
                target: mapRef.current,
                layers: [
                    new TileLayer({
                        source: new OSM()
                    })
                ],
                view: new View({
                    center: centerOSM,
                    zoom: 15,
                    projection: 'EPSG:4326'
                })
            });

            const wmsSource = new ImageWMS({
                url: 'http://localhost:8080/geoserver/gis/wms',
                params: {
                    'LAYERS': ['gis:areas', 'gis:buildings', 'gis:roads', 'gis:poi'],
                    'VERSION': '1.1.1',
                    'FORMAT': 'image/png',
                    'TRANSPARENT': true,
                    'SRS': 'EPSG:4326'
                },
                ratio: 1,
                serverType: 'geoserver',
                crossOrigin: 'anonymous'
            });

            const wmsLayer = new ImageLayer({
                source: wmsSource
            });

            mapInstanceRef.current.addLayer(wmsLayer);
            
            console.log('Карта создана');
        }

        return () => {
            if (mapInstanceRef.current) {
                mapInstanceRef.current.setTarget(null);
                mapInstanceRef.current = null;
            }
        };
    }, []);

    return (
        <div
            ref={mapRef}
            className='map-view'
        />
    );
};

export default MapComponent;