require "to_do_list"

RSpec.describe "tests to_do_list method" do 
    context "given an empty string" do 
        it "fails" do 
            expect {to_do_list("")}.to raise_error "No input."
        end 
    end 
    
    context "given a string" do
        it "returns false if #TODO is not present" do
        result = to_do_list("#todo")
        expect(result).to eq false
        end 
        it "returns true if #TODO is present" do
        result = to_do_list("#TODO")
        expect(result).to eq true
        end 
        it "returns true if #TODO is present" do
        result = to_do_list("# TODO")
        expect(result).to eq false
        end 
    end 
end 