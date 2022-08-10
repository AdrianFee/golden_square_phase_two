
def improve_grammar(string)
    fail "Not a sentence." if string.empty?
    if string.match?(/\A[A-Z]/) == true && (((string.chars[-1]) == "!") || ((string.chars[-1]) == ".") || ((string.chars[-1]) == "?")) == true
        return "Correct, well done."
    else 
        return "Incorrect grammar. Try again."
    end 
end 