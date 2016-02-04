# Release 1 (ACTUALLY 2)

class Profile

  attr_reader :age

  def initialize
    @age = 27
    @name = "Kim"
    @occupation = "Cartographer"
  end

  def print_info
    puts
    puts "age: #{@age}"
    puts
    puts "name: #{@name}"
    puts
    puts "occupation: #{@occupation}"
    puts
  end

  #this code is no longer needed.
  # def what_is_age
  #   @age
  # end

  def change_my_age=(new_age)
    @age = new_age
  end

  def what_is_name
    @name
  end

  def change_my_name=(new_name)
    @name = new_name
  end

  def what_is_occupation
    @occupation
  end

  def change_my_occupation=(new_occupation)
    @occupation = new_occupation
  end


end

instance_of_profile = Profile.new

# This method changed names! Now we have a method called #.age which returns the value of @age, just like what_is_age did. Thanks to attr_reader :age. If you don't believe me and you want to see for your self, paste lines 3 - 50 into IRB and type
# instance_of_profile.methods - Object.methods
#age() will be a member of this list!
puts "--- printing age -----"
sleep 0.8
p instance_of_profile.age

puts "--- printing name ----"
sleep 0.8
p instance_of_profile.what_is_name

puts "--- printing occupation ----"
sleep 0.8
p instance_of_profile.what_is_occupation

puts "--- changing profile information ----"
10.times do
  print "."
  sleep 0.1
end

instance_of_profile.change_my_age = 28
instance_of_profile.change_my_name = "Taylor"
instance_of_profile.change_my_occupation = "Rare Coins Trader"

puts
puts "---- printing all profile info -----"
sleep 0.8
instance_of_profile.print_info


## REFLECTION
# --- What changed between the last release and this release? What was replaced?

# The method what_is_age was removed, and the line attr_reader :age was added instead. When the
# attribute is read in the code below the class definition, it is simply accessed with
# the dot syntax: instance_of_profile.age


# --- Is this code simpler than the last?

# The code takes fewer lines and the keyword method attr_reader explicitly defines the functionality 
# that the old method otherwise would have provided: a simple return of the instance variable's value.
