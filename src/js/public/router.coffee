dependencies = ['$stateProvider']
router = ($stateProvider) ->

  $stateProvider
    .state 'public.person',
      url: '/index'
      component: 'personPage'


angular.module('app').config dependencies.concat router
