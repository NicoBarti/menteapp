//
// code.js
// Theme module
//

'use strict';

document.addEventListener("turbolinks:load", () => {

(function() {

  // Variables
  // =========

  var code = document.querySelectorAll('.code');

  // Methods
  // =======

  function highlight(elem) {
    hljs.highlightBlock(elem);
  }

  // Events
  // ======

  if ( window.hljs ) {
    [].forEach.call(code,function(elem) {
      highlight(elem);
    });
  }

})();
})
