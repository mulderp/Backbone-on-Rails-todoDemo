class BackboneOnRailsTodo.Routers.TodoLists extends Backbone.Router
  routes: 
    '': 'index'

  initialize: ->
    @collection = new BackboneOnRailsTodo.Collections.TodoList()
    @collection.fetch()

  index: ->
    view = new BackboneOnRailsTodo.Views.TodoListIndex(collection: @collection)
    $('#todo-list').html(view.render().el)

