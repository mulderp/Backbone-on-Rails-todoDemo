window.BackboneOnRailsTodo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new BackboneOnRailsTodo.Routers.TodoLists
    Backbone.history.start()

$(document).ready ->
  BackboneOnRailsTodo.init()
