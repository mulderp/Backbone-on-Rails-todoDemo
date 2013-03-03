class FastTodo.Views.TodoItemsIndex extends Backbone.View

  template: JST['todo_items/index']

  el: '#main'

  render: =>
    console.log(@form_view.render().el)
    $(@el).append @form_view.render().el
    $(@el).append @template
    @collection.each @renderOne

  renderOne: (item) =>
    item = new FastTodo.Views.ItemView({model: item})
    $(@el).append item.render().el

  initialize: ->
    @collection = new FastTodo.Collections.TodoItems()
    @form_view = new FastTodo.Views.AddTodoItem collection: @collection
    @collection.bind 'reset', @render
    @collection.on 'add', @renderOne
    @collection.fetch()
