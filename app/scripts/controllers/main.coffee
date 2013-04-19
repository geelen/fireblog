'use strict'

angular.module('fireblogApp').controller 'MainCtrl',
  ($scope, angularFire, FirebaseUrl, FirebaseHelpers) ->
    $scope.posts = angularFire(FirebaseUrl + "/posts", $scope, 'posts', {});

    $scope.addNewThing = ->
      $scope.posts[FirebaseHelpers.timestampedKey()] =
        title: $scope.newThing
