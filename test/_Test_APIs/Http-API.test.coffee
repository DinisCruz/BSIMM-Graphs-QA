require 'fluentnode'

Http_API = require '../../src/_Test_APIs/Http-API'

describe '_Test_APIs | Http_API', ->

  it 'constructor', ->
    Http_API.assert_Is_Function()

