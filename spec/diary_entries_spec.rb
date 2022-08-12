require "diary_entries"

RSpec.describe DiaryEntries do
    # it "fails" do 
    #     entry = DiaryEntry.new(nil, 'nil')
    #     expect { entry }.to raise_error "You haven't added a title and contents"
    # end 
    it "returns the title of an entry" do
        entry = DiaryEntries.new("my_title", "my contents")
        expect(entry.title).to eq "my_title" 
    end 
    it "returns the contents of an entry" do
        entry = DiaryEntries.new("my_title", "my entry")
        expect(entry.contents).to eq "my entry"
    end 
    it "counts the words in an entry" do 
        entry = DiaryEntries.new("my_title", "my entry")
        expect(entry.count_words).to eq 2
    end 
end

