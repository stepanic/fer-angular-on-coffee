'use strict'

angular.module('angularOnCoffeeApp')
  .controller 'MainCtrl', [
    '$scope',
    '$route',
    '$location',
    '$http',
    '$templateCache',
    'Fullscreen',
    'hotkeys',
    'SlideRepo',
    ($scope, $route, $location, $http, $templateCache, Fullscreen, hotkeys, SlideRepo) ->

      # Init
      $scope.slide = null
      slideIdMax = SlideRepo.maxId()
      slideIdMin = SlideRepo.minId()

      # Caching - Template preload
      $http.get "#{slide.view}", {cache:$templateCache} for slide in SlideRepo.getAll()

      # CodeMirror editor for displaying code with syntax highlight
      $scope.editorOptions =
        lineWrapping : true
        lineNumbers: true
        readOnly: 'nocursor'
        mode: 'javascript'
        theme: 'ambience'

      #$scope.demoCode = 'alert("bla");'


      # Change slide  - all slides are views/partial/slide-ID.html
      changeSlide = (id) ->
        if id and not isNaN(id)
          $scope.slide = SlideRepo.getById(id)

          if id > slideIdMax
            $location.path "/slide-#{slideIdMax}"
          if id < slideIdMin
            $location.path "/slide-#{slideIdMin}"

          if id isnt parseInt params.slide, 10
            $location.path $scope.slide.route

      # Navigate slides - forward/backward navigation between slides
      navigateSlide = (direction) ->
        if $scope.slide.id isnt null
          id = $scope.slide.id # Current slide
          if direction is 'left'
            if id > slideIdMin
              id -= 1
          else
            if id < slideIdMax
              id += 1
          changeSlide id

      # Get params from URL
      params = $route.current.params
      # Bind params.slide to view
      changeSlide parseInt params.slide, 10

      # Keyboard shortcuts control
      hotkeys.add
        combo: 'ctrl+f'
        description: "Toggle fullscreen"
        callback: ->
          $scope.goFullscreen()
      hotkeys.add
        combo: 'esc'
        description: "Toggle fullscreen"
        callback: ->
          $scope.goFullscreen()
      hotkeys.add
        combo: 'left'
        description: "Navigate slides left (backward)"
        callback: ->
          navigateSlide 'left'
      hotkeys.add
        combo: 'right'
        description: "Navigate slides right (forward)"
        callback: ->
          navigateSlide 'right'

      # App in fullscreen mode
      $scope.goFullscreen = () ->
        if Fullscreen.isEnabled()
          Fullscreen.cancel()
        else
          Fullscreen.all()
  ]

