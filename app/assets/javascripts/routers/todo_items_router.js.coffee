class FastTodo.Routers.TodoItems extends Backbone.Router

  routes:
    '': 'showTodoCollectionView'
    'todos/(:id)': 'showTodoItemView'

  showTodoCollectionView: ->
    new FastTodo.Views.TodoItemsIndex()
    console.log("***")

  showTodoItemView: (id) ->
    console.log("-----")
