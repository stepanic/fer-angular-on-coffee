'use strict'

angular.module('angularOnCoffeeApp')
  .controller 'DemoCtrl', ['$scope', '$interval', 'DemoREST', ($scope, $interval, DemoREST) ->
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

    # DEMO - REST - Sails.js as backend, TASKS Demo
    $scope.model =
      allTasks: null

    # From custom $resource service
    $scope.getAllTasks = (data = "null") ->
      if data is "null"
        data = DemoREST.getAllTasks()
      $scope.model.allTasks = data

    # Onload get all tasks
    $scope.getAllTasks()


    # Put task inProgress
    $scope.doTask = (task) ->
      angular.forEach $scope.model.allTasks, (obj)->
        if obj is task
          obj.inProgress = true
          taskInProgress = $interval(()->
            obj.duration -= 1
            if obj.duration is 0
              DemoREST.deleteTask obj.id
              $interval.cancel taskInProgress
          , 1000, 0, true
          )

    $scope.connectToSails = () ->
      socket = io.connect "http://localhost:1337"

      socket.on "connect", socketConnected = ->
        # Listen for Comet messages from Sails
        socket.on "message", messageReceived = (message) ->
          console.log message
          if message.model is "task"
            if message.verb is "create"
              $scope.$apply ->
                $scope.model.allTasks.push message.data
            else if message.verb is "destroy"
              $scope.model.allTasks = $scope.model.allTasks.filter (task) -> task.id isnt message.id

      # With this request App is subscribed to all changes on task model
      socket.get "/task", (response) ->
        $scope.$apply ->
          $scope.getAllTasks response
  ]



