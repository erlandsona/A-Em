(function () {
  'use strict'
  function ready(fn) {if (document.readyState != 'loading'){fn();} else {document.addEventListener('DOMContentLoaded', function () { fn(); });}}

  ready(function () {
    hideAddressBar();

    // stopDocumentOverflow();

    Elm.Caldwell.fullscreen()
  });
})();

function hideAddressBar() {
  if(!window.location.hash) {
    if(document.height < window.outerHeight) {
      document.body.style.height = (window.outerHeight + 50) + 'px';
      setTimeout(function() {
        window.scrollTo(0, 1);
        document.body.style.height = 'auto';
      }, 50);
    }
  }
}

function stopDocumentOverflow() {
  // Try to prevent iOS document overflow
  var xStart, yStart = 0;
  document.addEventListener('touchstart', function(e) {
    xStart = e.touches[0].screenX;
    yStart = e.touches[0].screenY;
  });
  document.addEventListener('touchmove', function(e) {
    var xMovement = Math.abs(e.touches[0].screenX - xStart);
    var yMovement = Math.abs(e.touches[0].screenY - yStart);
    if((yMovement * 3) > xMovement) {
      e.preventDefault();
    }
  });
}
