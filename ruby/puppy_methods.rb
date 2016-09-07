class Puppy
	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(num_barks)
		num_barks.times {puts "Woof!"}
	end

	def roll_over
		puts "*rolls over*"
	end

	def dog_years(human_years)
		human_years * 7		
	end	

	def bang
		puts "*plays dead*"
	end	

	def initialize
		puts "Initializing new puppy instance..."
	end	
end		

jasper= Puppy.new
jasper.speak(4)
jasper.roll_over
puts jasper.dog_years(3)
jasper.bang
