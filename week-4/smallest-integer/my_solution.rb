# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
# INITITAL SOLUTION:
# 
# def smallest_integer(list_of_nums)
#   # Your code goes here!
#   list_of_nums.sort.first
# end

# SOLUTION WITHOUT BUILT-IN METHODS:

def smallest_integer(list_of_nums)
	smallest = list_of_nums[0]
	list_of_nums.each do |num|
		smallest = num if num < smallest
	end
	smallest
end