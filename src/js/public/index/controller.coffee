dependencies = ['Person']

PublicIndexController = (Person) ->
  vm = this
  vm.data = []
  Person.get().then (data) ->
    vm.data = data.data
    console.log(vm.data)



  return

angular.module('app').controller 'PublicIndexController', dependencies.concat PublicIndexController
