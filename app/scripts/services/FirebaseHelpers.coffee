'use strict';

angular.module('fireblogApp').factory 'FirebaseHelpers',
  (FirebaseUrl) ->
    baseRef = new Firebase(FirebaseUrl);
    {
      # doesn't insert anything, just returns a timestamped key
      timestampedKey: -> baseRef.push().name()
    }
