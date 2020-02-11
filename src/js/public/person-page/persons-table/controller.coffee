dependencies = ['personsService']

PersonsTableController = (personsService) ->
  vm = this
  vm.personsService = personsService

  vm.delItem = (index) ->
    personsService.delete(index)

  return

angular.module('app').controller 'PersonsTableController', dependencies.concat PersonsTableController
