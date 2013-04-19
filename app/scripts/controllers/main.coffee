'use strict'

angular.module('fireblogApp').controller 'MainCtrl',
  ($scope, FirebaseApi) ->
    FirebaseApi.resource($scope, 'posts', '/posts').then (posts) ->
      $scope.posts = posts

    $scope.addNewThing = ->
      $scope.posts[FirebaseApi.timestampedKey()] =
        title: $scope.newThing

    $scope.clearPosts = ->
      $scope.posts = {}
