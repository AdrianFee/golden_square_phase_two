class DiaryEntries
    def initialize(title, contents) 
        @title = title
        @contents = contents
        @entries = {title: contents}
        @words_read = 0
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
      chunk << @contents.split[@words_read...(words + @words_read)]
      @words_read += words
      return chunk.join(" ")
    end
  end
