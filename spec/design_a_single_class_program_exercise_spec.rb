require "design_a_single_class_program_exercise"

RSpec.describe Reminder do 
    it "adds a task or deletes a task from a list" do
        reminder = Reminder.new("Kay")
        reminder.remind_me_to("Walk the dog.")
        expect(reminder.list).to eq "Walk the dog."
        expect(reminder.delete_task("Walk the dog.")).to eq []
    end 
end 