# Alias Manager
# By Mark Kairuz
# Note: this name generator can code a that that has 1 to 3 sections.
# 	For Example: Billy Bob Joe.
# 	Also, keep note of your name because there is a self-destruct sequence in the end.

# Declare and empty array
name_array = []

# Request for a name or quit
puts "" # blank line
puts "Type in a name or type 'quit' to exit."
name = gets.chomp

# Loop to keep asking for names to change until 'quit' is entered.
while name.downcase != 'quit' do

	# Change the vowels to the next vowel, and consonants to the next.
	vowel_change = name.tr('aeiou', 'eioua') # Transfer to a new variable for possible future use of "name".
	const_change = vowel_change.downcase.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')

	# Split first and last name
	name_swap = const_change.split(' ')

	# Swap the split first and last name
	name_swap.reverse!
	name_swap[0].capitalize! # Capitalize the new first name.
	if name_swap.length >= 2 # Capitalize new 2nd name if it exists.
		name_swap[1].capitalize! # Capitalize the new secone name.
		if name_swap.length >= 3 # Capitalize new 3rd name if it exists.
			name_swap[2].capitalize! # Capitalize the new third name.
		end
	end

	# Combine the swapped split first and last name
	new_name = name_swap.join(' ')

	# Add to the hash of names
	name_array << name
	name_array << new_name

	# Print the new name
	p "Your code name is now #{new_name}."

	puts "" # Leaves a blank line.

	# Request a name or quit for the next session.
	puts "Type another name or type 'quit' to exit."
	name = gets.chomp
end

# Initiate count and name numbers for until loop
count = 0
number_of_names = name_array.length
puts "" # blank line
# Print the results
until number_of_names <= 0
	puts "'#{name_array[count]}' is also known as '#{name_array[count+1]}'"
	count +=2
	number_of_names -= 2
end

puts "" # blank line
puts "Good luck, Agent! This message will self-destruct in 10 seconds"
sleep(10) # 10 seconds pause.
puts "\e[2J\e[f" # Code for clearing the screen.