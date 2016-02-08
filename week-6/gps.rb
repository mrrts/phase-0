# This pad is reserved for Spencer of the Sea Lions 2016

# Your Names
# 1)Spencer
# 2)Ryan

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# def serving_size_calc(item, num_of_ingredients)
#   cookbook = {"cookie" => 1, "cake" =>  5, "pie" => 7}
# #   error_counter = 3

# #   cookbook.each do |food|
# #     p food
# #     p cookbook[food]
# #     if cookbook[food] != cookbook[item]
# #       error_counter += -1
# #     end
# #   end
#   #cookbook loop iterates through the cookbook
#   #looks at each key/value pair, tries to figure out if item is in the cookbook
#   # trying to get the error counter to 0
#   #Should be: if item doesn't exist, raise error

#   raise ArgumentError.new("#{item} is not a valid input") if !cookbook.has_key?(item)

#   serving_size = cookbook[item]
#   remaining_ingredients = num_of_ingredients % serving_size

#   #getting the num_of_ingredients, trying to tell us 
#   #serving_size = cookbook[item]
#   #remaining_ingredients tells us how many ingredients are left over after making as many of a particular food as we can
  
#   result = "You can make #{num_of_ingredients / serving_size} #{item}"
  
#   result += ", and you have #{remaining_ingredients} leftover ingredient#{(remaining_ingredients > 1) ? "s" : ""}." if remaining_ingredients != 0
#      # result += (remaining_ingredients > 1) ? "ingredients." : "ingredient."
#     #if < 5 && 1< make three cookies 
  
#   return result
# end



def serving_size_calc(item, num_of_ingredients)
  cookbook = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  raise ArgumentError.new("#{item} is not a valid input") if !cookbook.has_key?(item)
  serving_size = cookbook[item]
  remaining_ingredients = num_of_ingredients % serving_size
  result = "You can make #{num_of_ingredients / serving_size} #{item}"  
  result += ", and you have #{remaining_ingredients} leftover ingredient#{(remaining_ingredients > 1) ? "s" : ""}." if remaining_ingredients != 0
  return result
end


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# ---- What did you learn about making code readable by working on this challenge?

# The first and most important step is to make sure you know what the code is trying to do. Once you understand
#   that, then you can go through and write the code in a better, more readable way.


# ---- Did you learn any new methods? What did you learn about them?

# We needed to find out if a certain key was present in our hash, so we tried several different ways:
# - our_hash.values.include?(item)
# - our_hash.include?(item)
# - our_hash.has_key?(item)
# We came to the second solution after we realized with help from our guide that hashes have their own include? method. 
# But he pointed us to the has_key? method after that. All three of these solutions return the same thing. 
# We ultimately used the third option because it was the most descriptive of what we were seeking. 

# ---- What did you learn about accessing data in hashes? 

# The loop in the initial solution iterated through the hash using only one variable between the pipes, which represents
# each key-value pair as an array of two items: the key and the value. I didn't know it was possible to only use one variable
# for hash iteration. 


# ---- What concepts were solidified when working through this challenge?

# We got a lot of practice in using the ternary operator, which I really enjoy for some reason, and also, hearing my 
# ideas with my pair's and guide's ideas really drove home that there are usually several ways to achieve a working
# solution in Ruby. I thought the refactoring was the most enriching part of this challenge. 
