'use strict'

angular.module 'ngBack', []

angular.module('ngBack')
  .directive 'ngBack', ->
    template: '<div></div>'
    restrict: 'E'
    link: (scope, element, attrs) ->
      element.text 'this is the ngBack directive'