'use strict'

angular.module('angularOnCoffeeApp')
  .controller 'MainCtrl', ['$scope', 'Fullscreen', ($scope, Fullscreen) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]

    $scope.goFullscreen = () ->
      if Fullscreen.isEnabled()
        Fullscreen.cancel()
      else
        Fullscreen.all()
  ]

