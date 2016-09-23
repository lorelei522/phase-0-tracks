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


#Print out the initial info
p Client_Info


#Ask the user if they need to update

puts "Do you need to update any of answers? yes or no?"
update_needed= gets.chomp.downcase

if update_needed== "yes"
	puts "What info do you need to update? client_name, client_age, num_of_children, decor_theme,
			num_of_rooms, likes_leopard, likes_stripes?"
	update_field= gets.chomp
	
	puts "What is the new value for your updated field?"
	Client_Info[update_field.to_sym]= gets.chomp
	
	puts "Thank you for the update! Here is the new values for the client"
	p Client_Info
	
else
	puts "Great you are all set here is your client info again"
	p Client_Info
end







