window.BackboneOnRailsTodo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
          new BackboneOnRailsTodo.Routers.Todos
          Backbone.history.start()

$(document).ready ->
  BackboneOnRailsTodo.init()
