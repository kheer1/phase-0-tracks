# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative usings the same directory as the file you're running 
#where as relative uses the directory that your in
require_relative "state_data"

class VirusPredictor

#Takes data from State data and saves data to local veriables 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#Calls the two private methods, predicted_deaths, speed_of_spread
#doesn't need to pass any veriables to predicted_deaths or speed_of_spread because
#they are initialized at the start and are instance variables
 
  def virus_effects
    #predicted_deaths
    #speed_of_spread
    puts "#{@state} will lose #{predicted_deaths} people in this outbreak  and will spread across the state in #{speed_of_spread} months.\n\n"
  end


  private #all methods that follow will be made private: not accessible for outside objects
#Predicts how many will die in the outbreak, and is solely based on the population density
#The final count is rounded down to the nearest integer
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

   # print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#predicts the rate of spread and is based only on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    if @population_density >= 200 
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    #puts " and will spread across the state in #{speed} months.\n\n"

  end

end #end of class

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
#test = VirusPredictor.new
#test.all_states

#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

#Getting virus data for every state, it's outside of the class because you already have all the methods needed to find data for every state
#If it was inside, then you'd have a method that might never be called
STATE_DATA.each_key {|key| VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population]).virus_effects}
#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
One is using the convenience syntax (rocket) while the other is using symbols m

What does require_relative do? How is it different from require?
Require_relative usings the same directory as the file you're running, where as relative uses the path of the directory that your in
What are some ways to iterate through a hash?
you can use: while, do until, .each, .each_key, for loop 
When refactoring virus_effects, what stood out to you about the variables, if anything?
That the veriables didn't need to be passed because all the methods could access and see them
What concept did you most solidify in this challenge?
Working with hashs and passing veriables

  
=end