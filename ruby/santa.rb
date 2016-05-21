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
		puts the "The #{@gender} #{@ethnicity} says:"
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	# Eat and drink Santa
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

end

# Subliminal request for initiating whether to loop or finalize the code.
puts "What is the gender of this Santa? If there is no santa in the world, then enter 'done'."
gender_option = gets.chomp

# Loop attempts
while gender_option.downcase != "done"
	puts "What is the Ethnic background of this Santa?"
	ethnic_background = gets.chomp

	# Drive
	Red_Squadron_Santa = Santa.new(gender_option, ethnic_background)
	Red_Squadron_Santa.speak
	Red_Squadron_Santa.eat_milk_and_cookies("Oreo")

	puts "What is the gender of this next Santa? If there is no more santa left, then enter 'done'."
	gender_option = gets.chomp
end

# # Test the code
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# p santas

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# p santas