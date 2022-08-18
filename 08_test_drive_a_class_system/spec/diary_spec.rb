require "diary"

RSpec.describe Diary do
    context "initially" do 
        it "is empty" do
            diary = Diary.new 
            expect(diary.all).to eq []
        end 
    end 
    context "adding entries" do 
        # it "adds an entry" do 
        #     diary = Diary.new
        #     expect(diary.add)
        # end 
    end 

end 