#Write own method that can take a block.
#can use yield.


def learning
	puts "Hey what is the lesson of the day?"
	lesson= "Ruby"
	yield(lesson)
	yield(lesson)
	yield(lesson)
end	

learning { |lesson| puts "#{lesson} is what is being taught today." }



#array
broadway_musicals= ["Beautiful", "Wicked", "The Lion King", "Jersey Boys", "Hamilton"]

#hash
colleges= {
	Villanova: "Villanova, PA"
	Yale: "New Haven, CT"
	Harvard: "Cambridge, MA"
	UNC: "Chapel Hill, NC"
	Northeastern: "Boston, MA"
}
