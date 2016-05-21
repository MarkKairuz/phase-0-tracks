# santa.rb
# Written by Mark Kairuz
# 5.20.16

# Define Santa Class
class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def initialize
		puts "Initializing Santa instance ..."
	end

end

Red_Squadron_Santa = Santa.new
Red_Squadron_Santa.speak
Red_Squadron_Santa.eat_milk_and_cookies("Oreo")