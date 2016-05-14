# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# swapcase("iNvEsTiGaTiOn") => “InVeStIgAtIoN”

def insert_the_character (insert_num, insert_letter)
	"zom".insert(insert_num, insert_letter)
end
# "zom".insert( 1, "o" ) as a method on it's own without calling
# Call methods
p insert_the_character(1, "o")
p insert_the_character(2, "o")
# insert("zom", 1, "o") => “zoom”

p "enhance".center(15)
# center("enhance", 15) => "    enhance    "

p "Stop! You’re under arrest!".upcase
# upcase("Stop! You’re under arrest!") => "STOP! YOU’RE UNDER ARREST!"

p "the usual".ljust(18, " suspects")
# ljust("the usual", 18, " suspects") => "the usual suspects"

p " suspects".rjust(18, "the usual")
# rjust(" suspects", 18, "the usual") => "the usual suspects"

p "The case of the disappearing last letter".chop
# chop("The case of the disappearing last letter") => "The case of the disappearing last lette"

p "The mystery of the missing first letter".slice!(1..38)
# slice("The mystery of the missing first letter", 1..38) => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".squeeze
# squeeze(Elementary,    my   dear        Watson!) => "Elementary, my dear Watson!"

p "z".ord
# ord("z") => 122 
# (What is the significance of the number 122 in relation to the character z?)

p "How many times does the letter 'a' appear in this string?".count "a"
# count("How many times does the letter 'a' appear in this string?", "a") => 4




