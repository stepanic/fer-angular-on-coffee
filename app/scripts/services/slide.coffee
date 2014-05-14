'use strict'

angular.module('angularOnCoffeeApp')
  .service 'SlideRepo', ->

    slides = [
      {
        id: 1,
        route: '/slide-1',
        title: 'Prvi slajd No1',
        view: "views/partial/slide-1.html"
      },
      {
        id: 2,
        route: '/slide-2',
        title: 'Drugi slajd No2',
        view: "views/partial/slide-2.html"
      },
    ]

    minId: () ->
      slides[0].id

    maxId: () ->
      slides[slides.length - 1].id

    getById: (id) ->
      (slides.filter (x) -> x.id is id)[0]

    getAll: () ->
      slides


