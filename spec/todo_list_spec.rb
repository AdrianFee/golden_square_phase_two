require "todo_list"

RSpec.describe Todo do 
    context "when no tasks have been added" do 
        it "returns an empty list of incomplete tasks" do
            todo_list = TodoList.new
            expect(todo_list.incomplete).to eq []
        end 
        it "returns an empty list of completed tasks" do
            todo_list = TodoList.new
            expect(todo_list.complete).to eq []
        end 
        it "returns a string when trying to mark all completed" do 
            todo_list = TodoList.new
            expect(todo_list.give_up!).to eq "You haven't added any tasks."
        end 
    end 
end 