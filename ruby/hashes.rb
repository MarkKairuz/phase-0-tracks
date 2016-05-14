applicant = {}
#x = gets.chomp
##:name = x
#puts x
#puts :name

#  Ask user for name and include into applicant info.
puts "What is the applicant's name?"
applicant[:name] = gets.chomp

#  Ask user for age and include into applicant info.
puts "How old is the applicant?"
applicant[:age] = gets.to_i

#  Ask user for number of children and include into applicant info.
puts "What is the applicant's decor theme"
applicant[:theme] = gets.chomp

#  Ask user for theme and include into applicant info.
puts "Does the applicant live in King County?"
#  Make into Boolean
King_County = gets.chomp
if (King_County.downcase == true) || (King_County.downcase == "yes") || (King_County.downcase == 1)
	applicant [:Lives_in_King_County] = true
elsif (King_County.downcase == false) || (King_County.downcase == "no") || (King_County.downcase == 0)
	applicant [:Lives_in_King_County] = false
else
	applicant [:Lives_in_King_County] = "unknown"
end
#  Ask user if they live in King County and include into applicant info.

puts applicant # prints applicant total info.

# Ask if there is nay changes needed.
puts "Need to make any changes? Type the category. Type none if everything is correct."
Change = gets.chomp
if Change.downcase == "none"
	puts "No changes made."
	puts applicant # prints applicant total info.
else
	puts "Change to:"
	applicant [Change.to_sym] = gets.chomp
	puts applicant
end