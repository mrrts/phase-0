# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of numbers
# Output: the sum of the numbers in the array
# Steps to solve the problem.

# Create a variable equal to the count of items in the array
# If the count == 1, return the first item in the array
# Make a second variable to be the running sum of the items in the array
#  - Initial value: the first item + the second item
# Until the count variable is equal to the count of items
# 	Add the next item in the array to the running total
# 	Decrease the count variable by 1
# End WHILE



# 1. total initial solution

# def total (arr)
# 	if arr.count == 1 
# 		return arr[0]
# 	elsif arr.count == 0
# 		return 0
# 	else
# 		sum = arr[0]
# 		i = 1
# 		while i < arr.count
# 			sum = sum + arr[i]
# 			i = i + 1
# 		end
# 	end
# 	return sum
# end

# 3. total refactored solution


def total (arr)
	sum = 0
	arr.each {|item| sum += item}
	return sum
end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of words
# Output: sentence with first word capitalized, end with period
# Steps to solve the problem.

# Capitalize the first item in the array
# Print each item with a space in between
# Print a period

# 5. sentence_maker initial solution

# def sentence_maker (arr) 
# 	sentence = arr[0].capitalize 
# 	i = 1
# 	while i < arr.count
# 		sentence = sentence + " " + arr[i].to_s
# 		i = i + 1
# 	end
# 	sentence = sentence + "."
# 	return sentence
# end

# 6. sentence_maker refactored solution

def sentence_maker (arr)
	arr.join(' ').capitalize << '.'
end