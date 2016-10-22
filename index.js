'use strict';

// Vendor stuff
require('font-awesome/css/font-awesome.css');
// App Code
require('./index.html');

require('./Stylesheets.elm');
var Elm = require('./src/Main.elm');
// Initialize app on the document.body
Elm.Main.fullscreen();
