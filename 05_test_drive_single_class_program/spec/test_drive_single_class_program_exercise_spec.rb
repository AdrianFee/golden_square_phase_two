require "test_drive_single_class_program_exercise"

RSpec.describe DiaryEntry do 
    it "creates diary entries" do
    diary_entry = DiaryEntry.new("title", "contents")
    expect(diary_entry.title).to eq "title"
    expect(diary_entry.contents).to eq "contents"
    expect(diary_entry.count_words).to eq 1
    expect(diary_entry.reading_time(200)).to eq 1
    expect(diary_entry.reading_chunk(200, 1)).to eq "contents"
    end 
end 