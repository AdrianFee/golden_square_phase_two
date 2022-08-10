require "test_drive_single_class_program_challenge"

RSpec.describe "checks the grammar of a given text and can return the percentage of the text that is correct" do 
    
    it "returns true if text starts with capital and ends with sentence ending punctuation" do
        test_this = GrammarStats.new
        result = test_this.check("This is correctly written.")
        expect(result).to eq true
    end 

    it "returns false if text does not start with capital and end with sentence ending punctuation" do
        test_this = GrammarStats.new
        result = test_this.check("his is correctly written.")
        expect(result).to eq false
    end 

    it "gives the percentage of text that is correct" do 
        test_this = GrammarStats.new 
        checking_text = test_this.check("This is correctly written.")
        
        expect(test_this.percentage_good).to eq 100
    end 

end 