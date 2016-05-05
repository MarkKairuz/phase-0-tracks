# Interview for a Vampire
# Written by Mark Kairuz

# Prompt User for information
puts "What is your name?"
Name = gets.chomp
puts "How old are you?"
Age = gets.chomp.to_i
puts "What year were you born?"
Year_Born = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
Garlic_Bread = gets.chomp
puts "Would you like to enroll in the company's health insurance?"
Health_Insurance = gets.chomp

# Boolean case for Garlic
Garlic = case Garlic_Bread
	when 0 then false
	when 1 then true
	when "No" then false
	when "Yes" then true
	when "N" then false
	when "Y" then true
	else nil
end

# Boolean case for Health
Health = case Health_Insurance
	when 0 then false
	when 1 then true
	when "No" then false
	when "Yes" then true
	when "N" then false
	when "Y" then true
	else nil
end

# Detection logic
if ( Name == "Drake Cula" ) || ( Name == "Tu Fang" )
	puts "Definitely a vampire."
elsif ( 2016 - Year_Born != Age ) && !Garlic && !Health
	puts "Almost certainly a vampire."
elsif ( 2016 - Year_Born != Age ) && (!Garlic || !Health)
	puts "Probably a vampire."
elsif ( 2016 - Year_Born == Age ) && ( Garlic || Health )
	puts "Probably not a vampire."
else
	puts "Results inconclusive."
end