(function () {
  'use strict'
  function ready(fn) {if (document.readyState != 'loading'){fn();} else {document.addEventListener('DOMContentLoaded', fn);}}
  ready(Elm.View.fullscreen);
})();
