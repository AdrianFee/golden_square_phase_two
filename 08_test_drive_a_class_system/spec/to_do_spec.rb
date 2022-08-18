require "to_do"

RSpec.describe Todo do
    context "when tasks have been added" do
        it "returns a task as a string" do 
            todo = Todo.new("this is my task")
            expect(todo.task).to eq "this is my task"
        end 
        it "returns true if a task is marked complete" do
            todo = Todo.new("this is my task")
            todo.mark_done!
            expect(todo.done?).to eq true
        end 
        it "returns false if a task hasn't been marked complete" do 
            todo = Todo.new("this is my task")
            expect(todo.done?).to eq false 
        end 
    end 
end 