#= require trix/core/basic_object

# Implementation of base Trix Object
# Provides an id for each object created
class Trix.Object extends Trix.BasicObject
  id = 0

  @fromJSONString: (jsonString) ->
    @fromJSON JSON.parse(jsonString)

  # Create the object
  # Increments the object id counter
  constructor: ->
    @id = ++id

  # Determine if two objects have the same constructor
  # @param [object] to compare with
  hasSameConstructorAs: (object) ->
    @constructor is object?.constructor

  # Determine if two objects are equal
  isEqualTo: (object) ->
    this is object

  # Create a human readable string representation of the object
  inspect: ->
    contents = for key, value of @contentsForInspection() ? {}
      "#{key}=#{value}"

    "#<#{@constructor.name}:#{@id}#{if contents.length then " #{contents.join(", ")}" else ""}>"

  # Default implmentation of the object contents
  contentsForInspection: ->

  # Convert the object to a JSON string
  toJSONString: ->
    JSON.stringify(this)

  # Convert the object to a UTF16 string
  toUTF16String: ->
    Trix.UTF16String.box(this)

  # Get the cache key for the object
  # @return the object's id.
  getCacheKey: ->
    @id.toString()
