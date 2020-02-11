dependencies = ['personsService']

PersonsBlocksController = (personsService) ->
  vm = this
  vm.personsService = personsService

  vm.delItem = (index) ->
    personsService.delete(index)

  return

angular.module('app').controller 'PersonsBlocksController', dependencies.concat PersonsBlocksController
