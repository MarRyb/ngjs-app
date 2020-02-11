dependencies = ['Person']

PersonController = (Person) ->
  vm = this
  vm.data = []
  vm.updateData = []

  Person.get().then (data) ->
    vm.data = data.data
    console.log(vm.data)

  vm.delItem = (item, index) ->
    vm.data.splice(index, 1)
    vm.data

  return

angular.module('app').controller 'PersonController', dependencies.concat PersonController
