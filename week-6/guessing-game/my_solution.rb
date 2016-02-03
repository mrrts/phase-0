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

class GuessingGame
  def initialize(answer)
    raise ArgumentError.new("The answer must be an integer") unless answer.is_a? Integer
    @answer = answer || rand(100)
    @solved = false
  end

  def guess(guess)
  	raise ArgumentError.new("You must guess an integer") unless guess.is_a? Integer
  	@solved = false
  	if guess < @answer
  		:low
  	elsif guess > @answer
  		:high
  	else
  		@solved = true
  		:correct
  	end
  end

  def solved?
  	@solved
  end

  def run
  	puts "Guess a number from 0 to 100"
  	response = gets.chomp
  	guess(response.to_i)
  	until solved?
  		puts "Sorry, your guess was #{guess(response.to_i)}. Try again."
  		response = gets.chomp
  		guess(response.to_i)
  	end
  	puts "You win!"
  	run
  end

end

game = GuessingGame.new rand(100)

game.run






# Refactored Solution






# Reflection