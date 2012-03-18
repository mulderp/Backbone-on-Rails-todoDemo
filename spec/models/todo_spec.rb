require_relative '../../app/models/todo' 

describe Todo do

  before do
    @it = Todo.new
  end

  it "starts with blank attributes" do
    @it.content.should == nil
    @it.due_date.should == nil
  end


  it "supports reading and writing content" do
    @it.content = "paint house"
    @it.content.should == "paint house"
  end

  it "supports reading and writing due_date" do
    tomorrow = Time.now + (60*60*24*3)
    @it.due_date = tomorrow
    @it.due_date.should == tomorrow
  end

  describe "add_to_list" do
    before(:each) do
      @todo_list = mock("TodoList") 
      @it.todo_list = @todo_list
    end

    it "is added to the TodoList" do
      @todo_list.should_receive(:add_item).and_return([@it])
      @it.add_to_list
    end
  end

end



