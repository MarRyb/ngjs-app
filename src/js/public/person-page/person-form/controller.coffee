dependencies = ['personsService']

PersonFormController = (personsService) ->
  vm = this
  vm.newPerson = {}

  vm.addItem = () ->
    personsService.add vm.newPerson
    vm.newPerson = {}

  return

angular.module('app').controller 'PersonFormController', dependencies.concat PersonFormController
