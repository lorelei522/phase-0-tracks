# Release 1- write a simple Module


#module Shout

#	def self.yell_angrily(words)
#		words + "!!!" + " : ("
#	end
	
#	def self.yelling_happily(words)
#		words + " Woohoo!!!" + " YAY" + " :)"
#	end	

#end	

#Driver Code for Release 1
#p Shout.yell_angrily("You suck at your job")
#p Shout.yelling_happily("Great work on the project.")


#Release 3
module Shout

	def yell_angrily(words)
		words + "!!!" + " : ("
	end
	
	def yelling_happily(words)
		words + " Woohoo!!!" + " YAY" + " :)"
	end	

end	

class Teacher
	include Shout
end

class Parent
	include Shout
end

mom= Parent.new
p mom.yell_angrily("Clean your room")
p mom. yelling_happily("I am so proud of you!")	

ms_smith= Teacher.new
p ms_smith.yell_angrily("Stop talking and take your seat")
p ms_smith.yelling_happily("No homework this weekend!")

