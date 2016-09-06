=begin
5.5 Solo Challenge Pseudocode

Create a method that takes any full name "John Smith" (gets.chomp)
and turns it into a fake name were vowels go to the next(.next)
vowel and consonsants to the next consonant. 

(.split)

Will be making the names into an array (.class) and join the names
back together in the end (.join)

=end


#determine what letter is a vowel and which is a consonant
vowels = ['a', 'e', 'i', 'o', 'u']
consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

puts "What is your original name? (first and last name)"
original_name_given=gets.chomp

#reverse the first and last name as wholes
reverse_name=original_name_given.split(' ').reverse.join(' ')

#split the letters of the reversed names 
split_letters_of_reversed_name= reverse_name.split('')
split_letters_of_reversed_name.map! do |letter|
    if vowel.include?(letter)
      if letter == vowel[-1]
        new_letter = vowel[0]
      else  
        index = vowel.index(letter)+1
        new_letter = vowel[index]
      end
    elsif consonant.include?(letter)
        if letter == consonant[-1]
          new_letter = consonant[0]
        else
          index = consonant.index(letter)+1
          new_letter = consonant[index]
        end
    else
    	letter
    end
    end
new_name=split_letters_of_reversed_name.join('')   
