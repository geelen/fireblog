'use strict'

describe 'Service: FirebaseApi', () ->

  # load the service's module
  beforeEach module 'fireblogApp'

  # instantiate service
  FirebaseHelpers = {}
  beforeEach inject (_FirebaseApi_) ->
    FirebaseHelpers = _FirebaseApi_

  it 'should do something', () ->
    expect(!!FirebaseHelpers).toBe true;
