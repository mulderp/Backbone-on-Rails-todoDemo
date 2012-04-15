class BackboneOnRailsTodo.Routers.Todos extends Backbone.Router
  routes: 
    'todos/:id' : 'show'

  initialize: ->
    @todos = new BackboneOnRailsTodo.Collections.Todos()

  show: (id) ->
      alert "Entry ID: #{id}"
    
    



