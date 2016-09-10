#Release 0- create santa class with 3 method defined


class Santa
	def initialize
		puts "Initializing Santa instance"
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"		
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
		cookie_type
	end	
end


NY_Santa = Santa.new
NY_Santa.speak
NY_Santa.eat_milk_and_cookies('sugar cookie')