require "design_single_class_program_challenge"

RSpec.describe do 
    # context "when no artist has been added" do 
    #     it "fails" do
    #         new_songs = MyMusic.new("Adrian")
    #         expect {new_songs.add_song("Loco in Acapulco", " ")}.to raise_error "Don't forget to add the artist!"
    #     end 
    # end 
    context "when an artist and a song has been added" do 
        it "adds them to the list" do 
            new_songs = MyMusic.new("Adrian")
            result = new_songs.add_song("Loco in Acapulco", "Four Tops")
            expect(result).to eq "Hope you've been enjoying Four Tops!"
        end 
    end 
end 