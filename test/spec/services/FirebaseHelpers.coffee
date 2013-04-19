'use strict'

describe 'Service: FirebaseHelpers', () ->

  # load the service's module
  beforeEach module 'fireblogApp'

  # instantiate service
  FirebaseHelpers = {}
  beforeEach inject (_FirebaseHelpers_) ->
    FirebaseHelpers = _FirebaseHelpers_

  it 'should do something', () ->
    expect(!!FirebaseHelpers).toBe true;
