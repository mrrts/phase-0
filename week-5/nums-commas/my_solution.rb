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


# def separate_comma(num)
#   # Split digits into array
#   # Reverse the order of the digits so that we can begin iteration with the ones place
#   digits_reversed = num.to_s.split('').reverse

#   # Make an array to hold the digits and any inserted commas, still in reversed order
#   digits_reversed_with_commas = []

#   # Iterate through the digits starting with the ones place
#   # Use each_with_index to keep track of the current index in order to test which place we're on 
#   digits_reversed.each_with_index do |item, index|

#     # Push the digit into the final result array
#     digits_reversed_with_commas << item
    
#     # Insert a comma every three places 
#     #
#     # Test if a) the place (index + 1) is divisible by 3
#     # and b) that there is a digit that exists at the index beyond this one
#     if (index + 1) % 3 == 0 && digits_reversed[index + 1] != nil
#       # If both are true, insert a comma
#       digits_reversed_with_commas << ','
#     end
    
#   end

#   # Return the result array, but reverse it back to normal, 
#   # And join the digits and commas back into a single string
#   return digits_reversed_with_commas.reverse.join('')
# end




# 2. Refactored Solution (Same as initial solution, minus comments -- couldn't find new method to apply)



def separate_comma(num)
  digits_reversed = num.to_s.split('').reverse
  digits_reversed_with_commas = []
  digits_reversed.each_with_index do |item, index|
    digits_reversed_with_commas << item   
    if (index + 1) % 3 == 0 && digits_reversed[index + 1] != nil
      digits_reversed_with_commas << ','
    end   
  end
  return digits_reversed_with_commas.reverse.join('')
end



# 3. Reflection

# --- What was your process for breaking the problem down? What different approaches did you consider?

# I knew that I would use the split method to store the digits in an array, but at first, I had them in the correct first-to-last order. But since it makes most sense to count from the last place (the ones place) and move left (to the tens place, then the hundreds, etc), I decided to reverse the array before iterating over it with the .each method. Past that alteration, the rest proceeded as planned.

# --- Was your pseudocode effective in helping you build a successful initial solution?

# Yes, it helped me to visualize the logical flow before I began to write actual code. However, GitHub was down when I began the challenge, so I didn't have the proper my_solution file template to fill in, so I actually just began coding it and making comments before every step. Then, I extracted the comments and made my pseudocode. The process was a bit backwards for this one.


# --- What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

# I didn't use any new methods, although this was one of the first times I'd chained so many methods together. The .each_with_index is a method I've used before, but not often, so you could say that one was newish for me. I did need to consult the Ruby docs to remind myself whether I needed to define my value and index variables for .each_with_index as |value, index| or |index, value| (different order). It turns out it needs to be the former.

# --- How did you initially iterate through the data structure?

# Like I said in the earlier question, I originally was planning to iterate from the first digit to the last but found that it was much more sensible to start with the last digit and move backward, adding commas every third digit (if there was another one preceding it).

# --- Do you feel your refactored solution is more readable than your initial solution? Why?

# I couldn't find any methods that would add any brevity or readability to my initial solution... not saying that my initial solution is optimal... I'm just saying that I wasn't able to find an appropriate one. 