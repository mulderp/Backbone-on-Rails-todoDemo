# spec/models/todo_list_spec.rb

require 'ostruct'
require_relative '../../app/models/todo_list' 

describe TodoList do

  before do
    @it = TodoList.new
  end

  it "has no todos" do
      @it.todos.should be_empty 
  end


  describe "#new_todo" do
    before do
      @todo = OpenStruct.new
      @it.todo_source = ->{ @todo }
    end

    it "returns new todo" do
      @it.new_todo.should == @todo
    end

  end
end
