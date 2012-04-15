
TheTodoList = TodoList.new

todo1 = TheTodoList.new_todo 
todo1.content = "paint house"
todo1.due_date = Time.now + 1.week
todo1.add_to_list

todo2 = TheTodoList.new_todo 
todo2.content = "buy paint"
todo2.due_date = Time.now + 1.day
todo2.add_to_list

