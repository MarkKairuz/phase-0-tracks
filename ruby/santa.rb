# santa.rb
# Written by Mark Kairuz
# 5.20.16

# Define Santa Class
class Santa
	# Initialize Santa
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	# Speak Santa
	def speak
		puts "The #{@gender} #{@ethnicity} santa says:"
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	# Eat and drink Santa
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	# Getter methods
	def age
		@age
	end

	def reindeer_ranking
		@reindeer_ranking
	end

	# Setter methods
	def celebrate_birthday=(new_age)
		@age = new_age
	end


	def get_mad_at=(bad_reindeer)
		@reindeer_ranking.delete(bad_reindeer)
		@reindeer_ranking << bad_reindeer
	end

end

# # Drive
# Red_Squadron_Santa = Santa.new
# Red_Squadron_Santa.speak
# Red_Squadron_Santa.eat_milk_and_cookies("Oreo")

# # Test the code
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# # p santas

santas = Santa.new("sit", "uck")

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# p santas


puts ""
puts "----------------------"
puts "Here comes the Santas:"
puts ""
# santas.each do |one_santa|
#   one_santa.speak
#   one_santa.eat_milk_and_cookies("chocolate_chip_cookie")
#   puts ""
# end

santas.celebrate_birthday = 1
santas.get_mad_at = "Vixen"
p santas


