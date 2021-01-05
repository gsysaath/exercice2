// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
var places = require('places.js');
document.addEventListener('turbolinks:load', () => {

  var placesAutocomplete = places({
    appId: "3D6QTHRK6G",
    apiKey: "3930c0103107a8dd870dc52dd3db5d0b",
    container: document.querySelector('#address-input')
  });
})
