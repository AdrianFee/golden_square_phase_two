require "count_words"

RSpec.describe "count_words" do 
    it "takes a string as an argument and returns the number of words in that string" do
        result = count_words("there are this many words")
        expect(result).to eq 5
    end 
    it "takes a string as an argument and returns the number of words in that string" do
        result = count_words("a b c")
        expect(result).to eq 3
    end 
    it "takes a string as an argument and returns the number of words in that string" do
        result = count_words("three words")
        expect(result).to eq 2
    end 
    it "takes a string as an argument and returns the number of words in that string" do
        result = count_words("ihnfonuibwncoinscnpiwnoeurnivp")
        expect(result).to eq 1
    end 
end 