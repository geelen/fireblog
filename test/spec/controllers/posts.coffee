'use strict'

describe 'Controller: PostsCtrl', () ->

  # load the controller's module
  beforeEach module 'fireblogApp'

  PostsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    PostsCtrl = $controller 'PostsCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3;
