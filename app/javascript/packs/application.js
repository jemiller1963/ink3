// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("jquery");
require("@rails/activestorage").start();
require("channels");
require("stylesheets/application.scss");
require("packs/notes");
require("packs/hangouts");
window.Jquery = $;
window.$ = $;

//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

$(document).on("turbolinks:load", function () {
  console.log("Hello from application.js");
});
