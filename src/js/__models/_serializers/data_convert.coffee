dataConvertSerializer = () ->
  serialize = (data) ->
    dataRequest = JSON.parse(data)
    metaData = dataRequest.data.metaData
    rows = dataRequest.data.rows


    newObject = rows.map (num) ->
      result = {}
      metaData.forEach (key, i) ->
        result[key.name] = num[i]
      result

    newObject

  serialize

angular.module('app').service 'dataConvertSerializer', dataConvertSerializer
