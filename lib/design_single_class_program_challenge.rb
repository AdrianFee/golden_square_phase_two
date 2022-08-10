
class MyMusic
    def initialize(name)
        @name = name
        @music_list = {}
    end 

    def add_song(song, artist)
        # song = nil 
        # artist = nil
        # fail "Don't forget to add the artist!" if ((song.nil? == true) || (artist.nil? == true))
        @music_list[artist] = song
        return "Hope you've been enjoying #{artist}!"
    end 
end 