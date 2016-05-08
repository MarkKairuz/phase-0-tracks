# 4.6 Pairing
# Mark Kairuz and Bjorn Ramos

# Release 2 Encrypt

# Use this for User input:
#	puts "What is your code?"
#	Code = gets.chomp

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
encrypt("abc")
encrypt("zed")


# Release 2 Decrypt
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

decrypt("bcd")
decrypt("afe")

# The following code prints the encrypted code.
# Then it decrypts the code and prints it.
p decrypt(encrypt("swordfish"))

