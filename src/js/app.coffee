app = angular.module('app', [
  'ui.router'
]).run ['$templateCache', '$rootScope', '$state', '$stateParams'
  ($templateCache, $rootScope, $state, $stateParams) ->
    for own templateName, templateSource of Templates
      $templateCache.put templateName, templateSource

    $rootScope.$state = $state
    $rootScope.$stateParams = $stateParams

]
