puts "What is your name?"
Name = gets.chomp
puts "How old are you?"
Age = gets.chomp
puts "What year were you born?"
Year_Born = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
Garlic_Bread = gets.chomp
puts "Would you like to enroll in the company's health insurance?"
Health_Insurance = gets.chomp

if ( Name == "Drake Cula" ) || ( Name == "Tu Fang" )
	puts "Definitely a vampire."
elsif ( 2016 - Year_Born.to_i != Age.to_i )
		if ( !Garlic_Bread || !Health_Insurance )
			puts "Probably a vampire."
		elsif  ( !Garlic_Bread && !Health_Insurance )
			puts "Almost certainly a vampire."
		else
			puts "Results inconclusive."
		end
elsif ( 2016 - Year_Born.to_i == Age.to_i ) && ( Garlic_Bread || Health_Insurance )
		puts "Probably not a vampire."
else
	puts "Results inconclusive."
end