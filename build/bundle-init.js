(function () {
  'use strict'
  function ready(fn) {if (document.readyState != 'loading'){fn();} else {document.addEventListener('DOMContentLoaded', function () { fn(); });}}

  ready(function() {
    var app = Elm.Caldwell.fullscreen();

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
  });
})();
