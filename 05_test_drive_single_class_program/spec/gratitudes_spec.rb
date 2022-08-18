require "gratitudes"

RSpec.describe Gratitudes do 
    it "formats the gratitudes" do
        new_gratitude = Gratitudes.new 
        new_gratitude.add("thank you")
        new_gratitude.add("cheers")
        result = new_gratitude.format
        expect(result).to eq "Be grateful for: thank you, cheers"
    end 
    it "formats the gratitudes" do
        new_gratitude = Gratitudes.new 
        new_gratitude.add("horses")
        new_gratitude.add("large chandeliers")
        result = new_gratitude.format
        expect(result).to eq "Be grateful for: horses, large chandeliers"
    end 
end 