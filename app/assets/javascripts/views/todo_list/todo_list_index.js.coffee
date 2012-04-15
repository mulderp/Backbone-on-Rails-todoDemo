class BackboneOnRailsTodo.Views.TodoListIndex extends Backbone.View

  template: JST['todo_list/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(todo_list: @collection))
    this
  
