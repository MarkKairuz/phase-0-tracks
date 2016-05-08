# 4.6 Pairing
# Mark Kairuz and Bjorn Ramos

# Release 2 Encrypt
puts "What is your code?"
Code = gets.chomp
index = 0

while index < Code.length
	p Code[index].next
	index += 1
end

# Release 2 Decrypt
Alpha = "abcdefghijklmnopqrstuvwxyz"