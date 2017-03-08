# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Gives the ability to import data from a different file that's in
# the same directory. 
# Require would be necessary for pulling in data from files that
# are not in the same directory. Have to specify the path.
require_relative 'state_data'

class VirusPredictor
  # Initializing a new instance of VirusPredictor and passing in
  # the required arguments from the state_data file. Assigning 
  # everything as instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Runs two other instance methods one after another
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # Sets all methods beneath to not be called outside of the
  # class declaration
  private

  # Passing in state_data and returns results based on population_density
  # Creates a new variable called number_of_deaths
  # Output is a string with state name & number_of_deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Input: population_density & state from state_data
  # Based on population density, returns a speed
  # Output: String showing the speed of the virus spread
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# Method for comprehensive report
# Iterate through STATE_DATA hash
# For each state, initialize an instance of the VirusPredictor class
# Pass in the corresponding state data
# Run the virus_effects method on each state
def national_report(data_hash)
  data_hash.each do |state, pop_info|
    state = VirusPredictor.new(state, pop_info[:population_density], pop_info[:population])
    state.virus_effects
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

national_report(STATE_DATA)

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

  # The syntax used for the first-left STATE_DATA hash involves setting the key to a string and then
  # using the rocket symbol => to assign the value to that string.
  # The other syntax method is to set the key as a symbol such as "key: value"

# What does require_relative do? How is it different from require?

  # require_relative is a way to call in the data (methods, hashes, arrays, etc.)
  # from another file that's in the same directory.
  # Regular-old require would be necessary for calling in data that's NOT in the same directory.
  # Require handles path relative to the main PATH on your command-line

# What are some ways to iterate through a hash?
  
  # 1) Iterates through hash and passes in both key & value of each pair
    # hash.each {|key, value| some code goes here}
  # 2) Iterates through hash and passes just the values of each pair
    # hash.each_value {|value| some code goes here}
  # 3) Iterates through hash and passes just the keys of each pair
    # hash.each_key {|key| some code goes here}
  # 4) Explicitly-named way of iterating same as .each
    # hash.each_pair {|key, value| some code goes here}

# When refactoring virus_effects, what stood out to you about the variables, if anything?

  # The variables were all instance variables
  # It turns out that it wasn't necessary to pass them in since any of the variables from
  # initializing an instance of the class has access to them

# What concept did you most solidify in this challenge?

  # This challenge really helped me solidify iterating through hashes.
  # I know that's something we already covered but the nested hashes
  # were a good challenge.