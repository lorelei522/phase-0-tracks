#SantaCon Simulator


class Santa

	def initialize
		puts "Initializing Santa instance...."
	end		

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end	
end



#Driver Code for Release 0
nick= Santa.new
nick.speak
nick.eat_milk_and_cookies("chocolate chip")		