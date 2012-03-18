class Todo 

  attr_accessor :todo_list, :content, :due_date

  def add_to_list
    @todo_list.add_item(self)
  end


  def to_json(options={})
    { "content" => @content, "due_date" => "#{@due_date}" }.as_json 
  end

end
