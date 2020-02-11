dependencies = ['$http', 'dataConvertSerializer']
Person = ($http, dataConvertSerializer) ->
  class Person
    @get: ->
      $http(
        method: 'GET'
        url: 'api/person.json'
        transformResponse: dataConvertSerializer
      )

angular.module('app').factory 'Person', dependencies.concat Person
