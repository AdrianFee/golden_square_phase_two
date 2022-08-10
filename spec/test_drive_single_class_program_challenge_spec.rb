require "test_drive_single_class_program_challenge"

RSpec.describe GrammarStats do
    it "returns true if grammar is correct" do 
        checking = GrammarStats.new
        result = checking.check("This is correct.")
        expect(result).to eq true 
    end 
    it "returns false if grammar is incorrect" do 
        checking = GrammarStats.new
        result = checking.check("this isn't correct.")
        expect(result).to eq false 
    end 
    it "checks the percentage of the text that has passed " do 
        checking = GrammarStats.new
        check_it = checking.check("This is correct.")
        result = checking.percentage_good
        expect(result).to eq 100
    end 
end