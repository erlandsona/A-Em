(function() {
  'use strict';

  // elm-css
  require('./Stylesheets');

  // inject elm
  var Elm = require('../src/Main');
  Elm.Main.fullscreen();
})();
