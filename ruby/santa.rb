#Release 0- create santa class with 3 method defined


class Santa
	def initialize
		puts "Initializing Santa instance"
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"		
	end
end

Santa1 = Santa.new
Santa1.speak
