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
	puts "NICE JOB!"
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

	attr_reader :progress, :secret_word
	attr_accessor :secret_word, :letters_guessed, :guess_count, :lost_game, :won_game

	def initialize(secret_word)
		@secret_word = secret_word
		@progress= "-" * secret_word.length
		@won_game = false
		@lost_game= false
		@letters_guessed = []
		@guess_count = secret_word.length
	end	

	#letter checking method. If they guess correctly tell them so. if they guess incorrectly tell
	#them to do it over again.
	def letter_checker(letter)
		#let them know if they already guessed the letter they just entered
		return puts "#{letter} has already been guessed" 
		if @letter_guessed.include?(letter)
		
		if secret_word.include?(letter)
			puts "NICE JOB!! woohoo"

			letter_index= 0
			secret_word.each_letter do |i|
				if i == letter
				progress[letter_index] = i
				end
				letter_index += 1	
			end
			puts @progress
		else 
			puts "Nice try! Guess again please"
			puts @progress
		end	
		#Let them know how many guesses they have left
		@letters_guessed << letter
		@guess_count -= 1
		puts "#{guess_count} guess(es) left!!"
	end	

	#add method that will show what it will look like if the guess the word correctly in time.
	def won_game
		if @progress == @secret_word
			puts "WOOHOO YOU WON! THAT IS THE WORD!"
				won_game = true
		else 
			puts "GAME OVER YOU LOSE"	
		end
	end			

	#troubleshoot need to add a lost game method
	def lost_game
		if @progress == @secret_word || @guess_count == 0
				@lost_game = true
		end
		@lost_game
	end			
end


#Driver code to test out intialize

puts "What is your secret word player 1?"
secret_word= gets.chomp.downcase

game = Game.new(secret_word)
game.secret_word
game.progress
while game.guess_count > 0
	puts "Player 2 guess a letter"
		letter = gets.chomp
		game.letter_checker(letter)
		break if game.lost_game
end
game.won_game		
