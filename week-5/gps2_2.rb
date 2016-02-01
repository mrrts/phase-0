# # Method to create a list
# # input: string of items separated by spaces (example: "carrots apples cereal pizza")
# # steps: 
#   # create hash for list items and quantity
#   # iterate of string and turn into array
#   # each array item becomes key in hash. default value is set to 1
#   # set default quantity
#   # print the list to the console [can you use one of your other methods here?]
# # output: [what data type goes here, array or hash?]
# def create_list(list)
#   grocery_hash = Hash.new(1)
#   list = list.split(' ')
#   list.each do |x|
#     grocery_hash[x]=1
#   end
#   p grocery_hash
# end
# list = create_list("carrots apples cereal pizza")
# # Method to add an item to a list
# # input: grocery hash, item name, and optional quantity
# # steps:define method that takes grocery hash item string and integer for quantity
# # assign value from that key in hash to integer quantity
# # output:updated grocery list hash
# def add_item(g_hash,new_item,quantity = 1)
#   g_hash[new_item] = quantity
# end

# add_item(list,"bannana")

# p list
# # Method to remove an item from the list
# # input:take hash, item to remove
# # steps:delete key, value pair that has specified item as key
# # output: updated hash
# def remove_item(g_hash,item)
#   g_hash.delete(item)
# end

# remove_item(list,"apples")
# p list
# # Method to update the quantity of an item
# # input:hash, item, and integer quantity
# # steps:set value for key that equals item to new quantity
# # output:updated hash
# def update_quantity(hash, item, quantity)
#   hash[item] = quantity
# end
# update_quantity(list, "cereal", 13)
# p list
# # Method to print a list and make it look pretty
# # input:grocery hash
# # steps:
# # iterate through key value pairs in hash
# #print out key value pairs in presentable string form
# # output:presentable strings
# def print_list(hash)
#   hash.each do |x,v|
#     puts "the item is #{x} and the quantity is #{v}."
#   end
# end
# print_list(list)
  
  
# REFACTOR  
def create_list(list)
  g_hash = Hash.new(1)
  list = list.split(' ')
  list.each do |item|
    g_hash[item]=1
  end
  print_list(g_hash)
  return g_hash
end

def add_item(g_hash,item,quantity = 1)
  g_hash[item] = quantity
  puts "#{item} was added!"
  print_list(g_hash)
end

def remove_item(g_hash,item)
  g_hash.delete(item)
  puts "#{item} was removed!"
  print_list(g_hash)
end

def update_quantity(g_hash, item, quantity)
  g_hash[item] = quantity
  puts "#{item} was updated to #{quantity}"
  print_list(g_hash)
end

def print_list(g_hash)
  g_hash.each do |item, quantity|
    puts "the item is #{item} and the quantity is #{quantity}."
  end
  puts "---------------------\n\n"
end

list = create_list("carrots apples cereal pizza")
add_item(list,"bannana")
remove_item(list,"apples")
update_quantity(list, "cereal", 13)
print_list(list)


#### REFLECTION

# --- What did you learn about pseudocode from working on this challenge?

# These methods weren't too complex, so the pseudocode didn't require very many steps. However, we did run across the question of how to use the wording and when to avoid using language-specific keywords. My understanding is that we shouldn't use method names that are specific to Ruby, but it's okay to use words that are common to programming languages that direct the flow of the logic, like IF, WHILE, iterate, and define. Our guide also pointed out that pseudocode is for us, so we don't need to worry too much about exactly how we word it; rather, the aim is to make sure we understand the logical steps involved and will be able to quickly translate our pseudocode into real code. 


# --- What are the tradeoffs of using Arrays and Hashes for this challenge?

# Arrays are easier to keep track of during iteration because you're only dealing with one thing-- the object in the array. It also helps that arrays keep items in order and will therefore be accessible via their separate indices. For this challenge, though, it made much more sense to use a hash because it allowed us to keep track of our information in pairs. We needed to know the name of the grocery item as well as its quantity, so a hash was the sensible choice for a our grocery list. 


# --- What does a method return?

# A method returns whatever the return keyword tells it to, and if you only use the return keyword without an expression afterward, it will simply exit the method. Without the return keyword, the method will simply return the value of the last evaluated expression, which will likely be the last line in the method. For this reason, you can leave out the return keyword altogether, but you may use it if you want to break out early (before the last line) in a certain case, or if you want to make it very clear to the reader that the method is returning something. 



# --- What kind of things can you pass into methods as arguments?

# You can pass any objects (integers, strings, arrays, hashes, custom objects, etc), and that even includes other methods. My pair and I experimented with passing in our create_list method as the first argument since it returned our grocery hash, but our guide pointed out that this was not a DRY solution... we were creating the object in every method call, which isn't the most efficient strategy. So, our guide recommended calling the create_list method once and storing its returned value (the grocery hash) into a variable called list. We then used that variable as our stored grocery hash, and all of our methods performed updates or deletions on that same object. 


# --- How can you pass information between methods?

# To pass information from one method to another without using class instance variables, you just need to calculate that information inside of one method, and then in that same method, call the second method, and pass your information (probably stored into a variable) as an argument. 

# --- What concepts were solidified in this challenge, and what concepts are still confusing?
  
# It was really valuable to dig into some errors we received in our first attempts at refactoring. There were some surprises about what our methods were actually returning, particularly because in refactoring we were changing which line was being evaluated last, which becomes the returned value in Ruby. Our guide also helped us to reach some best practices in terms of readability, encouraging us to choose consistent variable and argument names amongst methods. 

