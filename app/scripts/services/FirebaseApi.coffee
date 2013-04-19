'use strict';

angular.module('fireblogApp').factory 'FirebaseApi',
  (angularFire, FirebaseUrl) ->
    baseRef = new Firebase(FirebaseUrl);
    {
      # doesn't insert anything, just returns a timestamped key
      timestampedKey: -> baseRef.push().name()
      resource: (scope, resourceName) ->
        angularFire("#{FirebaseUrl}/#{resourceName}", scope, resourceName, {});
    }
