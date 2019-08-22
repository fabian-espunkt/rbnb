import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../Plugins/init_mapbox';

initMapbox();

const user_input = document.querySelector('#insert');

const total_total = document.querySelector('#total-total');

const input = document.querySelector('#amount-days');
input.addEventListener('change', (event) => {
  const value = event.target.value; // -> 2
  user_input.innerText = value;
  const total = document.querySelector("#total");
  const price_tag = document.querySelector("#price-tag");
  const result = parseInt(user_input.innerText) * parseInt(price_tag.innerText);
  total.innerText = result;
  const incl_service_fee = 22 + result
  total_total.innerText = incl_service_fee
});

