dependencies = ['$http', 'dataConvertSerializer']
Person = ($http, dataConvertSerializer) ->
  class Person
    @get: ->
      $http(
        method: 'GET'
        url: 'api/person.json'
        transformResponse: (data) ->
          dataConvertSerializer.serialize(data)
        )


angular.module('app').factory 'Person', dependencies.concat Person
