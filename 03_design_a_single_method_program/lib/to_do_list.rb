
def to_do_list(string)
    fail "No input." if string.empty?
    if string.split.include?("#TODO")
        return true 
    else 
        return false
    end 
end
