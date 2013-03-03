class FastTodo.Views.ItemView extends Backbone.View

  template: JST['todo_items/item']

  el: '#list'

  render: =>
    $(@el).append @template(@model.toJSON())
