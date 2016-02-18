# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

def super_fizzbuzz(array)
	array.map! do |x| 
		string = ''
		string += 'Fizz' if x % 3 == 0
		string += 'Buzz' if x % 5 == 0
		string.length > 0 ? string : x
	end
end

# p super_fizzbuzz([5, 4, 3, 5, 15, 6, 45, 23, 30])

# Refactored Solution


# Reflection