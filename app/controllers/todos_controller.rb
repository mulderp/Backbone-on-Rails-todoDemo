class TodosController < ApplicationController
  def index
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
