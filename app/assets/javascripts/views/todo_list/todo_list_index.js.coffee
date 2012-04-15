class BackboneOnRailsTodo.Views.TodoListIndex extends Backbone.View

  el: $('#todoapp')

  initialize: ->
    @collection.on('reset', @addAll, this)
    @collection.bind('all', this.render, this)
    $('#new-todo').on "keypress", @keyTodoInput

  addAll: ->
    @collection.each(@addOne)

  addOne: (todo) ->
    view = new BackboneOnRailsTodo.Views.Todo({model: todo})
    this.$("#todo-list").append(view.render().el)
  
  createTodo: (event) ->
    event.preventDefault()
    BackboneOnRailsTodo.Collections.Todos.create content: $('#new-todo-content').val()

  keyTodoInput: (e) ->
    # console.log(event.type, event.keyCode)
    return if (e.keyCode != 13)
    return if (!this.value)

    todo = new BackboneOnRailsTodo.Collections.Todos()
    todo.create content: this.value
    ''
