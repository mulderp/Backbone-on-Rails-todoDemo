class BackboneOnRailsTodo.Views.TodosIndex extends Backbone.View

  template: JST['todos/index']

  initialize: ->
    @todos.on('add', @render, this)
