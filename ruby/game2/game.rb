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
		@game_progress= " __ " * word.length
		@guess_count= word.length + 3
		@letters= []
		@won_game= false
		@game_over= false
	end	

	def checker(letter)
		return puts "You already guessed #{letter}! Try another letter!" if @letters.include?(letter)
		
		if @word.include?(letter)
			puts "Great job! You are almost there"
			index= 0
			word.each_char do |i|
				if i == letter
				game_progress[index] = i
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


#Driver Code-- Initial Driver code for me to test out specifics of the game
#new_game=  Game.new("election")	
#p new_game.word
#p new_game.game_progress
#while new_game.guess_count > 0
#	puts "Guess a letter"
#	letter= gets.chomp
#	new_game.checker(letter)
#	break if new_game.game_over?
#end
#new_game.won_game


# Release 1-  Driver Code/User Interface to bridge gap between human users and the class

puts "Welcome to Guess that Word!"
puts "Player 1 please enter your name"
player_1= gets.chomp.capitalize
puts "Player 2 please enter your name"
player_2= gets.chomp.capitalize

puts "HEY HEY HEY THERE #{player_2} No cheating please look away now!"

puts "#{player_1} please enter any word(only letters. no punctuations or special characters please)"

word= gets.chomp
#create new game 
#new_game= Game.new(word)
#new_game.word
#system "clear"
#puts ""