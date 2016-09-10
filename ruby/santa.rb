#Release 0- create santa class with 3 method defined


class Santa

#release 1: Add attributes such as gender, ethincity (which will be passed in on initialization)	
	def initialize(gender, ethincity)
		puts "Initializing Santa instance"
		@gender = gender
		@ethincity = ethincity
		@reindeer_ranking = 'Rudolph', 'Dasher', 'Dancer', 'Prancer', 'Vixen', 
		'Comet', 'Cupid', 'Donner', 'Blitzen'
		@age = 0
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"		
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
		cookie_type
	end	

	def about
		puts "Santa is a #{@gender}"
		puts "They are #{@ethincity}"
		puts "Here is a list of Santa's most preferred reindeers in order #{@reindeer_ranking}!"
	end
end


NY_Santa = Santa.new("Female", "Hispanic")
NY_Santa.speak
NY_Santa.eat_milk_and_cookies('sugar cookie')
NY_Santa.about