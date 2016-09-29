#Release 2
#Create a class for a bird and a plane
#create a Flight module above the classes for Bird and Plane

module Flight

	def take_off(altitude)
		puts "Taking off and ascending until reaching #{altitude}..."
	end
		
end	





class Bird

	include Flight

end

class Plane

	include Flight

end

#Driver Code

bird=  Bird.new
bird.take_off(800)

plane= Plane.new
plane.take_off(30000)