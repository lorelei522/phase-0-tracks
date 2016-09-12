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

	attr_reader :secret_word
	attr_accessor :secret_word, :letters_guessed, :guess_count, :game_over, :game_won, :progress

	def initialize(secret_word)
		#to show dashes use the length and "_"
		@progress= "_" * secret_word.length
		@secret_word = secret_word	
		#they must guess the word in the word length + 4 extra tries
		@guess_count = secret_word.length + 4
		@game_over = false
		@game_won= false
		@letters_guessed = []
		
	end	
	def letter_checker(letter)
	  	return puts "#{letter} has already been guessed! Use another letter" if @letters_guessed.include?(letter)
	  	if @secret_word.include?(letter)
	  		puts "woohoo keep going!"
	  		char_index = 0
	  		secret_word.each_char do |x|
	  			if x == letter
	  			progress[char_index] = x
	  			end
	  			char_index += 1
	  		end
	  		puts @progress
	  	# If letter is not included in the secret word:
	  	else
	  		puts "Wrong letter. Guess again"
	  		puts @progress
	  	end	
	  @letters_guessed << letter	
	  @guess_count -= 1	
	  puts "#{@guess_count} guess(es) left!"
	  @progress
	end 
		#first try before at getting the checker to work :(
		#if @secret_word.include?(letter)
		#	puts "NICE JOB!! woohoo"

		#	letter_index= 0
		#	secret_word.each_letter do |x|
		#		if x == letter
		#		progress[letter_index] = x
		#		end
		#		letter_index += 1	
		#	end
		#	puts @progress
		#else 
		#	puts "Nice try! Guess again please"
		#	puts @progress
		#end	
		#Let them know how many guesses they have left
		#@letters_guessed << letter
		#@guess_count -= 1
		#puts "#{guess_count} guess(es) left!!"
		#@progress		
	#troubleshoot need to add a lost game method
	def game_over?
		if @progress == @secret_word || @guess_count == 0
				@game_over = true
		end
		@game_over
	end			
	#add method that will show what it will look like if the guess the word correctly in time and not in time.
	def game_won
		if @progress == @secret_word
				puts "WOOHOO YOU WON! THAT IS THE WORD!"
				game_won = true
		else 
			puts "GAME OVER YOU LOSE"	
		end
	end	
end
#Driver code to test out initialize
puts "Player 1 enter your secret word. Player 2 please look away"
secret_word = gets.chomp
# set secret word Game.new
game = Game.new(secret_word)
game.secret_word

#woohoo found a way to not let the Player 2 see the word that was written by Player 1
system "clear"
#initial message for Player 2 for the beginning of the game
puts "Player 2 you have #{game.guess_count} guesses to guess the secret word. Good Luck!"
game.progress
while game.guess_count > 0
	puts "Player 2 guess a letter"
	letter = gets.chomp
	game.letter_checker(letter)
	#look up if i need a break here just in case 
	break if game.game_over?
end
game.game_won
#tried different outcomes with failing to meet the word within the guess count
#looks to be working for all outcomes