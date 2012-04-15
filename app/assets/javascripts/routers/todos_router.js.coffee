class BackboneOnRailsTodo.Routers.Todos extends Backbone.Router
  routes: 
    'todos/:id' : 'show'

  show: (id) ->
      alert "Entry ID: #{id}"
    
    



