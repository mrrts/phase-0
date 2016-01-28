# Die Class 1: Numeric

# I worked on this challenge [by myself,]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Initialize new instance of Die object with number of sides as a parameter
# Output: sides method returns number of sides; roll method returns random number in range 1 to total_sides
# Steps:

# Define initialization method with number of sides as argument
# 	If number of sides is less than 1, raise error
# 	Define a number-of-sides instance variable set to the argument value (as an integer)

# Define sides method
# 	Simply return the value of the number-of-sides instance variable

# Define roll method
# 	Generate a random number, using 1 as the inclusive lower boundary 
# 	and the number-of-sides instance variable as the inclusive upper boundary


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     raise ArgumentError.new("The die must have at least 1 side") if sides.to_i < 1
#     @sides = sides.to_i
#   end

#   def sides
#     return @sides
#   end

#   def roll
#     num = Random.new
#     return num.rand(1..@sides)
#   end
# end



# 3. Refactored Solution

class Die
  def initialize(sides)
    raise ArgumentError.new("The die must have at least 1 side") if sides.to_i < 1
    @sides = sides.to_i
  end

  def sides
    return @sides
  end

  def roll
    num = Random.new
    return num.rand(1..@sides)
  end
end


# 4. Reflection

# --- What is an ArgumentError and why would you use one?

# ArgumentError is a class whose instances output an error message when passed as an argument to the raise method. It is intended to be used with some sort of conditional logic that tests the value of a passed-in argument and whether that value is appropriate for the way it will be used in the method.


# --- What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# This was my first time using the "raise" method and first time creating a new ArgumentError object to go with it. I also used the Random class and its rand method to simulate the die roll. I needed to research the syntax for raise and Random/rand, and I needed to research whether the range passed to rand would include its upper and lower bounds. I used irb to test the rand functionality.



# --- What is a Ruby class?

# A Ruby class can be thought of as a blueprint for an object. It defines what an object in that class "knows" (its instance variables, which start with @) and what it can "do" (its methods). The class can also have its own properties, and those are called class variables (start with @@) and class methods ("def self.method_name", etc). Class variables and methods do not belong to the individual instances.


# --- Why would you use a Ruby class?

# A class helps the programmer avoid repetition by abstracting the shared properties of frequently-used objects into one reusable definition. This allows many different instances of the same class to perform the same methods while maintaining different per-instance properties. Using its class variables and class methods will also help the programmer keep track of the collection of instances and process information about the group and its members.


# --- What is the difference between a local variable and an instance variable?

# A local variable is defined within a method and can only be accessed within that method (unless its value is passed to another method as an argument). An instance variable is available to all methods within a class and is defined differently for each instance. 


# --- Where can an instance variable be used?

# An instance variable can be used in any of the methods within the class for which it is defined. If it is defined as an attribute that can be accessed outside of the class, with attr_accessor or via a method that simply returns its value, then you can access it with the dot operator on the object variable: ("my_die = Die.new(4); my_die.sides" returns 4). 