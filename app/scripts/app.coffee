'use strict'

angular.module('fireblogApp', ['firebase'])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/posts',
        templateUrl: 'views/posts.html',
        controller: 'PostsCtrl'
      .otherwise
        redirectTo: '/'

  .value('FirebaseUrl', 'https://glenmaddern.firebaseio.com')
