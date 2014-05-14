'use strict'

describe 'Service: Slide', ->

  # load the service's module
  beforeEach module 'angularOnCoffeeApp'

  # instantiate service
  Slide = {}
  beforeEach inject (_Slide_) ->
    Slide = _Slide_

  it 'should do something', ->
    expect(!!Slide).toBe true
