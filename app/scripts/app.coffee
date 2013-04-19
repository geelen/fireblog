'use strict'

app = angular.module('fireblogApp', ['firebase', 'ngSanitize'])

app.config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/posts/:id',
        templateUrl: 'views/posts/edit.html',
        controller: 'PostsEditCtrl'
      .when '/:post_url',
        templateUrl: 'views/posts/show.html',
        controller: 'PostsShowCtrl'
      .otherwise
        redirectTo: '/'

app.value('FirebaseUrl', 'https://glenmaddern.firebaseio.com')
