# 4.6 Pairing
# Mark Kairuz and Bjorn Ramos

# Release 2 Encrypt (driver code)
def encrypt(code)
	index = 0
	ind = ""
	while index < code.length
		ind[index] = code[index].next
		index += 1
	end
	p ind
end

# Call the encryptions
# encrypt("abc")
# encrypt("zed")


# Release 2 Decrypt (driver code)
def decrypt(code)
	alpha = "abcdefghijklmnopqrstuvwxyz"
	index = 0
	ind3 = ""
	while index < code.length
		ind4 = code[index]
		ind2 = alpha.index(ind4)
		ind2 -= 1
		ind3[index] = alpha[ind2]
		index += 1
	end
	p ind3
end

# decrypt("bcd")
# decrypt("afe")

# The following code prints the encrypted code.
# Then it decrypts the code and prints it.
# p decrypt(encrypt("swordfish"))

# Asks user for encrypt/decrypt and the password
puts "Would you like to decrypt or encrypt your password? Type decrypt or encrypt."
crypt = gets.chomp
if crypt = "encrypt"
	puts "Enter your passcode:"
	word = gets.chomp
	p encrypt(word)
elsif crypt = "decrypt"
	puts "Enter your passcode:"
	word = gets.chomp
	p decrypt(word)
else
	"Wrong Entry."
end
