'use strict'

angular.module 'ngBack', []

angular.module('ngBack')
  .directive 'ngBack', ($window) ->
    (scope, element, attrs) ->
      element.bind 'click', ->
        do $window.history.back