'use strict'

angular.module('fireblogApp').controller 'PostsCtrl',
  ($scope, FirebaseApi, $routeParams) ->
    $scope.post = FirebaseApi.resource($scope, 'post', "/posts/#{$routeParams.id}")


