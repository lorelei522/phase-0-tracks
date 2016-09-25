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
p number_array
number_array.delete_if {
	|digit|
	digit.even?
}
p number_array


# question 2. Keep items that meet a certain condition
number_array2= [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p number_array2
number_array2.keep_if {
	|digit|
	digit > 4
}	 
p number_array2

# question 3. A different method that filters a data structure for only
# items satisfying a certain condition 

number_array3= [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p number_array3
odd_numbers= number_array3.select! {
	|digit|
	digit.odd?
}
p odd_numbers

#4 drops but not including the number
number_array4= [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p number_array4

new_number_array4= number_array4.drop_while {
	|digit|
	digit < 5
}

p new_number_array4


#All the above for hashes
#1
hash1 = {
	one: 1 ,
	two: 2 ,
	three: 3 ,
	four: 4 ,
	five: 5 ,
	six: 6 ,
	seven: 7 ,
	eight: 8 ,
	nine: 9 ,
	ten: 10
}
puts "Here is Hash 1:"
p hash1
#will delete from hash if the word(the key in this example) length is less than=4
hash1.delete_if {
	|word, integer|
	word.length <= 4
}

p hash1

#2
hash2 = {
	one: 1 ,
	two: 2 ,
	three: 3 ,
	four: 4 ,
	five: 5 ,
	six: 6 ,
	seven: 7 ,
	eight: 8 ,
	nine: 9 ,
	ten: 10
}

puts "Here is Hash 2"

p hash2
#will keep the items that are even
hash2.keep_if {
	|word, integer|
	integer.even?
}

p hash2