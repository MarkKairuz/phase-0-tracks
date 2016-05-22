# Mark Kairuz
# GPS 2.2 with Maria

# Droid class

# Initiate

# Attribute 1: Communication
	# Input: Initialized array = Beeps and bloops
	# steps: Store communication Beeps and bloops in array
	# output: array

# Attribute 2: Droid Type
	# Input: array from driver
	# steps: converts type. Defaults as Astromech Droid.
	# output: array

# Attribute 3: Color
	# Input: Initialized array = silver
	# steps: Stores as no paint.
	# output: array

# Attribute 4: Mobility
	# Input: array from driver
	# steps: Converts mobility. Defaults as immobile.
	# output: array

# Method 1: phrase
	# Input: Initialized array = silence
	# steps: Stores as silent.
	# output: array

# Method 2: Move action
	# Input: Initialized array = stays put
	# steps: Stores no action.
	# output: array

# Method 3: Recharge?
	# Input: array from driver
	# steps: Charge 10% or below gets recharged.
		# Charge above notifies that charge is ok.
	# output: array

class Droid

	attr_reader :droid_type, :mobility_type
	attr_accessor :communication, :color, :battery_charge

	def initialize(droid_type, mobility_type, battery_charge)
		@droid_type = droid_type
		@mobility_type = mobility_type
		@battery_charge = battery_charge
		@communication = "beeps and bloops"
		@color = "silver"
	end

	def speak(phrase)
		if communication.downcase == "beeps and bloops"
			puts "The #{droid_type} stares at the humanoid for a moment and then says:"
			random_blips = ["beep", "bloop", "bing", "ting", "boop", "bleep"]
			puts random_blips.shuffle!
			puts "You don't have the proper language driver for this specific droid."
		else
			puts "The #{droid_type} droid says, '#{phrase}'"
		end	
	end

	def move(direction)
		puts "The #{droid_type} droid goes to the #{direction}."
	end

	def check_battery
		if battery_charge <= 10
			if battery_charge <= 0
				puts "The #{droid_type} droid malfunctions."
				p "Looks like we have to charge the droid manualy ourselves. Ugh! Are we cavemen here? When did droids stop charging themselves?"
				puts "User plugs the droid into a power source."
				battery_charge = 100
				puts "Moments later, the battery percent charges to #{battery_charge} percent."
			else
				puts "The #{droid_type} droid plugs into a power source."
				battery_charge = 100
				puts "Moments later, the battery percent charges to #{battery_charge} percent."
			end
		else
			puts "The #{droid_type} droid has enough charge."
		end
	end

	def about
		puts "Droid type: #{@droid_type}"
		puts "Mobility type: #{mobility_type}"
		puts "Battery charge: #{battery_charge}%"
		puts "Communication type: #{communication}"
		puts "Color: #{color}"
	end
end

R2D2 = Droid.new("Astromech", "rolls on wheels", 90)
R2D2.color = "mostly white"
R2D2.speak("Beeps and bloops")
R2D2.check_battery
puts ""

C3PO = Droid.new("Protocol", "walks", 8)
C3PO.color = "gold"
C3PO.communication = "Humanoid"
C3PO.speak("I am a translator droid. At your service!")
C3PO.move("kitchen")
C3PO.check_battery
C3PO.about
puts ""

# User interface
puts "Let's start a new list of droids. Whenever you feel you are finished, just enter 'done'."
droids = {}
puts "What is your first droid's name?"
name = gets.chomp
puts ""
while name.downcase != "done"
	puts "What is your droid's type?"
	droid_type_input = gets.chomp
	puts ""
	puts "What is your droid's type of transportation? (example: walk)"
	droid_mobility_input = gets.chomp
	puts ""
	puts "What is the current battery percentage does your droid have? (from 0 to 100)"
	droid_battery_input = gets.chomp.to_i
	droids[name] = Droid.new(droid_type_input, droid_mobility_input, droid_battery_input)
	puts ""
	puts "Would you like to install a communication drive for your droid?"
	purchase_communication = gets.chomp
	puts ""
	if (purchase_communication.downcase == "yes")||(purchase_communication == "ok")
		puts "What type of communication would you like to have for your droid?"
		droids[name].communication = gets.chomp
		puts ""
	end
	puts "Would you like to paint your droid?"
	paint_job = gets.chomp
	puts ""
	if (paint_job == "yes")||(paint_job == "ok")
		puts "What color do you want for your droid?"
		droids[name].color = gets.chomp
		puts ""
	end

	p "Droid: Self diagnose and check if you need to charge."
	droids[name].check_battery
	puts ""

	puts "Tell the droid to say something."
	words = gets.chomp
	droids[name].speak(words)
	puts ""

	puts "Give the droid a place to go."
	location = gets.chomp
	droids[name].move(location)
	puts "Looks like we are good to go!"

	puts ""
	puts "-----------------------------------------------------------"
	puts "What is your next droid's name? (type 'done' when finished)"
	name = gets.chomp

end
puts ""
puts "=========================================="
puts ""
puts "Here's the information of all your droids:"
puts ""
droids.each do |key|
	puts "Droid name: #{key[0]}"
	i = "#{key[0]}"
	droids[i].about
	puts ""
end
