dependencies = ['$stateProvider']
router = ($stateProvider) ->

  $stateProvider
    .state 'public.index',
      url: '/index'
      component: 'publicIndexPage'


angular.module('app').config dependencies.concat router
