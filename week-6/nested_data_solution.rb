# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================ albatross
p array[1][1][2][0]


#  ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 2
# ============================================================
# p hash[:outer][:inner]["almost"][:3]
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# number_array.each_with_index do |item, index|
#   if item.is_a? Array
#     item.map! {|i| i + 5 }
#   else
#     number_array[index] += 5
#   end
# end

# p number_array


number_array.map! {|item| (item.is_a? Array) ? (item.map {|i| i + 5}) : (item + 5) }

puts "Refactored:"
p number_array

# Bonus:

# def ly_appender(array)
#   array.each do |item|
#     if item.is_a? Array
#       ly_appender(item)
#     else
#       item << "ly"
#     end
#   end
# end

def ly_appender(array)
  array.each do |item|
    (item.is_a? Array) ? (ly_appender(item)) : (item << "ly")
  end
end

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

p ly_appender(startup_names)


## REFLECTION

# ---- What are some general rules you can apply to nested arrays?

# There is no limit to how many levels of complexity you can nest. Also, you can have a mixture of arrays
# and hashes. To access a deeply nested value, you can use bracket notation several times in succession. 


# ---- What are some ways you can iterate over nested arrays?

# You can still use the each method, but if you have arrays withing your array, you will need to have some sort of
# testing with IF/ELSE/etc to control what to do if your value itself is an array. 


# ---- Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why 
# did you decide that was a good option?

# We used a recursive solution for the bonus challenge, which was terrific. That wasn't a totally new method per se, but
# rather a method design strategy. I appreciate that recursion allows you to handle any unknown nesting depth. 
# We used the map and map! methods as well, which were useful in operating in the same way.






# My pair teaching me about recursion:
=begin

------------ 1mb
1st stack ly_appender array
------------ 1mb
2nd stack ly_appender new_array
------------ 1mb
3rd stack ly_appender new_array
------------ 1mb

writing a recursive
Have two components:
  Terminating base case for your recursive function to "end"
  A way for us to take a subset or a modification of the original input and return it into the original function.

n => 1 constant
n => n O(n) linear
n => n^2 O(n^2) exponential 
O(n!)
n => O(log(n))


def fib(x)
  if x == 0 
    return 0
  elsif x == 1
    return 1
  elsif x == 2
    return 2
  else
    return fib(x-1)+fib(x-2)
end

=end