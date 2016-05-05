puts "What is the hamster's name?"
Name = gets.chomp
puts "How loud is the hamster from 1 to 10?"
Loud = gets.chomp.to_i
puts "What is the fur color?"
Color = gets.chomp
puts "Is the hamster a good candidate for adoption?"
Adoption = gets.chomp
puts "What is the estimated age of the hamster?"
Age = gets.chomp

if Age == ""
	Age = nil
	puts "#{Name} has a loudness of #{Loud} at an unknown age."
else
	puts "#{Name} has a loudness of #{Loud} at the age of #{Age}."
end

puts "#{Name}'s beautiful fur color of #{Color} is amazing."
puts "We asked if #{Name} is a good candidate for adoption and you said #{Adoption}."
