# Calculate the mode Pairing Challenge

# I worked on this challenge [with Zach Barton]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? A single array of objects
# What is the output? (i.e. What should the code return?) An array that lists the most frequent value(s) in the original array passed in
# What are the steps needed to solve the problem?
# Define a method taking an array of objects as an argument
# Define an empty hash
# Iterate through the argument array
# 	If the hash doesn't contain a key that is equal to the current argument-arry object, add it as a new key
# 	Assign that key a default value of 1
# 	If the key already exists, increase its value by 1 (keeping count of frequency)
# Define an empty array to hold the highest-frequency keys
# Sort the hash by the values of the key-value pairs
# Reverse the sorted hash so that the "winner" is first
# Add this first key to the "winner" array 
# Test if other key-value pairs have the same value (frequency) as the winner
# 	If it has the same value:
# 		Push it into the winner array 
# 	Else
# 		Do nothing
# Return the winner array


# 1. Initial Solution

# def mode (arr)
# 	frequencies = {}
# 	arr.each do |obj|
# 		if frequencies[obj]
# 			frequencies[obj] += 1
# 		else
# 			frequencies[obj] = 1
# 		end
# 	end
# 	winners = []
# 	highest_frequency = 1
# 	frequencies.each do |item, freq|
# 		if freq > highest_frequency
# 			highest_frequency = freq
# 		end
# 	end
# 	frequencies.each do |item, freq|
# 		if freq == highest_frequency
# 			winners << item
# 		end
# 	end
# 	return winners
# end

# my_arr = [1, 2, 3, 3, 3, 2, 0, 'taco', 'taco', 'taco']
# p mode(my_arr)

# 3. Refactored Solution

def mode (arr)
	frequencies = {}
	arr.each do |obj|
		frequencies[obj] = arr.count(obj)
	end
	modes = []
	highest_frequency = frequencies.max_by {|k, v| v}[1] # max_by returns [key, value] array
	frequencies.each do |item, freq|
		modes << item if freq == highest_frequency
	end

	# OR THIS:
	# modes = frequencies.collect {|k, v| k if v == highest_frequency}.select {|i| i != nil}
	# (Omitted due to unreadability)

	return modes
end

 # my_arr = [1, 2, 3, 3, 3, 2, 0, 'taco', 'taco', 'taco']
 # p mode(my_arr)

# 4. Reflection


# --- Which data structure did you and your pair decide to implement and why?

# We used a hash to store key-value pairs of the array items and their respective frequencies. A hash was the most appropriate data structure in this case because we were dealing with pairs of information that needed to be associated with each other. When keeping a list of the resulting "winners", or "modes", however, we stored those hash keys with the greatest value (greatest frequencies) into an array, which was the return format specified in the instructions.

# --- Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

# This one required more steps, so it took a little more thought during the pseudocode stage. At first we thought we knew the pathway toward a solution, but found that it would require a few different collection objects (two arrays and a hash) and therefore a few different iteration loops over those separate objects. 


# --- What issues/successes did you run into when translating your pseudocode to code?

# It was a little confusing to keep track of the information being returned in the separate expressions. This experience made a great case for why one should always use good, descriptive variable names.

# --- What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# We only used the .each method initially, then branching into if/else statements. When we refactored, we looked at several Enumerable methods, and were able to figure out how to use .count and .max_by, which were a little tricky and required some IRB experimentation to find out what they returned. For instance, max_by returned an array with the pair's key as the first item and its value as the second item; it did not return the pair formatted as a {key=>value} hash as we had expected. We also looked at .collect, .select, and .sort_by, but we wound up not using them. 

