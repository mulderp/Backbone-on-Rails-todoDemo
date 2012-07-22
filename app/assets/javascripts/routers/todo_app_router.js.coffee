class BackboneOnRailsTodo.Routers.TodoApp extends Backbone.Router
  routes: 
    '': 'index'

  initialize: ->
    @todos = new BackboneOnRailsTodo.Collections.Todos()
    @todos.fetch()

  index: ->
    view = new BackboneOnRailsTodo.Views.TodoApp({collection: @todos})
    $('#todo-list').html(view.render().el)

