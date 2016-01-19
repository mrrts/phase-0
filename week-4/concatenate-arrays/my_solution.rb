# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

def array_concat(array_1, array_2)
  # Your code here
  array_2.each do |item|
  	array_1.push(item)
  end
  array_1
end