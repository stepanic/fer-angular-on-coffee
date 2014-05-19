'use strict'

describe 'Service: Demorest', ->

  # load the service's module
  beforeEach module 'angularOnCoffeeApp'

  # instantiate service
  Demorest = {}
  beforeEach inject (_Demorest_) ->
    Demorest = _Demorest_

  it 'should do something', ->
    expect(!!Demorest).toBe true
