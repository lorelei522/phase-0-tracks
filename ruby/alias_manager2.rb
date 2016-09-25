#take a real name "Lorelei Lopez" swap first and last name "Lopez Lorelei"
#change all the vowels (a e i o u) to the next vowels
# all consonants will go to the next consonant

def name_converter(original)

vowels= ["a", "e", "i", "o", "u"]
consonants= ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

# 1- downcase the whole original to help with edge cases
# 2- split into individual words--- "lorelei" "lopez"
# 3- reverse the individual words--- "lopez" "lorelei"
# 4- join the words back together--- "lopez lorelei"
# 5- split each word into letters--- 
# 6- put all these changes into a new variable
change_name= original.downcase.split(' ').reverse.join(' ').split('')

#iterate through the letters of change_name to change permanently the letters
change_name.map! {
	|letter|
	#see if the letter is a vowel
	if vowels.include?(letter)
	#make sure the last vowel goes back to the first vowel 
		if letter== "u"
			new_letter= "a"
	#for any other vowel
		else 
			index= vowels.index(letter) + 1
			new_letter= vowels[index]	
		end
	#consonants
	elsif consonants.include?(letter)
		#use the index of the last of the consonant array -1 to make sure it goes ot [0]
		if letter== consonants[-1]
			new_letter= consonants[0]
		#any other consonants
		else
			index= consonants.index(letter) +1
			new_letter= consonants[index]
		end
	else
		#for the space it can just put the space again
		letter
	end		
}

# now that the letters have changed to their next consonant or next vowel 
# 1- join the letters into a string.
# 2- split into individual words again
# 3- .map! to iterate through each individual word and just capitalize the first letter
# 	join the words into the original string format
change_name.join('').split(' ').map! { |x|
		x.capitalize}.join(' ')
end

#Driver code
p name_converter("Lorelei Lopez")