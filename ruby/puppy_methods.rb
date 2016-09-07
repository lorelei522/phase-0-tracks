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
end		

jasper= Puppy.new
jasper.speak(4)
jasper.roll_over