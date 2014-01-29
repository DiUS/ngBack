(function() {
  'use strict';
  angular.module('ngBack', []);

  angular.module('ngBack').directive('ngBack', function($window) {
    return function(scope, element, attrs) {
      return element.bind('click', function() {
        return $window.history.back();
      });
    };
  });

}).call(this);
