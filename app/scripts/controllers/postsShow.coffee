'use strict'

angular.module('fireblogApp').controller 'PostsShowCtrl',
  ($scope, $routeParams, FirebaseApi) ->
    FirebaseApi.resource($scope, 'post_id', "/post_urls/#{$routeParams.post_url}", "").then (post_id) ->
      FirebaseApi.resource($scope, 'post', "/posts/#{post_id}").then (post) ->
        $scope.post = post
