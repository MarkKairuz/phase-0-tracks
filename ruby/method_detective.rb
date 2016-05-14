# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.


puts # I will be using this to create empty lines in between results.


p "iNvEsTiGaTiOn".swapcase
# swapcase("iNvEsTiGaTiOn") => “InVeStIgAtIoN”
puts


# "zom".insert( 1, "o" ) can be used as a method on it's own without calling it
# insert("zom", 1, "o") => “zoom” would be the document for it.
# Instead, here's the call for the insert_the_character method:
def insert_the_character (insert_location, insert_letter)
	"zom".insert(insert_location, insert_letter)
end
p insert_the_character(1, "o")
p insert_the_character(2, "o")
# insert("zom", insert_location, insert_letter) => “zoom”


p "enhance".center(15)
# center("enhance", 15) => "    enhance    "
puts


p "Stop! You’re under arrest!".upcase
# upcase("Stop! You’re under arrest!") => "STOP! YOU’RE UNDER ARREST!"
puts


def combined_sentence(code)
	if code == "ljust"
		"the usual".ljust(18, " suspects")
		# ljust("the usual", 18, " suspects") => "the usual suspects"
	elsif code == "rjust"
		" suspects".rjust(18, "the usual")
		# rjust(" suspects", 18, "the usual") => "the usual suspects"
	elsif code == "combine"
		sentence = "the usual" << " suspects"
		# sentence("the usual", " suspects") => "the usual suspects"
	end
end
p combined_sentence("ljust")	# using ljust method.
p combined_sentence("rjust")	# using rjust method.
p combined_sentence("combine")	# using a concatination method.
puts


def string_dot_section (word, string_start, string_end)
	word (string_start..string_end)
end
p "The case of the disappearing last letter".chop
# chop("The case of the disappearing last letter") => "The case of the disappearing last lette"
puts


p "The mystery of the missing first letter".slice!(1..38)
# slice("The mystery of the missing first letter", 1..38) => "he mystery of the missing first letter"
puts


p "Elementary,    my   dear        Watson!".squeeze
# squeeze(Elementary,    my   dear        Watson!) => "Elementary, my dear Watson!"
puts


p "z".ord
# ord("z") => 122 
# (What is the significance of the number 122 in relation to the character z?)
puts


p "How many times does the letter 'a' appear in this string?".count "a"
# count("How many times does the letter 'a' appear in this string?", "a") => 4
puts

