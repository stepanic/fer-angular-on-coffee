'use strict'

angular.module('angularOnCoffeeApp')
  .service 'SlideRepo', ->

    slides = [
      {
        id: 1,
        route: '/slide-1',
        title: 'CoffeeScript in general',
        view: "views/partial/slide-1.html"
      },
      {
        id: 2,
        route: '/slide-2',
        title: 'CoffeeScript - motivation',
        view: "views/partial/slide-2.html"
      },
      {
        id: 3,
        route: '/slide-3',
        title: 'CoffeeScript - useful things',
        view: "views/partial/slide-3.html"
      },
      {
        id: 4,
        route: '/slide-4',
        title: 'CoffeeScript - Functions',
        view: "views/partial/slide-4.html"
      },
      {
        id: 5,
        route: '/slide-5',
        title: 'CoffeeScript - Objects and Arrays',
        view: "views/partial/slide-5.html"
      },
      {
        id: 6,
        route: '/slide-6',
        title: 'CoffeeScript - If / Else',
        view: "views/partial/slide-6.html"
      },
      {
        id: 7,
        route: '/slide-7',
        title: 'CoffeeScript - Loops',
        view: "views/partial/slide-7.html"
      },
      {
        id: 8,
        route: '/slide-8',
        title: 'CoffeeScript - Operators',
        view: "views/partial/slide-8.html"
      },
      {
        id: 9,
        route: '/slide-9',
        title: 'CoffeeScript - The Existential Operator',
        view: "views/partial/slide-9.html"
      },
      {
        id: 10,
        route: '/slide-10',
        title: 'CoffeeScript - OOP',
        view: "views/partial/slide-10.html"
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


