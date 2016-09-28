#SantaCon Simulator

#Release 1- update with the following attributes

#gender, which will be a string passed in on initialization
#ethnicity, which will be a string passed in on initialization
#reindeer_ranking, an array of reindeer from most preferred to least preferred. This is not passed in on initialization; it simply gets a default value of ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
#age, which is not passed in on initialization and defaults to 0

class Santa

	def initialize(gender, ethnicity)
		@gender= gender
		@ethnicity= ethnicity
		reindeer_ranking= ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		age= 0
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
#nick= Santa.new
#nick.speak
#nick.eat_milk_and_cookies("chocolate chip")		

#Driver code for Release 1

#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")

#Iterate through the array of new Santas and conduct each of the instances
#santas.each do |x|
#	x.speak
#	x.eat_milk_and_cookies("snickerdoodle")
#end	

#This will create 7 santas with a different gender and ethnicity from the gender and ethnicities arrays
# and store the new santas in a santas array.
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

