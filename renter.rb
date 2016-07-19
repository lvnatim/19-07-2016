# must be baller and either furnished or rent cheaper than 2100
def rent?(baller, furnished, rent)
  baller && (furnished || rent < 2100) ? true : false
end

# test cases
puts rent?(true, true, 2200) # should return true
puts rent?(true, true, 2000) # should return true
puts rent?(true, false, 2000) # should return true
puts rent?(true, false, 2200) # should return false
puts rent?(false, true, 2000) # should return false
puts rent?(false, false, 2200) # should return false
