class TodosController < ApplicationController

  respond_to :html, :json

  def index
    @todo_list = TheTodoList

    respond_with(@todo_list)
  end

  def new
  end

  def create
    @todo = TheTodoList.new_todo 
    @todo.content = params[:content]
    @todo.due_date = Time.now + 1.week
    @todo.add_to_list
  end
end
