# Release 1- write a simple Module


module Shout

	def self.yell_angrily(words)
		words + "!!!" + " : ("
	end
	
	def self.yelling_happily(words)
		words + " Woohoo!!!" + " YAY" + " :)"
	end	

end	


#Driver Code for Release 1
p Shout.yell_angrily("You suck at your job")
p Shout.yelling_happily("Great work on the project.")