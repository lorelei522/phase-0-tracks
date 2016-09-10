#Release 1: Write a Simple Module

module Shout
  # add angry method. (Release 1)
  def self.yell_angrily(words)
  	words + "!!!" + " :("
  end
  # add a happy yelling method. (Release 1)
  def self.yell_happily(words)
  	words + "!!!" + " WOOHOO" + " :D"
  end
end

#Add driver code to see if the above Shout module works (Release 1)

p Shout.yell_angrily("This bloody code is not working")
p Shout.yell_happily("I graduated DBC")