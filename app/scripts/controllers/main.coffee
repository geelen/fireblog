'use strict'

angular.module('fireblogApp').controller 'MainCtrl',
  ($scope, FirebaseApi) ->
    $scope.posts = FirebaseApi.resource($scope, 'posts', '/posts')

    $scope.addNewThing = ->
      $scope.posts[FirebaseApi.timestampedKey()] =
        title: $scope.newThing

    $scope.clearPosts = ->
      $scope.posts = {}
