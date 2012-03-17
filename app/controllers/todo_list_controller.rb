class TodoListController < ApplicationController

  respond_to :html, :json

  def index
    @todo = Todo.new
    @todo_list = [ Todo.new, Todo.new, Todo.new ]
    respond_with(@todo_list)
  end


end
