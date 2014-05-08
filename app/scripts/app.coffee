'use strict'

angular
  .module('angularOnCoffeeApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute',
    'FBAngular'
  ])
  .config ['$routeProvider', '$locationProvider', ($routeProvider, $locationProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/demo1',
        templateUrl: 'views/demo1.html'
        controller: 'MainCtrl'
      .when '/demo2',
        templateUrl: 'views/demo2.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'

    $locationProvider.html5Mode(true)
  ]

