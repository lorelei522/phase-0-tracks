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

# method for winning the game
	# IF game_progress== word
		#won_game TRUE
	# else person has lost the game	

# method for game over-
	# IF game_progress == word or the guess count == 0
		#TRUE



class Game

	attr_reader :word
	attr_accessor :word, :game_progress, :guess_count, :letters

	def initialize(word)
		@word = word
		@game_progress= "_" * word.length
		@guess_count= word.length + 3
		@letters= []
		@won_game= false
		@game_over= false
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

	def won_game
		if @game_progress == @word
			puts "WINNER WINNER CHICKENT DINNER!. You won the game, the word was #{@word}!"
			@won_game= true
		else
			puts "Uh oh. You lost :( "
		end
	end		

	def game_over?
		if @game_progress == word || @guess_count == 0
			@game_over = true
		end
		@game_over
	end		
end


#Driver Code

new_game=  Game.new("election")	
p new_game.word
p new_game.game_progress