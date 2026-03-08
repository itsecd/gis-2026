import MapComponent from './components/Map/Map.jsx'
import './App.css'

function App() {
    return (
        <>
            <h1>Gis Client</h1>
            <MapComponent center={[0, 0]} zoom={2} />
        </>
    )
}

export default App