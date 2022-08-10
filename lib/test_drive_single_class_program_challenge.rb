class GrammarStats
    def initialize
      @passed = []
      @count = 0
    end
  
    def check(text) 
      @count += text.split.count
        if text.start_with?(/\A[A-Z]/) && text.end_with?("!", ".", "?")
            @passed << text
            return true
        else 
            return false
      end 
    end
  
    def percentage_good
        return ((@passed / @count) * 100)
    end
end