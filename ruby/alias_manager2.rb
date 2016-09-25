#take a real name "Lorelei Lopez" swap first and last name "Lopez Lorelei"
#change all the vowels (a e i o u) to the next vowels
# all consonants will go to the next consonant

def name_converter(original)

vowels= ["a", "e", "i", "o", "u"]
consonants= ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

# 1- downcase the whole original 
# 2- split into individual words--- "lorelei" "lopez"
# 3- reverse the individual words--- "lopez" "lorelei"
# 4- join the words back together--- "lopez lorelei"
# 5- split each word into letters--- 
letters= original.downcase.split(' ').reverse.join(' ').split('')


#Split the letters of each word ('')
end

p name_converter("Lorelei Lopez")