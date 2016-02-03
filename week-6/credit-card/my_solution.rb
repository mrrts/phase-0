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