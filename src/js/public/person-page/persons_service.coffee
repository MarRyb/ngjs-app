dependencies = ['Person']

personsService = (Person) ->
  class PersonsService

    items: []

    getList: ->
      Person.get().then (response) => @items = response.data

    add: (personParams) ->
      newPerson = Object.assign({}, personParams)
      @items.push(newPerson)

    delete: (index) ->
      @items.splice(index, 1)

  new PersonsService()

angular.module('app').service 'personsService', dependencies.concat personsService