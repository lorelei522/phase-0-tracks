#6.4- Release 2. Declare the following classes Bird and plane.
#we need to write the Flight module that will affect these 2 classes
# above the class declarations

module Flight
	#we don't need 'self' here for defining our method because this module is a mixin designed
	#to add instance methods to a class we don't need 'self'
	def take_off(altitude)
		puts "Taking off and ascending until reaching #{altitude} altitude"
	end
end		

#Release2: 3. add module to your Bird and Plane classes

class Bird
	include Flight 
end

class Plane
	include Flight 
end	

#Release2: 4. see the new classes with driver code now that we added flight

bird= Bird.new
bird.take_off(800)

plane= Plane.new
plane.take_off(30000) 