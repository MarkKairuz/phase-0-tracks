# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data' # Allows link to stat_data.rb file.
                              # Required for the utilization of the state_data.rb to be share by my_solution.rb 
                              # Require is more local, while   
class VirusPredictor

  attr_accessor :state, :population_density, :number_of_deaths

  # Initializion of the new instance of the class. Initialize the state, population and population density variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @number_of_deaths
  end

  # Method calls predicted_deaths and speed_of_spread methods.
  def virus_effects
    predicted_deaths(@population)
    speed_of_spread
  end

  private

  # Prints the statement of the number of deaths per state.
  def predicted_deaths(population)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      @number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
    end

  end

  # Prints the speed of spread portion of the printed sentence with the speed in months.
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

    puts "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |statename|
  test = VirusPredictor.new(statename[0], statename[1][:population_density], statename[1][:population])
  test.virus_effects
end
#=======================================================================
# Reflection Section


#    What are the differences between the two different hash syntaxes shown in the state_data file?
# The main hash has a key and another hash as a value. The nested hash has 2 keys with a value for each.
# The main hash also uses => compared to the key: of the nested hash.

#    What does require_relative do? How is it different from require?
# Requrie_relative gives access to another file to gather information

#    What are some ways to iterate through a hash?
#    When refactoring virus_effects, what stood out to you about the variables, if anything?
#    What concept did you most solidify in this challenge?
