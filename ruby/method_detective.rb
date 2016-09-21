# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”

p "iNvEsTiGaTiOn".swapcase


# "zom".<???>
# => “zoom”

p "zom".insert(2, "o")


# "enhance".<???>
# => "    enhance    "

p "enhance".center(15)


# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"

p "Stop! You’re under arrest!".upcase

# "the usual".<???>
#=> "the usual suspects"

#since -1 is the end of the string
p "the usual".insert(-1, " suspects")
p "the usual".concat(' suspects')

# " suspects".<???>
# => "the usual suspects"

#3 ways to do it 
#18 is for the whole length
p " suspects".rjust(18, 'the usual')
p " suspects".replace("the usual suspects")
p " suspects".insert(0, "the usual")

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

p "The case of the disappearing last letter".chop

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

p "The mystery of the missing first letter".reverse.chop.reverse

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

p "Elementary,    my   dear        Watson!".squeeze

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

p "z".ord

# lowercase z is 122 in the ASCII order


# "How many times does the letter 'a' appear in this string?".<???>
# => 4

p "How many times does the letter 'a' appear in this string?".count("a")
