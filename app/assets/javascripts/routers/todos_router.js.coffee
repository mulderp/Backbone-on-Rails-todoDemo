class BackboneOnRailsTodo.Routers.Todos extends Backbone.Router
  routes: 
    '': 'index'
    'todos/:id' : 'show'

  index:
      alert "index"

  show: (id) ->
      alert "Entry ID: #{id}"
    
    



