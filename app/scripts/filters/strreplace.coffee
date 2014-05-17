'use strict'

angular.module('angularOnCoffeeApp')
  .filter 'strReplace', ->
    (input) ->
      input.replace("CoffeeScript", '<img src="images/coffeescript.png" width="300">').replace("AngularJS", '<img src="images/angular.png" width="300">')

