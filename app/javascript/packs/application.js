import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
// import '../plugins/init_autocomplete.js';

import { initMapbox } from '../Plugins/init_mapbox';
import { initAutocomplete } from '../Plugins/init_autocomplete';


initMapbox();
initAutocomplete();
