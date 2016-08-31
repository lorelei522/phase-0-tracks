# hash for interior design client log will include the follow on each client

interior_design_client = {
	name: "",
	address: "",
	age: "",
	number_of_children: "",
	decor_theme: "",
	amount_of_rooms: "",
	loves_leopard: "",
	loves_green: "",
}

# designer needs to answer the following questions for the client

puts "Name of client?"
interior_design_client[:name]=gets.chomp

puts "Age of client?"
interior_design_client[:age]=gets.chomp.to_i

puts "What is the client's address"
interior_design_client[:address]=gets.chomp

puts "How many children does the client have?"
interior_design_client[:number_of_children]=gets.chomp.to_i

puts "What is their decor theme?"
interior_design_client[:decor_theme]=gets.chomp

puts "How many rooms does the client have?"
interior_design_client[:amount_of_rooms]=gets.chomp.to_i

puts "Do they love leopard(true or false)?"
interior_design_client[:loves_leopard]=gets.chomp

puts "Do they love green(true or false)?"
interior_design_client[:loves_green]=gets.chomp

#Print the hash back out to the screen when the designer has answered all of the questions.

p interior_design_client

# what if they need to update?

puts "Do you need to update any values? Yes or No?"
update= gets.chomp.capitalize
	
if update== "Yes"
	puts "What is the value label and the new value?"
	update_answer= gets.chomp
else
	puts "Thank you for using the system!"
end

p interior_design_client

#to update you would write interior_design_client[:name]= 
