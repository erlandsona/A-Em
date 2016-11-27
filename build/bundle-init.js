(function () {
  'use strict'
  function ready(fn) {if (document.readyState != 'loading'){fn();} else {document.addEventListener('DOMContentLoaded', function () { fn(); });}}

  ready(Elm.Caldwell.fullscreen);
})();
