# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# swapcase("iNvEsTiGaTiOn") => “InVeStIgAtIoN”

"zom".insert( 1, "o" )
# insert("zom", 1, "o") => “zoom”

"enhance".center(15)
# center("enhance", 15) => "    enhance    "

"Stop! You’re under arrest!".upcase
# upcase("Stop! You’re under arrest!") => "STOP! YOU’RE UNDER ARREST!"

"the usual".ljust(18, " suspects")
# ljust("the usual", 18, " suspects") => "the usual suspects"

" suspects".rjust(18, "the usual")
# rjust(" suspects", 18, "the usual") => "the usual suspects"

"The case of the disappearing last letter".chop
# chop("The case of the disappearing last letter") => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice!(1..38)
# slice("The mystery of the missing first letter", 1..38) => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
# squeeze(Elementary,    my   dear        Watson!) => "Elementary, my dear Watson!"

"z".ord
# ord("z") => 122 
# (What is the significance of the number 122 in relation to the character z?)

"How many times does the letter 'a' appear in this string?".count "a"
# count("How many times does the letter 'a' appear in this string?", "a") => 4