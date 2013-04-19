'use strict';

angular.module('fireblogApp').factory 'FirebaseApi',
  (angularFire, FirebaseUrl) ->
    baseRef = new Firebase(FirebaseUrl);
    {
      # doesn't insert anything, just returns a timestamped key
      timestampedKey: -> baseRef.push().name()
      resource: (scope, scopeName, resourcePath) ->
        angularFire("#{FirebaseUrl}#{resourcePath}", scope, scopeName, {});
    }
