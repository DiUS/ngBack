'use strict'

describe 'Directive: ngBack', ->

  beforeEach module 'ngBack'

  $window = null

  beforeEach inject ($rootScope, _$window_) ->
    $window = _$window_
    spyOn $window.history, 'back'

  describe 'when used as an element', ->
    element = null

    beforeEach inject ($compile) ->
      element = angular.element '<ng-back>Back</ng-back>'
      element = $compile(element) {}

    it 'should not work', ->
      element.triggerHandler 'click'
      expect($window.history.back).not.toHaveBeenCalled()

  describe 'when clicked', ->
    element = null

    beforeEach inject ($compile) ->
      element = angular.element '<a ng-back>Back</a>'
      element = $compile(element) {}
      element.triggerHandler 'click'

    it 'should tell the browser to go back', ->
      expect($window.history.back).toHaveBeenCalled()
