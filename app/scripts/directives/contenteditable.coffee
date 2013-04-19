'use strict';

angular.module('fireblogApp').directive 'contenteditable',
  () ->
    require: 'ngModel'
    link: (scope, element, attrs, ctrl) ->
      element.bind 'blur', ->
        scope.$apply ->
          console.log(element.html())
          ctrl.$setViewValue(element.html())
          ctrl.$render()

      ctrl.$render = ->
        console.log(ctrl.$viewValue)
        element.html()
        element.text(ctrl.$viewValue)
