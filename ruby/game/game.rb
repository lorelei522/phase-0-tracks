=begin
	
write a class designed for a computer program to use, not one designed
for a human to use directly. Use driver code to bridge the gap between
human and Ruby Class.

puts "Player one what is your secret word?"
secret_word= gets.chomp

puts "Player 2, please guess the secret word 1 letter at a time"
letter_guessed= gets.chomp

Guesses are limited. Guesses available is related to the length of the word.
Repeated guesses do not count against the user.

*WHILE the guess amout is less than the length of the word
input -user will guess a letter

IF letter is in the word
	puts "NICE JOB"
	replace the empty space with the letter
ELSE if letter not in the word
	puts "Sorry try again"

User needs to see how many guesses they have left after each attempt.
save guesses so they don't count against the user		

The user should get a congratulatory message if they win, and a taunting 
message if they lose.	

attr_reader (makes it readable)
attr_accessor (makes it readable and writeable)

=end

class Game

	attr_reader :progress
	attr_accessor :secret_word :letter_guessed :guess_count :game_over

	def intialize(secret_word)
		@secret_word
		@letter_guessed
		@game_over = false
		@game_won = false
		@letter_guessed = []
		@guess_count = 0
	end	
end
