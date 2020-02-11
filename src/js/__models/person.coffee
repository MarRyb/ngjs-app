dependencies = ['$http', 'dataConvertSerializer']
Person = ($http, dataConvertSerializer) ->
  class Person
    @get: ->
      $http(
        method: 'GET'
        url: 'api/person.json'
        transformResponse: dataConvertSerializer.serialize
        )


angular.module('app').factory 'Person', dependencies.concat Person
