class TodoList 

  attr_accessor :todos
  attr_writer :todo_source

  def initialize
    @todos = []
  end

  def new_todo(*args)
    todo_source.call(*args).tap do |t|
      t.todo_list = self
    end
  end

  def add_item(item)
    @todos << item
  end

  def to_json(options={})
    #"{ \"todolist\": #{@todos.map { |item| item.to_json } } }"
    # @todos.map { |item| item.to_json }.to_json
    "#{ @todos.map { |item| item.to_json }.to_json }   "
  end
  private

  def todo_source
    @todo_source ||= Todo.public_method(:new)
  end

end
