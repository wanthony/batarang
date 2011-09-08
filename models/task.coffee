class Batarang.Task extends Batman.Model
  @persist Batman.LocalStorage

  @encode 'name'
  @encode 'due_date',
    encode: (time) -> time.toISOString()
    decode: (timeStr) -> Date.parse(timeStr)

  # This model could be persisted locally with
  #
  # @persist Batman.LocalStorage
  #
  # or over a REST endpoint with
  #
  # @persist Batman.RestStorage

  # Make Batman aware of this model's associations with
  #
  # @hasMany 'other_models'
  #
  # or
  #
  # @belongsTo 'parent_model'

  # Make this model available in the global scope with
  # @global true

  # Add a computed property to this model with
  #
  # @accessor 'someKey',
  #   get: -> ...
  #   set: -> ...
  #
  # and whenever any of the properties accessed in the getter/setters change,
  # someKey will be recomputed and cached.

  # Observe a property or an event on this model with
  #
  # @observe 'someKey', (newValue, oldValue) ->
  #
  # and be notified of any changes to someKey on this model, or use
  #
  # @observeAll 'someKey', (newValue, oldValue) ->
  #
  # to be notified of any changes to someKey on any instance of the model.

  # Add an event to instances of this model with
  #
  # @event 'someEvent', -> ... # return value of event, passed to observers
  #
  # and fire it with
  #
  # modelInstance.fire('someEvent')
