class Webcaster.Model.Settings extends Backbone.Model
  initialize: (attributes, options) ->
    @mixer = options.mixer
    @events = options.events

    @mixer.on "cue", =>
      @set passThrough: false

    @events.on "eventsChange", =>
      @set events: _.clone(@events.events);


  setEventsState: ->
    @events.started = true

  togglePassThrough: ->
    passThrough = @get("passThrough")
    if passThrough
      @set passThrough: false
    else
      @mixer.trigger "cue"
      @set passThrough: true
