class LetterCounter
    def initialize(text)
      @text = text
    end
  
    def calculate_most_common()
      counter = Hash.new(0)
      # hash containing the letter (key) and the number of occurences (value)
      most_common = nil
      # the current most common letter
      most_common_count = 0
      # how many of the current most common letter
     
      @text.chars.each do |char|

        next unless is_letter?(char)
        # keep going unless you hit a letter
        counter[char] += 1
        if counter[char] > most_common_count
          # if the hash "counter" contains this character and the value is higher than 
          # the current most_common_count
          most_common = char
          # most_common will be overwritten with the current character
          most_common_count = counter[char]
          # most_common_count will be incremented by the value in the hash for that character

        end
      end
      return [most_common_count, most_common]
    end
  
    private
  
    def is_letter?(letter)
      return letter =~ /[a-z]/i
    end
  end
  
  counter = LetterCounter.new("Digital Punk")
  p counter.calculate_most_common
  
  # Intended output:
  # [2, "i"]