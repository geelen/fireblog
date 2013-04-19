'use strict'

angular.module('fireblogApp').controller 'PostsEditCtrl',
  ($scope, FirebaseApi, $routeParams) ->
    FirebaseApi.resource($scope, 'post', "/posts/#{$routeParams.id}").then (post) ->
      $scope.post = post

    FirebaseApi.resource($scope, 'post_urls', "/post_urls").then (post_urls) ->
      $scope.post_urls = post_urls

      generateSlug = ->
        if $scope.post && $scope.post.title && $scope.post.published_at
          $scope.post_urls[$scope.post.slug] = null
          $scope.post.slug = "#{$scope.post.published_at}-#{$scope.post.title.replace(/\W+/g,'-')}"
          $scope.post_urls[$scope.post.slug] = $routeParams.id

      $scope.$watch 'post.title', generateSlug
      $scope.$watch 'post.published_at', generateSlug
