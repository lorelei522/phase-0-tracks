#SantaCon Simulator

#Release 1- update with the following attributes
#gender, which will be a string passed in on initialization
#ethnicity, which will be a string passed in on initialization
#reindeer_ranking, an array of reindeer from most preferred to least preferred. This is not passed in on initialization; it simply gets a default value of ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
#age, which is not passed in on initialization and defaults to 0

#Release 2-  add two getter methods that return @age and @ethnicity
#celebrate birthday take the @age and add 1 year for a new_age
#get_mad_at method take a reindeer name as an arugument. make reindeer ranking accessible with @


#Release 3- Refactor take out those getter methods for age and ethnicity and just put them
#in attr_reader. Put gender as attr_accessor so it can be changed outside the class

#Release 4- Create a bunch of santas. Use an array to house them. Use .sample to have
# randomly selected ethnicities and gender from the ehtnicity and gender arrays.
# use rand to give the santas a random age from 0 to 140
class Santa

	attr_reader :reindeer_ranking
	attr_accessor :gender, :age, :ethnicity

	def initialize (gender, ethnicity)
		@gender= gender
		@ethnicity= ethnicity
		@reindeer_ranking= ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age= 0
		puts "Initializing Santa instance...."
	end		

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end	

	def celebrate_birthday
		new_age= @age + 1
		p new_age
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
		p @reindeer_ranking
	end	

	#def gender=(new_gender)
	#	@gender=new_gender
	#end	

	#def age
	#	p @age
	#end
	
	#def ethnicity
	#	p @ethnicity
	#end		

	def about
		puts "This Santa is #{@ethnicity} and #{@gender} and is #{@age}."
	end	
end



#Driver Code for Release 0
#nick= Santa.new("female", "Latino")
#nick.speak
#nick.eat_milk_and_cookies("chocolate chip")
#nick.celebrate_birthday
#nick.get_mad_at("Dancer")
#p nick.gender= "male"		

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
#santas = []
#example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#example_genders.length.times do |i|
#  santas << Santa.new(example_genders[i], example_ethnicities[i])
#end

#santas.each do |x|
#	x.celebrate_birthday
#	x.age
#	x.ethnicity
#end	


#Release 4

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santas= []

50.times do
	santa=  Santa.new(example_genders.sample, example_ethnicities.sample) 
	santa.age= rand(140)
	santas << santa
end	

santas.each do |x|
	puts "This santa has a gender of #{x.gender} and ethnicity of #{x.ethnicity}"
	puts "There #{x.age} years old!"
end

