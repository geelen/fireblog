'use strict';

angular.module('fireblogApp').filter 'markdown',
  () ->
    converter = new Showdown.converter()
    (input) ->
      converter.makeHtml(input) if input
