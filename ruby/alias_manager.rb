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
def alias_converter(original)
vowel = ['a', 'e', 'i', 'o', 'u']
consonant = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

letter= 0

original_name_given= original.downcase
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
new_name= split_letters_of_reversed_name.join('').split(' ').map {|i| i.capitalize}.join(' ')
end

#Make sure the first letter of each word gets capitalized and join back.
#Do the above block to make it happen.

=begin
Release 1: Provide a user interface that lets a user enter a name and get a 
fake name back. Let the user do this repeatedly until they decide to quit by 
typing 'quit'. (They might just hit Enter to continue.)
=end

inputed_name = ""
all_names_in_session = {}

until inputed_name == "quit" 
  puts "What is your original name? (first and last name). If done write 'quit' Thank you!"
  inputed_name = gets.chomp
    if inputed_name != "quit"
      all_names_in_session[inputed_name] = alias_converter(inputed_name)
      alias_converter(inputed_name)
    end
end
#Release2: with the all the stored names from the session. 
#Print them out like Agent name is actually original name

all_names_in_session.each do |original, agent_name|
  puts "#{agent_name} is actually #{original}. MIND BLOWN!"
end  