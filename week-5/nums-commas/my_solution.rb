# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Integer of any size
# What is the output? (i.e. What should the code return?) It should return the integer as a string with all the appropriately placed commas
# What are the steps needed to solve the problem?

  # Split digits into array
  # Reverse the order of the digits so that we can begin iteration with the ones place
  # Make an array to hold the digits and any inserted commas, still in reversed order
  # Iterate through the digits starting with the ones place
  # Use each_with_index to keep track of the current index in order to test which place we're on 
  # Push the digit into the final result array
  # Insert a comma every three places 
  #
  # Test if a) the place (index + 1) is divisible by 3
  # and b) that there is a digit that exists at the index beyond this one
  # If both are true, insert a comma
  # Return the result array, but reverse it back to normal, 
  # And join the digits and commas back into a single string

  
# 1. Initial Solution


def separate_comma(num)
  # Split digits into array
  # Reverse the order of the digits so that we can begin iteration with the ones place
  digits_reversed = num.to_s.split('').reverse

  # Make an array to hold the digits and any inserted commas, still in reversed order
  digits_reversed_with_commas = []

  # Iterate through the digits starting with the ones place
  # Use each_with_index to keep track of the current index in order to test which place we're on 
  digits_reversed.each_with_index do |item, index|

    # Push the digit into the final result array
    digits_reversed_with_commas << item
    
    # Insert a comma every three places 
    #
    # Test if a) the place (index + 1) is divisible by 3
    # and b) that there is a digit that exists at the index beyond this one
    if (index + 1) % 3 == 0 && digits_reversed[index + 1] != nil
      # If both are true, insert a comma
      digits_reversed_with_commas << ','
    end
    
  end

  # Return the result array, but reverse it back to normal, 
  # And join the digits and commas back into a single string
  return digits_reversed_with_commas.reverse.join('')
end

p separate_comma(10000000000000009880000)



# 2. Refactored Solution




# 3. Reflection




