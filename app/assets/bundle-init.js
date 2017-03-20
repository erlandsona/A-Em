(function () {
  'use strict'
  function ready(fn) {if (document.readyState != 'loading'){fn();} else {document.addEventListener('DOMContentLoaded', function () { fn(); });}}

  ready(function() {
    FastClick.attach(document.body);

    var app = Elm.Site.fullscreen(Date.now());

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

    // Initialize Firebase
    // var config = {
    //   apiKey: "AIzaSyBKuRiMO3rhBv9cAzhAZJHYf6yyEVCnp5I",
    //   authDomain: "caldwell-band.firebaseapp.com",
    //   databaseURL: "https://caldwell-band.firebaseio.com",
    //   storageBucket: "caldwell-band.appspot.com",
    //   messagingSenderId: "567749644974"
    // };
    // firebase.initializeApp(config);
  });
})();
