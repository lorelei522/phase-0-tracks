#Release 1: Write a Simple Module

#module Shout
  # add angry method. (Release 1)
#  def self.yell_angrily(words)
#  	words + "!!!" + " :("
#  end
  # add a happy yelling method. (Release 1)
#  def self.yell_happily(words)
#  	words + "!!!" + " WOOHOO" + " :D"
#  end
#end

#Add driver code to see if the above Shout module works (Release 1)

#p Shout.yell_angrily("This bloody code is not working")
#p Shout.yell_happily("I graduated DBC")

#Release 3: make a mixin version of Shout Module instead
#it would be like Shout is the module and the classes are Happy or Angry

module Shout
	#remember doesn't need the self anymore since its now part of a mixin
	def yell_angrily(words)
 		words + "!!!" + " :("
	end

	def yell_happily(words)
  		words + "!!!" + " WOOHOO" + " :D"
	end
end


class Parents
	include Shout
end	
#general as in the army, marine corps, or air force
class General
	include Shout
end	

#add driver code to show the same class with the two methods.

mom= Parents.new
p mom.yell_angrily("Clean your room already")
p mom.yell_happily("I am so proud of you. You are going to college")

army= General.new
p army.yell_angrily("You scum! Drop and give me 50")
p army.yell_happily("Proud of you soldier")
#please note a general would never say woohoo :)
