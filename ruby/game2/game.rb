#design a game that will take a word from 1 player. It gives the 2nd player a number of chances
# to guess the word.
# class Game- should be initialize with a word. A method to check the letters of the word
# guessed by player 2.
# Track progress of the word, track number of guesses, game over and game won methods.
# number of guesses available is related to the length of the word (.length)
# store the letters in an empty array

#method to check letters-  
	# will see if the letter has been checked before. 
	# Push the letter into the letter array. 
	# Give a message if it correct, give a message if wrong.
	# Show the players the progress of the word  "__ __ __ __"
	# Show the players how many guesses they have left.

class Game

	attr_reader :word
	attr_accessor :word, :game_progress, :guess_count, :letters

	def initialize(word)
		@word = word
		@game_progress= word.length * "__"
		@guess_count= word.length + 3
		@letters= []
	end	

	def checker(letter)

end	