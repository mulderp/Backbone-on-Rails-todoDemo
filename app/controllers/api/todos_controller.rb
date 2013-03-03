class Api::TodosController < ApplicationController
  def index
    todos = Todo.all
    render :json => todos
  end

  def create
    todo = Todo.create(:task => params[:task])
    render :json => todo
  end
end
