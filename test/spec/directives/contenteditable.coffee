'use strict'

describe 'Directive: contenteditable', () ->
  beforeEach module 'fireblogApp'

  element = {}

  it 'should make hidden element visible', inject ($rootScope, $compile) ->
    element = angular.element '<contenteditable></contenteditable>'
    element = $compile(element) $rootScope
    expect(element.text()).toBe 'this is the contenteditable directive'
