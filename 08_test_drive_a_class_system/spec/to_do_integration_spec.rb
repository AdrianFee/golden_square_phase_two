require "to_do"
require "todo_list"

RSpec.describe "integration of todo and todo_list" do
    context "when a task has been added" do 
        it "shows that task in a list of incomplete tasks" do 
            todo_list = TodoList.new
            todo = Todo.new("this is my task")
            todo_list.add(todo)
            expect(todo_list.incomplete).to eq [todo]
        end 
        it "marks the task as done" do 
            todo_list = TodoList.new
            todo = Todo.new("this is my task")
            todo_2 = Todo.new("this is my new task")
            todo_list.add(todo)
            todo_list.add(todo_2)
            todo.mark_done!
            expect(todo_list.incomplete).to eq [todo_2]
        end 
    end 
end