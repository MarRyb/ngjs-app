dependencies = ['Person']

PublicIndexController = (Person) ->
  vm = this
  
  Person.get().then ->
    debugger


  return

angular.module('app').controller 'PublicIndexController', dependencies.concat PublicIndexController
