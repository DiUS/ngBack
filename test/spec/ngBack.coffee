'use strict'

describe 'Directive: ngBack', ->

  beforeEach module 'ngBack'

  scope = {}

  beforeEach inject ($rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<ng-back></ng-back>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the ngBack directive'
