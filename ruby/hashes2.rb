# Program that allows the designer/user to input client info into a hash.
#Have the ability for the user to update info


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

puts "What is the client's age"
Client_Info[:client_age]= gets.chomp


p Client_Info