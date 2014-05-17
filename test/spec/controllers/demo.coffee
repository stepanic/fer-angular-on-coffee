'use strict'

describe 'Controller: DemoCtrl', ->

  # load the controller's module
  beforeEach module 'angularOnCoffeeApp'

  DemoCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    DemoCtrl = $controller 'DemoCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
