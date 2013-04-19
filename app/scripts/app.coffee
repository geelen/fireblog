'use strict'

angular.module('fireblogApp', ['firebase'])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'

  .value('FirebaseUrl', 'https://glenmaddern.firebaseio.com')
