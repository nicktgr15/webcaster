class Webcaster.View.Watch extends Backbone.View
  initialize: ->
    this.render();
    this.clockInterval = this.updateWatch();

#    setTimeout ( ->
#      console.log("hello")
#    ), 1000
#    console.log(@model)

  updateWatch: ->
    self = @
    return setInterval ( ->
#      console.log(self.model.seconds)
      if self.model.started
        self.model.seconds = self.model.seconds + 0.2
        date = new Date(null)
        date.setSeconds(self.model.seconds)
        self.model.timeString = date.toISOString().substr(11, 8)
        self.render()
    ), 200
  render: ->

    @$("h3.timer").html(@model.timeString)
    
#    @$(".slider").slider
#      stop: =>
#        @$("a.ui-slider-handle").tooltip "hide"
#      slide: (e, ui) =>
#        @model.set slider: ui.value
#        @$("a.ui-slider-handle").tooltip "show"
#
#    @$("a.ui-slider-handle").tooltip
#      title: => @model.get "slider"
#      trigger: ""
#      animation: false
#      placement: "bottom"

    this
