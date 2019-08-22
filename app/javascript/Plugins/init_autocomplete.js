import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('city-field');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
