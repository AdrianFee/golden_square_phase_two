class DiaryEntry
    def initialize(title, contents) # title, contents are strings
        @title = title
        @contents = contents
    end
  
    def title
        return @title.to_s
    end
  
    def contents
      return @contents
    end
  
    def count_words
      return contents.split.count
    end
  
    def reading_time(wpm) 
        return (@contents.length.to_f / wpm).ceil
    end

    def reading_chunk(wpm, minutes) 
        words = wpm * minutes 
        chunk = []
        chunk << contents.split[0..words]
        return chunk.join
    end
  end