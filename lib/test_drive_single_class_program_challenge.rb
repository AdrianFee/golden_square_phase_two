class GrammarStats
    def initialize
      @pass = []
      @text = 0
    end
    def check(text)
       if text.start_with?(/\A[A-Z]/) && text.end_with?("?", "!", ".")
        @pass << text
        @text += text.split.length
        return true
       else
        false
       end
    end
    def percentage_good
        @pass.join 
        return (@pass[0].split(" ").length / @text) * 100
    end
end