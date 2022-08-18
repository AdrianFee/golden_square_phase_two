# Design a single class program - To Do list

## 1. Describe the Problem

User wants to have a list of to-dos and mark them
off as completed.
User wants to return lists of complete/incomplete to-dos.
User wants to mark all to-dos as completed.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._
```ruby

# File: to_do.rb

class Todo
    def initialize(task) # task is a string
      # ...
    end
  
    def task
      # Returns the task as a string
    end
  
    def mark_done!
      # Marks the todo as done
      # Returns nothing
    end
  
    def done?
      # Returns true if the task is done
      # Otherwise, false
    end
  end

# File: todo_list.rb

class TodoList
    def initialize
    end
  
    def add(todo) # todo is an instance of Todo
      # Returns nothing
    end
  
    def incomplete
      # Returns all non-done todos
    end
  
    def complete
      # Returns all complete todos
    end
  
    def give_up!
      # Marks all todos as complete
    end
  end

```

## 3. Create Examples as Tests
_Make a list of examples of how the class will behave in different situations._
```ruby

TodoList examples

# 1
todo_list = TodoList.new
expect(todo_list.incomplete).to eq []

# 2
todo_list = TodoList.new
expect(todo_list.complete).to eq []

# 3
todo_list = TodoList.new
expect(todo_list.give_up!).to eq "You haven't added any tasks."

# 4

 Todo examples

# 1
todo = Todo.new("this is my task")
expect(todo.task).to eq "this is my task"

# 2
todo = Todo.new("this is my task")
todo.mark_done!
expect(todo.done?).to eq true

# 3
todo = Todo.new("this is my task")
expect(todo.done?).to eq false

Integration examples

# 1
todo_list = TodoList.new
todo = Todo.new("this is my task")
todo_list.add(todo)
expect(todo_list.incomplete).to eq [todo]

# 2
todo_list = TodoList.new
todo = Todo.new("this is my task")
todo_2 = Todo.new("this is my new task")
todo_list.add(todo)
todo_list.add(todo_2)
todo.mark_done!
expect(todo_list.incomplete).to eq [todo_2]

# 3
todo_list = TodoList.new
todo = Todo.new("this is my task")
todo_2 = Todo.new("this is my new task")
todo_list.add(todo)
todo_list.add(todo_2)
todo.mark_done!
expect(todo_list.complete).to eq [todo]

# 4
todo_list = TodoList.new
todo = Todo.new("this is my task")
todo_2 = Todo.new("this is my new task")
todo_list.add(todo)
todo_list.add(todo_2)
todo_list.give_up!
expect(todo_list.complete).to eq [todo, todo_2]


## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
<!-- BEGIN GENERATED SECTION DO NOT EDIT -->