# By Mark Kairuz

# Request for a name or quit
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
	name_swap[1].capitalize! # Capitalize the new last name.

	# Combine the swapped split first and last name
	new_name = name_swap.join(' ')

	# Print the new name
	p new_name
	#sleep(10)

	# Request a name or quit for the next session.
	puts "Type in a name or type 'quit' to exit."
	name = gets.chomp
end

puts "Good luck, Agent!"