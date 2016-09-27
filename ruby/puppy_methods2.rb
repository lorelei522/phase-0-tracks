class Puppy

	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end
		
	def speak(number)
		number.times {puts "Woof!"}
	end	

	def roll_over
		puts "*rolls over*"
	end

	def dog_years(human_years)
		dog_years= human_years * 5
		puts "This dog is #{dog_years} years old in dog years!"
	end

	def wag_tail
		puts "Wagging its tail to the left and right!"
	end	
end

#Driver Code
fido= Puppy.new
fido.fetch("ball")
fido.speak(5)	
fido.roll_over
fido.dog_years(2)
fido.wag_tail