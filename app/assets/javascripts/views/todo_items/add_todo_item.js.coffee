class FastTodo.Views.AddTodoItem extends Backbone.View

  template: JST['todo_items/add_item']

  events:
    'submit': 'addItem'

  addItem: (event) ->
    event.preventDefault()
    @collection.create task: $('#task').val()

  render: ->
    @$el.html @template()
    @
