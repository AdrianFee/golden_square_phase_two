require "time_management"

RSpec.describe "checks the time_management method" do 
    it "returns zero" do 
        result = time_management("")
        expect(result).to eq "0 minutes"
    end
    it "returns the number of minutes taken to read a text" do 
        result = time_management("one " * 200)
        expect(result).to eq "1 minutes"
    end 
end 