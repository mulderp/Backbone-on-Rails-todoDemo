class TodoListController < ApplicationController


  respond_to :html, :json

  def index
    @todo_list = TodoList.new

    @todo1 = @todo_list.new_todo 
    @todo1.content = "paint house"
    @todo1.due_date = Time.now + 1.week
    @todo1.add_to_list

    @todo2 = @todo_list.new_todo 
    @todo2.content = "buy paint"
    @todo2.due_date = Time.now + 1.day
    @todo2.add_to_list

    respond_with(@todo_list)
  end


end
