# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#Links the file to this Class. Relative to the current directory.
#Difference with Require is that is it will start looking in a certain path. 
require_relative 'state_data'

class VirusPredictor

  #Initialize method for the class. Calling for different arguements.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Method stating the data
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  #Any methods below Private are able to be called by the user.
  private

  #method to figure out how many deaths in the state will happen with population density and
  #population.
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

  #method to figure out the speed according to population density
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

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, value|
VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population]).virus_effects
end


=begin 
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects
alabama.predicted_deaths

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section
=begin

What are the differences between the two different hash syntaxes shown in the state_data file?
*The first one uses a hash rocket to set the value of the key string. 
*The nested hash uses colon to set the value.

What does require_relative do? How is it different from require?
*Links the file to this Class. Relative to the current directory.
*Difference with Require is that is it will start looking in a certain path. 

What are some ways to iterate through a hash?
* Using a loop. each do 

When refactoring virus_effects, what stood out to you about the variables, if anything?
*Insance variable stood out.

What concept did you most solidify in this challenge?
*The importance of reviewing your code and seeing if you can refactor to make it easier and precise to
read and understand.
  
end
