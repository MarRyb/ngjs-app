dependencies = ['$stateProvider', '$locationProvider', '$urlRouterProvider']
router = ($stateProvider, $locationProvider, $urlRouterProvider) ->

  $stateProvider
    .state 'public',
      abstract: true
      url: ''
      redirectTo: 'public.person'
      component: 'publicState'

  $urlRouterProvider.when "/", "/index"

  $locationProvider.html5Mode(
    enabled: true
    requireBase: false
    html5Mode: true
  )

angular.module('app').config dependencies.concat router
