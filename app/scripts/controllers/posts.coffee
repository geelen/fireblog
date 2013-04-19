'use strict'

angular.module('fireblogApp').controller 'PostsCtrl',
  ($scope, FirebaseApi, $routeParams) ->
    $scope.post = FirebaseApi.resource($scope, 'post', "/posts/#{$routeParams.id}")
    $scope.post_urls = FirebaseApi.resource($scope, 'post_urls', "/post_urls")

    $scope.post_urls.then ->
      generateSlug = ->
        if $scope.post && $scope.post.title
          $scope.post.slug = "#{$scope.post.published_at}-#{$scope.post.title.replace(/\W+/g,'-')}"
          $scope.post_urls[$scope.post.slug] = $routeParams.id
          console.log $scope.post_urls
      $scope.$watch 'post.title', generateSlug
      $scope.$watch 'post.published_at', generateSlug
