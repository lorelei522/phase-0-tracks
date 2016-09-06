=begin
5.5 Solo Challenge Pseudocode

Create a method that takes any full name "John Smith" (gets.chomp)
and turns it into a fake name were vowels go to the next(.next)
vowel and consonsants to the next consonant. 

(.split)

Will be making the names into an array (.class) and join the names
back together in the end (.join)

=end


vowels = ['a', 'e', 'i', 'o', 'u']
consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

puts "What is your original name? (first and last name)"
original_name_given=gets.chomp