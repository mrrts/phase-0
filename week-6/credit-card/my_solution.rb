# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: string of numbers
# Output: True or false
# Steps: 
  #Define method for credit card
    #accepts argument of credit card number
    #split the string into new array as instance variable
  #Define method to check credit card
    # Make all the values that have even index (or 0) double value, add to new array
    # All odd values, retain value add to array
    #iterate through array, search for two digit numbers, split - add flatten
    # add all items in array
    # check % 10 == 0
      #return true or false




# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
  
#   def initialize(cc_num)
#     raise ArgumentError.new("Must be 16 digits!") if cc_num.to_s.length != 16
#     @cc_num = cc_num.to_s.split('').map {|item| item.to_i }
#   end
  
#   def check_card
#     @cc_num.each_with_index do |item, index|
#       if index.even?
#         @cc_num[index] *= 2
#       end
#     end
#     @cc_num.each_with_index do |item, index|
#       if item > 9
#         @cc_num[index] = item.to_s.split('').map! {|x| x.to_i}
#       end
#     end
#     @cc_num.flatten!
#     return @cc_num.inject {|cumulative, item| cumulative + item } % 10 == 0
#   end
# end


# p card = CreditCard.new("44080412345679000")
# p card.check_card

# Refactored Solution
class CreditCard
  
  def initialize(cc_num)
    raise ArgumentError.new("Must be 16 digits!") if cc_num.to_s.length != 16
    @cc_num = cc_num.to_s.split('').map(&:to_i)
  end
  
  def check_card
    @cc_num.each_with_index do |item, index|   
        @cc_num[index] *= 2 if index.even?
    end
    @cc_num.each_with_index do |item, index|
        @cc_num[index] = item.to_s.split('').map(&:to_i) if item > 9
    end
    @cc_num.flatten!.inject {|sum, item| sum + item} % 10 == 0
  end
  
end

p card = CreditCard.new("4408041234567901")
p card.check_card


# Reflection

# --- What was the most difficult part of this challenge for you and your pair?

# We kept trying to use string methods on integers, so it took a bit of head scratching and
# irb-testing to realize that we needed to convert integers to strings before we used string
# methods like .split. 


# --- What new methods did you find to help you when you refactored?

# We used the flatten! destructive method because the prior step split two-digit numbers into an array of 2
# single-digit numbers, which meant that there were nested arrays. In order to facilitate finding the sum of
# all of the array values, it made more sense to flatten the array first. We also used the .inject method
# to find the sum of the array values because that method performs the same operation on each value while storing
# in a separate variable the cumulative value so far. We also used the even? method to find our even-numbered 
# indexes. 


# --- What concepts or learnings were you able to solidify in this challenge?

# We learned about using the pretzel+symbol syntax with the map method:  map(&:to_i). We also got practice 
# with the each_with_index iterator.