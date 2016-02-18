# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode



# Initial Solution

def is_fibonacci?(num)
	a, b, c = 0, 1, 0
	while c <= num
		c = a + b
		return true if c == num 
		a, b = b, c
	end
	return false
end


def print_fibonacci(limit)
	a, b, c = 0, 1, 0
	puts a, b
	while c <= limit 
		(a + b > limit) ? (return) : (puts c = a + b)
		a, b = b, c
	end
end


# Refactored Solution

# Reflection