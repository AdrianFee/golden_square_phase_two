
def time_management(string)
    if string.split.count >= 200
        return "#{string.split.count/200} minutes"
    elsif string.split.count < 200
        return "0 minutes"
    else
    end 
end 