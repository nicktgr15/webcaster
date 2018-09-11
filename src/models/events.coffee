class Webcaster.Model.Events extends Backbone.Model
  initialize: (attributes, options) ->

    @events = []

    @on "change:events", =>
      console.log("events changed")

    @started = false
    @seconds = 0
    @timeString = "00:00:00"
