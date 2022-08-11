
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
            i = 0
            k = 0
            (@music_list.count).times do
                sentence << " - #{@music_list.to_a[i][k]}: "
                i += 0
                k += 1
                sentence << "#{@music_list.to_a[i][k]}\n"
                i += 1
                k -= 1
            end 
            return sentence.join
        else 
        end 
    end 
end 