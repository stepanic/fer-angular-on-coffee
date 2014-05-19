'use strict'

angular.module('angularOnCoffeeApp')
  .service 'DemoREST', ['$resource', ($resource) ->

    urlEndpoint = 'http://localhost:1337'

    task = $resource("#{urlEndpoint}/task/:id",
      id: "@id"
    )

    getAllTasks: ()->
      task.query (data)->
        data

    deleteTask: (taskId)->
      task.delete {id:taskId}

  ]

