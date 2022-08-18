class DiaryEntries
    def initialize(title, contents) 
        # fail "You haven't added a title and contents" unless title.nil? == false || contents.nil? == false
        @title = title
        @contents = contents
        @words_stored = 0
        @words_read = 0
    end
  
    def title
      # fail "It messed up." unless title.empty? == false
        return @title
    end
  
    def contents
      return @contents
    end
  
    def count_words
      @words_stored += @contents.split.count
      return @contents.split.count
    end
  
    def reading_time(wpm)
      return (@contents.split.size.to_f / wpm).ceil
    end
  
    def reading_chunk(wpm, minutes) 
      words = (wpm * minutes)
      chunk = []
      chunk << @contents.split[@words_read...(words + @words_read)]
      @words_read += words
      return chunk.join(" ")
    end
  end
