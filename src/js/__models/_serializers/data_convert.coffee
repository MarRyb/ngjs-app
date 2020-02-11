dataConvertSerializer = () ->

  class dataConvertSerializer

    @serialize: (data) ->
      # console.log(data)
      dataRequest = data
      console.log(dataRequest)
      test: =>
        debugger

      test()
      metaData = dataRequest.data.metaData
      rows = dataRequest.data.rows
      
      

      newObject = rows.map (num) ->
        result = {}
        metaData.forEach (key, i) ->
          result[key.name] = num[i]
        result



  dataConvertSerializer

angular.module('app').service 'dataConvertSerializer', dataConvertSerializer
