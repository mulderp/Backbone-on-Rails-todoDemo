class BackboneOnRailsTodo.Views.TodosIndex extends Backbone.View

  tagName: 'li'

  template: JST['todos/index']

  initialize: (todo) ->
    @todo = todo.model

  render: ->
    $(@el).html(@template(todo: @todo))
    this 
