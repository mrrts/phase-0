# Leap Years

# I worked on this challenge [with Taylor Daugherty].

# Your Solution Below

def leap_year?(year)
  if year % 100 == 0 && year % 400 != 0
    return false
  elsif year % 4 != 0
    return false
  else
    return true
  end
end