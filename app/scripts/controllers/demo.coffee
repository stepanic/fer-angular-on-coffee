'use strict'

angular.module('angularOnCoffeeApp')
  .controller 'DemoCtrl', ['$scope', ($scope) ->
    $scope.awesomeThings = [
      'CoffeeScript'
      'AngularJS'
      'HTML5 Boilerplate'
      'Karma'
      'Yeoman'
      'Grunt'
      'Bower'
      'GitHub'
    ]
    $scope.search = ''
  ]



