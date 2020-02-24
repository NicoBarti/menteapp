// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap"
import "../stylesheets/application"

document.addEventListener("turbolinks:load", () => {
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
})

import Flickity from 'flickity'

document.addEventListener('DOMContentLoaded', () => {
  const elem = document.querySelector('.main-carousel');
  const flkty = new Flickity(elem, {
    fade: true,
  });
})

import "jquery-parallax.js"

require('waypoints/lib/jquery.waypoints.min');
require('waypoints/lib/shortcuts/inview.min.js');

require("../fullpage.js/vendors/scrolloverflow.min.js")
require("../fullpage.js/dist/fullpage.min.js")

require("../highlightjs/highlight.pack.min.js")

import "@fortawesome/fontawesome-free/js/all";

// require("../js/theme.min.js")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
