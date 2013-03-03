window.FastTodo =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}  

$(document).ready ->
  console.log($('#main'))
  new FastTodo.Routers.TodoItems()
  Backbone.history.start()
