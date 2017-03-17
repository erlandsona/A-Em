'use strict';

// Libraries
require('smoothscroll-polyfill').polyfill();
require('fastclick').attach(document.body);

// Source
require('../Stylesheets.elm');
var Site = require('../Site.elm').Site;

var app = Site.fullscreen(Date.now());

// Attach JS handlers to app instance.
app.ports.easeIntoView.subscribe(function(id) {
  document
    .getElementById(id)
    .scrollIntoView({behavior: "smooth", block: "start"});
});

app.ports.snapIntoView.subscribe(function (id) {
  document
    .getElementById(id)
    .scrollIntoView();
});
