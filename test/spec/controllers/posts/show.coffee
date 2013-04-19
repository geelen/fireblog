'use strict'

describe 'Controller: PostsShowCtrl', () ->

  # load the controller's module
  beforeEach module 'fireblogApp'

  PostsShowCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    PostsShowCtrl = $controller 'PostsShowCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3;
