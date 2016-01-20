
# I worked on this challenge [with Taylor Daugherty].


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
	if a + b > c and a + c > b and c + b > a 
		return true
	else
		return false
	end  
end