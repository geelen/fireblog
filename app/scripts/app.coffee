'use strict'

angular.module('fireblogApp', ['firebase', 'ngSanitize'])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/posts/:id',
        templateUrl: 'views/post.html',
        controller: 'PostsCtrl'
      .otherwise
        redirectTo: '/'

  .value('FirebaseUrl', 'https://glenmaddern.firebaseio.com')
