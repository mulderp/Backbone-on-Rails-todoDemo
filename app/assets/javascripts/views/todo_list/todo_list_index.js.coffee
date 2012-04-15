class BackboneOnRailsTodo.Views.TodoListIndex extends Backbone.View

  template: JST['todo_list/index']

  events:
    'submit #new-todo': 'createTodo'

  initialize: ->
    @collection.on('reset', @render, this)


  render: ->
    $(@el).html(@template(todo_list: @collection))
    this
  
  createTodo: (event) ->
    event.preventDefault()
    todo = new BackboneOnRailsTodo.Collections.Todos()
    todo.create content: $('#new-todo-content').val()
