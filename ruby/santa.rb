#Release 0- create santa class with 3 method defined


class Santa
	#Release 3: make the getter methods that you wrote before in a shorter way
	attr_reader :reindeer_ranking
	#release 3: make setter method the shorter way (readable/writable)
	attr_accessor :gender, :ethincity, :age

#release 1: Add attributes such as gender, ethincity (which will be passed in on initialization)
#release 4: for our final project to work you must take out the gender, ethincity arguement	
	def initialize#(gender, ethincity)
		puts "Initializing Santa instance"
		@gender = gender
		@ethincity = ethincity
		@reindeer_ranking = ['Rudolph', 'Dasher', 'Dancer', 'Prancer', 'Vixen', 
		'Comet', 'Cupid', 'Donner', 'Blitzen']
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
	#release 2 take a reindeers name as argument and move reindeer to last place
	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete(reindeer_name)
		@reindeer_ranking << reindeer_name
	end

	# sample of a getter method just returning age(this is the long way)
	#def age
	#	@age
	#end	
	# sample of a getter method just ethincity(this is the long way)
	#def ethincity
	#	@ethincity
	#end	
	
	# sample of a setter method. Makes it writable. Change an attribute from outside 
	#the class (this is the long way)
	#def gender=(new_gender)
	#	@gender = new_gender
	#end	
end

=begin
NY_Santa = Santa.new("Female", "Hispanic")
NY_Santa.speak
NY_Santa.eat_milk_and_cookies('sugar cookie')
#NY_Santa.about
#sample of a getter method being called
p NY_Santa.age
p NY_Santa.ethincity
#sample of setter method for Gender, Release 2
NY_Santa.gender = "Male"
NY_Santa.celebrate_birthday
#when calling .about or p NY_Santa- Donner will now be in the back of the pack
NY_Santa.get_mad_at("Donner")
NY_Santa.about
p NY_Santa
=end

#------------------
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
#-------------------------

#Release 4: let make a program that does 50 santas. play around with how many santas
#randomly select items in an array. Look at Docs. .Sample lets you get randoms
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Unicorn", "prefer not to say", "Mystical"]

santas = []
30.times do
	santa= Santa.new
	santa.gender= example_genders.sample             #make this get randoms
	santa.ethincity= example_ethnicities.sample      #make this get randoms
	santa.age= rand(140)							#make santas age be randome from 0-140
	santas << santa
end	

#Release 4 contin: print out the attributes of each Santa using 
#the instance methods that give you access to that data.

santas.each_with_index do |santa, i|
	puts "Santa #{i + 1} is #{santa.age} years old, has an ethincity of #{santa.ethincity} and is
		#{santa.gender} when it comes to gender. 
		This is their reindeer ranking #{santa.reindeer_ranking}."
end		