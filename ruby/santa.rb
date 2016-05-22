# santa.rb
# Written by Mark Kairuz
# 5.20.16

# Define Santa Class
class Santa

	# Getter methods shorthand
	attr_reader :age, :ethnicity, :reindeer_ranking

	# Setter/Getter methods shorthand
	attr_accessor :gender

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
		puts "The #{@age} year old #{@gender} #{@ethnicity} santa says:"
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	# Eat and drink Santa
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	# Setter methods
	def change_age=(new_age)
		@age = new_age
	end

	def celebrate_birthday
		@age += 1
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

# Test the code
santas = []
santas << Santa.new("agender", "black")
santas[0].change_age = rand(140)
santas << Santa.new("female", "Latino")
santas[1].change_age = rand(140)
santas << Santa.new("bigender", "white")
santas[2].change_age = rand(140)
santas << Santa.new("male", "Japanese")
santas[3].change_age = rand(140)
santas << Santa.new("female", "prefer not to say")
santas[4].change_age = rand(140)
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas[5].change_age = rand(140)
santas << Santa.new("N/A", "N/A")
santas[6].change_age = rand(140)
# # p santas

# Add more Santas easier with this:
additional_genders = ["male", "female", "transgender", "bisexual", "agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "unknown", "asexual", "universal", "blip-blop-bloop"]
additional_ethnicities = ["green", "red", "blue", "orange", "dinosaur", "black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Filipino", "Martian", "Being", "Fish"]
(additional_genders.length).times do |i|
  santas << Santa.new(additional_genders[i], additional_ethnicities[i])
  santas[i+7].change_age = rand(140)
end
# p santas



# Drive one Santa's age up by 1 year and check the age method.
puts ""
santas[1].celebrate_birthday
puts "After celebrating the second Santa's birthday, their new age is now #{santas[1].age} year(s) old. Santa 3 is still #{santas[2].age} year(s) old."
puts ""

# Drive one of the Santas to get mad at a reindeer.
puts "The first Santa got mad at Vixen. This Sant's new oredered list is now:"
santas[0].get_mad_at = "Vixen"
puts santas[0].reindeer_ranking
puts ""

# Check the ethnicity of a Santa.
puts "Santa 4 ethnicity is #{santas[3].ethnicity}."
puts ""

# Check the gender method.
puts "Santa 7 decided to change their gender in a clinic to:"
p santas[6].gender = "none"
puts ""

puts ""
puts "----------------------"
puts "Here comes the Santas:"
puts ""

santas.each do |one_santa|
	one_santa.speak
	one_santa.eat_milk_and_cookies("chocolate_chip_cookie")
	puts "Reindeer_ranking:"
	puts one_santa.reindeer_ranking
	puts ""
end