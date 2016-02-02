# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of values that represents the sides of the die
# Output: #sides returns the number of sides; #roll returns one of the sides
# Steps:
	# Initialize a new instance of the Die class that receives array of values as an argument
	# 	Test that the argument is an array, otherwise raise an error
	# 	Test that the argument includes more than just one side, otherwise raise an error
	# 	Convert all of the array values into strings and save that into an instance variable of die sides
	# Define a method to return the number of sides
	# 	Return the length of the sides array
	# Define a method to roll the die
	# 	Return a randomly selected side from the die


# Initial Solution

# class Die
#   def initialize(labels)
#   	raise ArgumentError.new("Argument must be an array") unless labels.is_a? Array
#   	raise ArgumentError.new("The die must have at least one side") if labels.length < 1
#   	@sides = labels.map {|label| label.to_s}
#   end

#   def sides
#   	@sides.length
#   end

#   def roll
#   	random_num = Random.new.rand(0...sides)
#   	@sides[random_num]
#   end
# end

# my_die = Die.new([3, 5, 4, 6])
# p my_die.sides
# p my_die.roll


# Refactored Solution


class Die
  def initialize(labels)
  	raise ArgumentError.new("Argument must be an array") unless labels.is_a? Array
  	raise ArgumentError.new("The die must have at least one side") if labels.length < 1
  	@sides = labels.map {|label| label.to_s}
  end

  def sides
  	@sides.length
  end

  def roll
  	@sides.sample
  end
end





## Reflection


# --- What were the main differences between this die class and the last one you created in terms of
#  implementation? Did you need to change much logic to get this to work?

# There was hardly any difference, but I did use the .map method to convert all of the values into strings and 
# check if the argument was an array. There was no other difference, except that this die class accepts a sides 
# array with only one value, whereas the other did not.


# --- What does this exercise teach you about making code that is easily changeable or modifiable? 

# I know that using the class will help me to maintain DRY code, and so I won't have to define these methods 
# every time I want to find the values of a new die with a different number of sides. I also see that a single,
# sufficiently abstracted class can be used in several ways without much modification. If the underlying
# principle is the same, well-abstracted code can be reused, simply passing new initialization values,
#  which saves a lot of time.  


# --- What new methods did you learn when working on this challenge, if any?

# During peer reviews for the previous Die class challenge, I found a solution using the .sample method, which
# accomplishes the random-selection functionality with a single, succint method call. 


# --- What concepts about classes were you able to solidify in this challenge?

# In my initial solution I used a range to generate my random number, and I used the return value of the class's
# .sides method to define the range's upper bound. This served as a practical illustration of how a class method
# can use other class methods. 