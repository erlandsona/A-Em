'use strict';

// Libraries
require('font-awesome/css/font-awesome');
require('smoothscroll-polyfill').polyfill();
require('fastclick').attach(document.body);

// Source
require('./assets/fonts');
require('./Stylesheets');

// Attach port handlers to app instance.
var app = require('./Main').Site.fullscreen(Date.now());
app.ports.easeIntoView.subscribe(function(id) {
  document
    .getElementById(id)
    .scrollIntoView({behavior: "smooth", block: "start"});
})
app.ports.snapIntoView.subscribe(function (id) {
  document
    .getElementById(id)
    .scrollIntoView();
});
