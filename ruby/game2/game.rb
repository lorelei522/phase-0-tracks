#design a game that will take a word from 1 player. It gives the 2nd player a number of chances
# to guess the word.
# class Game- should be initialize with a word. A method to check the letters of the word
# guessed by player 2.
# Track progress of the word, track number of guesses, game over and game won methods.
# number of guesses available is related to the length of the word (.length)
# store the letters in an empty array

#method to check letters-  
	# will see if the letter has been checked before. if True statement?
	# Push the letter into the letter array. 
	# Give a message if it correct, give a message if wrong.
	# Show the players the progress of the word  "__ __ __ __"
	# Show the players how many guesses they have left.

class Game

	attr_reader :word
	attr_accessor :word, :game_progress, :guess_count, :letters

	def initialize(word)
		@word = word
		@game_progress= "_" * word.length
		@guess_count= word.length + 3
		@letters= []
	end	

	def checker(letter)
		puts "You already guessed #{letter}! Try another letter!" if @letters.included?(letter)

		if word.include?(letter)
			puts "Great job! You are almost there"
			index= 0
			word.index do |i|
				if i == letter
				game_progress[index]= i
				end
				index += 1
			end
			puts @game_progress
		else
			puts "Incorrect letter! Try another letter!"
			puts @game_progress
		end
	
		@guess_count -= 1
		@letters << letter
		@game_progress
		puts "Choose wisely...you have #{@guess_count} guess(es) left!"					
	end	
end


#Driver Code

new_game=  Game.new("election")	
p new_game.word
p new_game.game_progress