# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is used to access a file within the same directory as the file # it is being called in. Require has additional funcionality that can load  #additional features from the Ruby library.
#
#
require_relative 'state_data'

class VirusPredictor
  
#This method takes 3 arguements and stores the values of them as instance #variables.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  
#Calls the predicted_deaths methods and speed_of_spread method using the #instance variables as arguements. It will return the speed_of_spread string

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
#The method is testing the poputation_density instance variable to test the  #range and sets the number_of_deaths variable to the states population times a #certain factor depending on the range. The floor method rounds the vaule down to #the nearest integer. The method will print out a string.

  def predicted_deaths
    # predicted deaths is solely based on population density 
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    #########
    # Population density => associated factor
    factors = {200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1}
    
    # Default value for number of deaths
    number_of_deaths = (@population * 0.05).floor

    # Use a different factor if the pop. density is 50 or more
    factors.each do |density, factor|
      if @population_density >= density
        number_of_deaths = (@population * factor).floor
        break
      end
    end
    
    
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  
# Set the default speed value to 0. It looks for the range then adds a certian value to the speed based on the range. This method returns a string.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end
    
    additional_speed = {200 => 0.5, 150 => 1, 100 => 1.5, 50 => 2}
    
    addon = 2.5
    additional_speed.each do |density, addend| 
      if @population_density >= density
        addon = addend
        break
      end
    end
  
    speed += addon

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, data|
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end


#=======================================================================
# Reflection Section

# --- What are the differences between the two different hash syntaxes shown in the state_data file?

# For the outer hash, the key is a string and the value is a hash, and the two are separated by the hash rocket
# character (=>). In the inner hashes, the keys are symbols, and the values are either floats or integers. When 
# you use symbols as your keys, you do not use the hash rocket, but rather just a colon -- AFTER the symbol
# and not BEFORE it. 


# --- What does require_relative do? How is it different from require?

# Require_relative is just a convenient subset of require... allowing you to include the logic and 
# data from another file by passing a path *relative* to the current one. You can use regular require 
# to do the same thing, but you would have to have a more absolute file path (or a module that is 
#   either in the Ruby standard library or one that you have properly installed on your system.)


# --- What are some ways to iterate through a hash?

# You can different methods, like each, each_value, each_key. You could also iterate over an array of just
# the keys or just the values using they .keys or .values methods plus .each. 


# --- When refactoring virus_effects, what stood out to you about the variables, if anything?

# There was no need to pass the data in the instance variables to the other instance methods because those methods
# already have access to the instance variables by virtue of being in the same class. It was tricky to locate 
# this issue at first, but then we had our Aha moment. 


# --- What concept did you most solidify in this challenge

# Using symbols as hash keys, which is something I had only seen in one other challenge and had not yet used 
# this directly. 
