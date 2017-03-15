'use strict';

// Libraries
var FastClick = require('fastclick');

// Source
require('../Stylesheets.elm');
var Site = require('../Site.elm').Site;

FastClick.attach(document.body);

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
