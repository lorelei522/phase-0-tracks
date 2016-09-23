# Create program that allows the designer/user to input client info into a hash.
#Have the ability for the user to update info if needed


Client_Info = {
	client_name: "",
	client_age: "",
	num_of_children: "",
	decor_theme: "",
	num_of_rooms: "",
	likes_leopard: "",
	likes_stripes: ""
}


puts "What is the client name?"
Client_Info[:client_name]= gets.chomp

#make sure this data type is an integer
puts "What is the client's age"
Client_Info[:client_age]= gets.chomp.to_i

puts "How many children does the client have?"
Client_Info[:num_of_children]= gets.chomp.to_i

puts "What is the client's decor theme?"
Client_Info[:decor_theme]= gets.chomp

puts "How many rooms does the client have in their home?"
Client_Info[:num_of_rooms]= gets.chomp.to_i

puts "Does the client like leopard? (true or false)"
Client_Info[:likes_leopard]= gets.chomp

puts "Does the client like stripes? (true or false)"
Client_Info[:likes_stripes]= gets.chomp



p Client_Info