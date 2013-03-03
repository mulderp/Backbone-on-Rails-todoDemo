class FastTodo.Collections.TodoItems extends Backbone.Collection

  model: FastTodo.Models.TodoItem
  url: '/api/todos'