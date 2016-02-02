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





# Reflection