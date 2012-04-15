class TodoListController < ApplicationController


  respond_to :html, :json

  def index
    @todo_list = TheTodoList

    respond_with(@todo_list)
  end


end
