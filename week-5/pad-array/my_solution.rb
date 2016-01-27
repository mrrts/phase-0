# Pad an Array

# I worked on this challenge with Ryan

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? We will pass in an array, the minimum size of the array, and an optional default value for padding.
# What is the output? (i.e. What should the code return?) New array equal to the original if minimum size is already met.
# => New array with padded values up to the minimum size if minimum size is not met. Padding values set to nil unless optional default argument is supplied.
# What are the steps needed to solve the problem?

# Define a method that accepts three arguments - an array, an integer, and an optional value with default set to nil.
# Set variable to store length of original array passed in
# Set up flow structure:
# => if the minimum size is equal to or less than the length of the array, do nothing
# => otherwise find the difference between minimum size and array, and add that number of padding values to the end of the array
# => return statement differs if destructive or not:
# => return the argument array if destructive, regardless if changed or not
# => return the local array if non destructive, regardless if changed or not

=begin
# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
	if min_size <= array.length
		return array
	else
		needed_pads = min_size - array.length
		needed_pads.times do
			array << value
		end
	end
	return array
end

def pad(array, min_size, value = nil) #non-destructive
	new_array = array.dup
	if min_size <= array.length
		return new_array
	else
		needed_pads = min_size - array.length
		needed_pads.times do
			new_array << value
		end
	end
	return new_array
end
=end

# 3. Refactored Solution

=begin
def pad!(array, min_size, value = nil) #destructive
	return array if min_size <= array.length
	needed_pads = min_size - array.length
	needed_pads.times do
		array << value
	end
	return array
end

def pad(array, min_size, value = nil) #non-destructive
	new_array = array.dup
	return new_array if min_size <= array.length
	needed_pads = min_size - array.length
	needed_pads.times do
		new_array << value
	end
	return new_array
end

=end


def pad!(array, min_size, value = nil)
	return array if min_size <= array.length
	needed_pads = min_size - array.length
	padding = Array.new(needed_pads, value)
	padding.each { |item| array << item }
	return array
end

def pad(array, min_size, value = nil)
	return array.dup if min_size <= array.length
	needed_pads = min_size - array.length
	padding = Array.new(needed_pads, value)
	return array + padding
end

p pad!([1, 2, 3], 10, "apple")
p pad([1, 2, 3], 10, "banana")

# 4. Reflection