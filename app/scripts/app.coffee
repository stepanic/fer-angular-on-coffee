'use strict'

angular
  .module('angularOnCoffeeApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute',
    'FBAngular'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'

