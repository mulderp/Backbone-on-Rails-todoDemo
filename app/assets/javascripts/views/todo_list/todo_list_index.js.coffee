class BackboneOnRailsTodo.Views.TodoListIndex extends Backbone.View

  el: $('#todo-list')

  events:
    'submit #new-todo': 'createTodo'

  initialize: ->
    @collection.on('reset', @addAll, this)

  addAll: ->
    @collection.each(@addOne)

  addOne: (todo) ->
    view = new BackboneOnRailsTodo.Views.TodosIndex({model: todo})
    this.$("#todo-list").append(view.render().el)
  
  createTodo: (event) ->
    event.preventDefault()
    BackboneOnRailsTodo.Collections.Todos.create content: $('#new-todo-content').val()
