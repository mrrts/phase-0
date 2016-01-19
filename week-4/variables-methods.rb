puts "First Name?"
first = gets.chomp

puts "Middle Name?"
middle = gets.chomp

puts "Last Name?"
last = gets.chomp

puts "Hello, #{first} #{middle} #{last}!"


puts "Favorite Number?"
fav = gets.chomp

puts "#{fav} is a nice number, but #{fav.to_i + 1} is even bigger and better!"


=begin

-- How do you define a local variable?

A local variable must be named with letters, numbers, and underscores. It is declared by assigning it a value, using the = sign: my_var = 3


-- How do you define a method?

A method uses the "def" and "end" keywords. After def, you add the name of the method and then you can list the parameters on the same line, whether in parentheses or not. On the lines between the "def" line and the "end" line, you add your code block. 


-- What is the difference between a local variable and a method?

A local variable only stores a value to be reused throughout the program. A method is a repeatable routine that performs a block of code whenever it's called and uses values passed in as parameters. One is a piece of information to save and reuse when needed, and the other is a process to save and repeat when needed. 


-- How do you run a ruby program from the command line?

To run a ruby program from the command line, you type "ruby" and then a space, followed by the path to the ruby file (.rb). You can also run a ruby file through the rspec interpreter by using the "rspec" command instead of the "ruby" command. Additionally, you can run an interactive, line-by-line program in the command line interface by opening Interactive Ruby ("irb"). 

-- How do you run an RSpec file from the command line?

To run an RSpec file from the command line, you type "rspec" followed by a space and the path to the ruby file (.rb) that contains the rspec tests. 

-- What was confusing about this material? What made sense?

This material was simple and straightforward because the associated readings were very clear, and I also remember a lot from prior experience and tutorials. I'm curious about how rspec works, however, even though I know that that is beyond the scope of this lesson. Still, I look forward to being able to write such tests. 


=end
