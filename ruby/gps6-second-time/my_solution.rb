# Virus Predictor

# I worked on this challenge Michael Taylor.
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# links file to this class in the same directory.
# require will use the path name to find appropriate file outside the directory.

require_relative 'state_data'

class VirusPredictor

  #initializing. Takes 3 arguments. Declaring instance variables on state, population and population_density.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Calling predicted_deaths and speed_of_spread methods.
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private

  #Runs conditional statement based on the population density it multiples the populations
  #Input- population density, population, state.
  #Output- number of deaths.
  def predicted_deaths #(population_density, population, state)
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

  #Input- Population density and state
  #Output- Nil. 
  #Running conditional statements on each states population_density to determine speed.
  def speed_of_spread #(population_density, state)        #in months
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


STATE_DATA.each do|state, value|
    VirusPredictor.new(state, value[:population_density], value[:population]).virus_effects
end



alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects



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
*Instance variable stood out.

What concept did you most solidify in this challenge?
*The importance of reviewing your code and seeing if you can refactor to make it easier and precise to
read and understand.
  
end
