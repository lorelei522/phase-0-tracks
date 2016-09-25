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

number_array= [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#will delete the digits that are even in the array
number_array.delete_if {
	|digit|
	digit.even?
}
p number_array


# question 2. Keep items that meet a certain condition
number_array2= [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
number_array2.keep_if {
	|digit|
	digit > 4
}	 

p number_array2

# question 3. A different method that filters a data structure for only
# items satisfying a certain condition 

number_array3= [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
odd_numbers= number_array3.select! {
	|digit|
	digit.odd?
}
p odd_numbers

