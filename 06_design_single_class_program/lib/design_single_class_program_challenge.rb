
class MyMusic
    def initialize(name)
        @name = name
        @music_list = {}
    end 
    def add_song(song, artist)
        fail "Don't forget to add the artist!" if ((song.nil?) || (artist.nil?))
        @music_list[artist] = song
        return "Hope you've been enjoying #{artist}!"
    end 
    def all_my_music
        if @music_list.count == 0
            return "You haven't listened to anything yet."
        elsif @music_list.count != 0
            sentence = ["Here's what you've listened to so far:"]
            sentence << (@music_list.map{|k,v| " - #{k}: #{v}\n"})
            return sentence.join
        else 
        end 
    end 
end 