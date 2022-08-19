class Diary
    def initialize
      @all_entries = []
    end
  
    def add(entry)
      @all_entries << entry
    end
  
    def all
      @all_entries
    end
  
    def count_words
      total_count = 0
       @all_entries.each do |entry| 
        total_count += entry.contents.split.size
       end 
       return total_count
    end
  
    def reading_time(wpm) 
      return (count_words.to_f / wpm.to_f).ceil
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
      can_read = wpm * minutes # minutes * wpm = number of words user can read
      array = Array.new
      differences = []
      @all_entries.each_with_index do |entry, index|
        differences << ((entry.contents.split.length) - (can_read)).abs
      end 
      index = differences.each_with_index.min[1]
      return @all_entries[index].contents
    end
  end