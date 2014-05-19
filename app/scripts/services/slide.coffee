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
        title: 'CoffeeScript - Motivation',
        view: "views/partial/slide-2.html"
      },
      {
        id: 3,
        route: '/slide-3',
        title: 'CoffeeScript - Useful things',
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
      {
        id: 11,
        route: '/slide-11',
        title: 'CoffeeScript - Destructuring Assignment',
        view: "views/partial/slide-11.html"
      },
      {
        id: 12,
        route: '/slide-12',
        title: 'CoffeeScript - Switch/When/Else',
        view: "views/partial/slide-12.html"
      },
      {
        id: 13,
        route: '/slide-13',
        title: 'CoffeeScript - Strings',
        view: "views/partial/slide-13.html"
      },
      {
        id: 14,
        route: '/slide-14',
        title: 'CoffeeScript - finally few important things',
        view: "views/partial/slide-14.html"
      },
      {
        id: 15,
        route: '/slide-15',
        title: 'AngularJS - Introduction',
        view: "views/partial/slide-15.html"
      },
      {
        id: 16,
        route: '/slide-16',
        title: 'AngularJS - Arhitecture',
        view: "views/partial/slide-16.html"
      },
      {
        id: 17,
        route: '/slide-17',
        title: 'AngularJS - Bootstraping',
        view: "views/partial/slide-17.html"
      },
      {
        id: 18,
        route: '/slide-18',
        title: 'AngularJS - Templates and binding',
        view: "views/partial/slide-18.html"
      },
      {
        id: 19,
        route: '/slide-19',
        title: 'AngularJS - Two-way Data Binding',
        view: "views/partial/slide-19.html"
      },
      {
        id: 20,
        route: '/slide-20',
        title: 'AngularJS - Dependency Injection',
        view: "views/partial/slide-20.html"
      },
      {
        id: 21,
        route: '/slide-21',
        title: 'AngularJS - Routing & Multiple Views 1/2',
        view: "views/partial/slide-21.html"
      },
      {
        id: 22,
        route: '/slide-22',
        title: 'AngularJS - Routing & Multiple Views 2/2',
        view: "views/partial/slide-22.html"
      },
      {
        id: 23,
        route: '/slide-23',
        title: 'AngularJS - Tips and tricks 1/2',
        view: "views/partial/slide-23.html"
      },
      {
        id: 24,
        route: '/slide-24',
        title: 'AngularJS - Tips and tricks 2/2',
        view: "views/partial/slide-24.html"
      },
      {
        id: 25,
        route: '/slide-25',
        title: 'AngularJS - DEMO',
        view: "views/partial/slide-25.html"
      },
      {
        id: 25,
        route: '/slide-25',
        title: 'AngularJS - DEMO',
        view: "views/partial/slide-25.html"
      },
      {
        id: 26,
        route: '/slide-26',
        title: 'Development - Introduction',
        view: "views/partial/slide-26.html"
      },
      {
        id: 27,
        route: '/slide-27',
        title: 'Development - Yeoman.io - Install',
        view: "views/partial/slide-27.html"
      },
      {
        id: 28,
        route: '/slide-28',
        title: 'Development - Yeoman.io - From nothing',
        view: "views/partial/slide-28.html"
      },
      {
        id: 29,
        route: '/slide-29',
        title: 'Development - Yeoman.io - From GIT repo',
        view: "views/partial/slide-29.html"
      },
      {
        id: 30,
        route: '/slide-30',
        title: 'Technology used - Tnx to open-source',
        view: "views/partial/slide-30.html"
      },
      {
        id: 31,
        route: '/slide-31',
        title: 'Questions and answers',
        view: "views/partial/slide-31.html"
      },
      {
        id: 32,
        route: '/slide-32',
        title: 'Thank you for attention',
        view: "views/partial/slide-32.html"
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


