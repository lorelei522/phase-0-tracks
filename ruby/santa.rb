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
	#Release 2, Age Santa by 1 year Setter methods make it readable
	def celebrate_birthday
		@age += 1
		p @age
	end	
	# sample of a getter method just returning age
	def age
		@age
	end	
	# sample of a getter method just ethincity
	def ethincity
		@ethincity
	end	
	# sample of a setter method. Makes it writable. Change an attribute from outside 
	#the class
	def gender=(new_gender)
		@gender = new_gender
	end	
end


NY_Santa = Santa.new("Female", "Hispanic")
NY_Santa.speak
NY_Santa.eat_milk_and_cookies('sugar cookie')
NY_Santa.about
#sample of a getter method
p NY_Santa.age
#sample of setter method for Gender, Release 2
NY_Santa.gender = "Male"
NY_Santa.celebrate_birthday


# Release 1: they game this sample of instances in an array to run through:
#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")

#Release 1, you can run the above array of santas in the below to see if the method works on
#each of them
#santas.each do |santas|
#	santas.about
#end

#-------------------------
#Release 1 :Notice how the code above is a bit repetitive as we keep adding Santa instances 
#into the array? That's your cue to possibly refactor. Note that the below code
#would also work (as would several other solutions):

#santas = []
#example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#example_genders.length.times do |i|
#  santas << Santa.new(example_genders[i], example_ethnicities[i])
#end


#this will help it go through all the refactoring from above.
#santas.each do |santas|
#	santas.about
#end