# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: initialization takes an integer that will be the correct answer, can be passed as a random number
# Output: A symbol evaluating the guess (low, high, correct) and a boolean whether the game is solved (true, false)
# Steps: 

# Initialize the guessing game, passing an integer as an answer to the game
# 	Set an instance variable equal to the answer
# 	Set an instance variable, boolean false, whether the puzzle has been solved
# Define a guess method that accepts an integer as an argument
# 	IF the integer is less than the answer
# 		Return a "low" statement as a symbol
# 		Set the solved instance variable to false
# 	IF the integer is greater than the answer
# 		Return a "high" statement as a symbol
# 		Set the solved instance variable to false
# 	ELSE IF the integer is equal to the answer
# 		Return a "correct" statement as a symbol
# 		Set the solved instance variable to true
# Define a solved? method that takes zero arguments
# 	Return the boolean value of the solved instance variable




# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     raise ArgumentError.new("The answer must be an integer") unless answer.is_a? Integer
#     @answer = answer || rand(100)
#     @solved = false
#   end

#   def guess(guess)
#   	raise ArgumentError.new("You must guess an integer") unless guess.is_a? Integer
#   	@solved = false
#     if guess == @answer
#       @solved = true
#       return :correct
#     guess < @answer? return :low : return :high
#   	if guess < @answer
#   		:low
#   	elsif guess > @answer
#   		:high
#   	else
#   		@solved = true
#   		:correct
#   	end
#   end

#   def solved?
#   	@solved
#   end

#   def run
#   	puts "Guess a number from 0 to 100"
#   	response = gets.chomp
#   	guess(response.to_i)
#   	until solved?
#   		puts "Sorry, your guess was #{guess(response.to_i)}. Try again."
#   		response = gets.chomp
#   		guess(response.to_i)
#   	end
#   	puts "You win!"
#   	run
#   end

# end

# game = GuessingGame.new rand(100)

# game.run






# Refactored Solution


class GuessingGame
  
  def initialize(answer)
    raise ArgumentError.new("The answer must be an integer") unless answer.is_a? Integer
    @answer = answer
    @solved = false
  end

  def guess(guess)
    raise ArgumentError.new("You must guess an integer") unless guess.is_a? Integer
    @solved = (guess == @answer) ? true : false
    return :correct if guess == @answer
    return (guess < @answer) ? (:low) : (:high)
  end

  def solved?
    @solved
  end

  def run
    first_try, @solved, result = true, false, nil
    until solved?
      puts (first_try ? "Guess a number 0-100" : "Your guess was #{result}. Try again.")
      result = guess(gets.chomp.to_i)
      first_try = false
    end
    puts "You win! Play again? (y/n)"
    (@answer = rand(100); run) if gets.chomp == 'y'
    return
  end

end

# game1 = GuessingGame.new rand(100)
# game1.run



# Reflection

# ---- How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

# The methods describe behaviors and abilities that all instances share, but the instance variables represent
# the information that is specific to the unique representative of the class. The dogs will all have a bark
# method, but each individual dog will have its own age, gender, breed, and name, for example.


# ---- When should you use instance variables? What do they do for you?

# Instance variables should be used any time you make a new representative (instance) of the class. They are 
# pieces of information specific to that particular instance. They preserve information across the separate
# class methods, so using the dog example again: if you have a bark method for all dogs, you could have it 
# output "[Dog's name] says woof!" and the dog's name would be stored in an instance variable.


# ---- Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

# Flow can be controlled through if/elsif/else/unless branches, through loop statements like until/while/loop, and also
#   iterators like each. The flow control branched off many different return values, so in the refactoring stage especially,
#   it was a challenge to keep track of what the last evaluated line would be in the different if/else cases.
#   I did get a lot of practice using the ternary operator during the refactoring stage, and it was a challenge to figure out
#   how much that syntax can be used without sacrificing readability -- not sure i have the most readable refactor here.


# ---- Why do you think this code requires you to return symbols? What are the benefits of using symbols?

# Symbols are good to use in situations where you are using values that will never be altered in your program. Indeed,
# they cannot be altered at runtime. 
# You're generating new objects when you keep using the same string over and over, but with the symbol, it's constantly
# the same object, with the same object_id. Therefore, if you use the symbol for a value that appears
# multiple times in your program, it'll always be the exact same object, and this can save performance.