dependencies = ['personsService']

PersonPageController = (personsService) ->
  vm = this
  personsService.getList()
  return

angular.module('app').controller 'PersonPageController', dependencies.concat PersonPageController
