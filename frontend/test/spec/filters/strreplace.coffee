'use strict'

describe 'Filter: strReplace', ->

  # load the filter's module
  beforeEach module 'angularOnCoffeeApp'

  # initialize a new instance of the filter before each test
  strReplace = {}
  beforeEach inject ($filter) ->
    strReplace = $filter 'strReplace'

  it 'should return the input prefixed with "strReplace filter:"', ->
    text = 'angularjs'
    expect(strReplace text).toBe ('strReplace filter: ' + text)
