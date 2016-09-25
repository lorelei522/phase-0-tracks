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

#iterate through the array with each. Shows that I changed the array within the block but
#when the array is printed outside the block the change isn't forever.

broadway_musicals.each do |musical|	
	puts "My favorite musicals are #{musical.upcase}"
end
p broadway_musicals


#make a change forever with .map!
broadway_musicals.map! do |musical|
	musical.swapcase
end
p broadway_musicals	


#hash
colleges= {
	Villanova: "Villanova, PA",
	Yale: "New Haven, CT",
	Harvard: "Cambridge, MA",
	UNC: "Chapel Hill, NC",
	Northeastern: "Boston, MA"
}

colleges.each do |college, location|
	puts "#{college} is located in #{location}."
end	

#Release 2: Use Documentation

different_greetings= ["bojour", "hola", "ciao", "namaste", "salaam", "hallo"]
#will delete the greeting who's character length is less than or equal to 5
different_greetings.delete_if {
	|greeting|
	greeting.length < 5
}
p different_greetings


# question 2. Keep items that meet a certain condition

different_greetings.keep_if {
	|greeting|
	greeting.length > 5
}
p different_greetings

