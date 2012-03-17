class TodoListsController < ApplicationController

  respond_to :html, :json

  def index
    respond_with(@todo_lists = TodoList.all)
  end


end
