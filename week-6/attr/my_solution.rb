#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: Name string
# Output: (of hello method) A string that greets the person by name.
# # Steps:
# 	Define class NameData
# 		Initialize the instance with a name variable passed as an argument
# 		Add an attribute accessor to read and write the name instance variable from another class
# 	Define class Greetings
# 		Define an initialization method
# 			Initialize with a name argument, which is used as an argument to create a new instance of NameData class
# 			Save the new instance of NameData to an instance variable
# 		Define a greeter method
# 			Return a printed string that incorporates the name attribute from our NameData object


class NameData
  attr_accessor :name

  def initialize name
    @name = name
  end
end


class Greetings
  def initialize name
    @person = NameData.new name
  end

  def hello
    puts "Hello #{@person.name}! I am a computer."
  end
end



greet = Greetings.new('John Doe')
greet.hello


# Reflection

# --- What is a reader method?

# A reader method simply returns the value of an instance variable (attribute) but does not modify it.


# --- What is a writer method?

# A writer method updates the value of an instance variable to a new value. It takes the new value as an argument.


# --- What do the attr methods do for you?

# They create simpler writer/reader functionality in a brief statement. Multiple read/write methods for several
# attributes can be condensed to a single line using attr_accessor.


# --- Should you always use an accessor to cover your bases? Why or why not?

# It is okay to use an accessor, but you must be mindful of which other classes have the ability to access the
# attribute because you may end up altering values by accident, or you may have a security issue that allows
# unintended read or write access to sensitive information. 


# --- What is confusing to you about these methods?

# I would be interested to know how they work under the hood. Is this simply a syntactic-sugar wrapper for the
# more explicit reader and writer methods? Or do the readers behave differently in some subtle way? This is
# something I hope to research when I have the time.
