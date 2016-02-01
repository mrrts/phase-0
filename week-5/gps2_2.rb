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
  

