# Pad an Array

# I worked on this challenge with Zach B

# I spent [1] hours on this challenge.


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


# --- Were you successful in breaking the problem down into small steps?

# Yes, I felt we were successful. I am still getting used to articulating the logical steps without using the method names, which is the recommendation when writing pseudocode. It will require practice to grow my vocabulary and find the right "logical reasoning" words to describe these steps. Aside from the actual wording, my partner and I were successful in breaking the problem down into code-able steps, and this was confirmed by the fact that our final solution followed the pseudocoded steps. Mostly. 

# --- Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

# We did have some difficulty in translating the pseudocode into code because we were assuming that certain methods worked in a certain way, and we learned otherwise once we began coding and testing. The steps were generally correct, but we still needed to take time to think through the logic as it pertained to Ruby and return values, etc. 


# --- Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

# Our initial solution mostly passed, but my pair and I were surprised by some of the behavior of certain array concatenation techniques. For instance, when we added (+) an array to our first array, the first array was saved with a new object_id, even though we saved it into the same variable name. This was desired behavior for the non-destructive method. However, when we created the destructive pad! method, we found that "push"-ing a new value into the array preserved the array's original object_id, meaning it altered the same object (ergo destructive). 

# --- When you refactored, did you find any existing methods in Ruby to clean up your code?

# We already knew about the push and each methods, but we found the non-destructive "dup" method, which duplicates the object into an identical object with a different object_id. We used this to return a copy of the array without altering the original array itself.

# --- How readable is your solution? Did you and your pair choose descriptive variable names?

# We used readable variable names like "padding_needed" and "min_size". We could have renamed "padding" to "padding_items", perhaps, if we wanted to be a little more explicit. We also discovered some ideas for how we could reduce our code to far fewer lines, but elected to aim for clear readability over code-length optimization. 

# --- What is the difference between destructive and non-destructive methods in your own words?

# A destructive method mutates one of the objects passed in as an argument, and it does so on that exact object, with the same object_id. The method loses, or destroys, the original value of the object. 
# A non-destructive method can still mutate one of the argument objects, but it will do so without changing the exact object with the same object_id. Instead, it will perform the mutation on a copy of that object by either assigning the object to a new variable name or by using an operator or method that returns a new object (with a new object_id).