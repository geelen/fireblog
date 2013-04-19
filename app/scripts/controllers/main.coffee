'use strict'

angular.module('fireblogApp')
  .controller 'MainCtrl', ($scope, angularFire) ->
    $scope.posts = angularFire('https://glenmaddern.firebaseio.com/posts', $scope, 'posts', []);
#    $scope.awesomeThings.then ->
#      console.log "returned!"
#      $scope.$watch 'awesomeThings', ->
#        console.log "changed!"

    $scope.addNewThing = ->
      $scope.posts.push($scope.newThing)
