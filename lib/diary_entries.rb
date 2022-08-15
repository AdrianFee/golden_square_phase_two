class DiaryEntries
    def initialize(title, contents) 
        fail "You haven't added a title and contents" if ((title.nil? == true) || (contents.nil? == true))
        @title = title
        @contents = contents
    end
  
    def title
        return @title
    end
  
    def contents
      return @contents
    end
  
    def count_words
      return @contents.split.count
    end
  
    def reading_time(wpm)
      return (@contents.split.size.to_f / wpm).ceil
    end
  
    def reading_chunk(wpm, minutes) 
      words = (wpm * minutes)
      chunk = []
      read_so_far = []
      to_chunk = @contents.split 
      to_chunk.each do |the_word|
        if chunk.count == words 
          return chunk.join(" ")
          # read_so_far << the_word
        else 
          chunk << the_word
        end 
      end 
    end

  end


# if read_so_far.include?(the_word)
#   next 
# else 
#   if chunk.count == words 
#     return chunk.join(" ")
#     read_so_far << the_word
#   else 
#     chunk << the_word
#   end 
# end 