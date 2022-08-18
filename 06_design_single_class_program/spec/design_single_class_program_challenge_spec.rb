require "design_single_class_program_challenge"

RSpec.describe do 
    context "when no artist has been added" do 
        it "fails" do
            new_songs = MyMusic.new("Adrian")
            expect {new_songs.add_song("Loco in Acapulco", nil)}.to raise_error "Don't forget to add the artist!"
        end 
        it "fails" do
            new_songs = MyMusic.new("Adrian")
            expect {new_songs.add_song(nil, "Four Tops")}.to raise_error "Don't forget to add the artist!"
        end 
    end 
    context "when an artist and a song has been added" do 
        it "adds them to the list" do 
            new_songs = MyMusic.new("Adrian")
            result = new_songs.add_song("Loco in Acapulco", "Four Tops")
            expect(result).to eq "Hope you've been enjoying Four Tops!"
        end 
    end 
    context "when several artists and songs have been added, returns a formatted list" do 
        it "returns a list of artists and songs" do 
            new_songs = MyMusic.new("Adrian")
            new_songs.add_song("Loco in Acapulco", "Four Tops")
            new_songs.add_song("Round Round", "Sugababes")
            new_songs.add_song("Bohemian Rhapsody", "Queen")
            expect(new_songs.all_my_music).to eq "Here's what you've listened to so far: - Four Tops: Loco in Acapulco\n - Sugababes: Round Round\n - Queen: Bohemian Rhapsody\n"
        end 
    end 
end 