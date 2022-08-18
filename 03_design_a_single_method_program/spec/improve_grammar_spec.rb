require "improve_grammar"

RSpec.describe "improve_grammar method" do 
    context "given a string" do
        it "tells the user that the grammar is incorrect" do 
            result = improve_grammar("this is incorrect grammar.")
            expect(result).to eq "Incorrect grammar. Try again."
        end 
        it "tells the user that the grammar is correct" do 
            result = improve_grammar("There is nothing wrong with the grammar in this sentence.")
            expect(result).to eq "Correct, well done."
        end 
        it "tells the user that the grammar is correct" do 
            result = improve_grammar("THIS TEST SHOULD ALSO PASS...")
            expect(result).to eq "Correct, well done."
        end 
    end 
    context "given an emxpty string" do
        it "fails" do 
            expect { improve_grammar("") }.to raise_error "Not a sentence."
        end 
    end 
end 