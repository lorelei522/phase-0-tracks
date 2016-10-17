# Foodie Trail is an app that will have two tables. 
# 		Table one will have restaurants that you want to try
# 		Table two will have restaurants you have tried already.
# 		You can insert new restaurants.
# 		Delete resturants from try list.
# 		After you try a resturant it moves from one table to another & gets deleted from original.
# 		3 parts to the main list- name, location, comment, triedout

#require sqlite3
require 'sqlite3'


#create the database
db = SQLite3::Database.new("foodiebookmark.db")
db.results_as_hash = true

#create different tables
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS main_list (
		id INTEGER PRIMARY KEY,
		restaurant_name VARCHAR(255),
		location VARCHAR(255),
		comment VARCHAR(255),
		tried_out BOOLEAN
	)
SQL

# create the table to store resturants already tried
create_table_cmd2 = <<-SQL
	CREATE TABLE IF NOT EXISTS triedout (
		id INTEGER PRIMARY KEY,
		restaurant_name VARCHAR(255),
		location VARCHAR(255),
		comment VARCHAR(255),
		tried_out BOOLEAN
	)
SQL

# Insert new resturants to the main list
insert_table_cmd = <<-SQL
	INSERT INTO main_list (restaurant_name, location, comment, tried_out) VALUES (?, ?, ?, 0)
SQL

#delete restaurants you don't want on the main list anymore
delete_restaurant_cmd = <<-SQL
	DELETE FROM main_list WHERE id = ?
SQL

#update TriedOut to true when the user tells the program they have been there.
#right after move that restaurant from main list to tried list and delete from main list
update_restaurant_cmd = <<-SQL
	UPDATE main_list SET tried_out = 1 WHERE id = ?; 
SQL

#Copy restaurant from main_list to triedout when TriedOut in main_list = 1
#Delete restaurant from main_list after.
move_restaurant_cmd = <<-SQL
	INSERT INTO triedout (restaurant_name, location, comment, tried_out) 
	SELECT main_list.restaurant_name, main_list.location, main_list.comment, main_list.tried_out 
	FROM main_list WHERE tried_out= 1	
SQL

delete_restaurant_tried_cmd = <<-SQL
	DELETE FROM main_list WHERE tried_out= 1
SQL

#------------------------------------------------------------------------------------
#Add methods to complete the above tasks

#method to add restaurants
#Must reference the variable, the table, name, location and comment
def insert_restaurants(db, insert_table_cmd, restaurant_name, location, comment)
	db.execute(insert_table_cmd, [restaurant_name, location, comment])
end

#method to delete a restaurant from the main_list. Using the ID
def delete_restaurant_main(db, delete_restaurant_cmd, id)
	db.execute(delete_restaurant_cmd, id)
end

#method to update TriedOut. Finding it by id. Move the restaurant to triedlist
def update_restaurant(db, update_restaurant_cmd, move_restaurant_cmd, delete_restaurant_tried_cmd, id)
	db.execute(update_restaurant_cmd, id)
	db.execute(move_restaurant_cmd)
	db.execute(delete_restaurant_tried_cmd)	
end

#method to move from one list to another on basis of TriedOut being true
# def move_restaurant(db, move_restaurant_cmd)
#  	db.execute(move_restaurant_cmd)
# end

#Show both lists "pretty"

def print_main_list(db)
	mainlist= db.execute("SELECT * FROM main_list")
	mainlist.each do |restaurant|
		puts restaurant["id"].to_s + ") "+ restaurant['restaurant_name'] + " is located at " + restaurant["location"]
		puts "Here are your comments about #{restaurant['restaurant_name']}: #{restaurant['comment']}"
		# if restaurant['TriedOut']== 0
		# 	puts "You haven't tried this restaurant yet!"
		# else
		# 	"You tried this resturant already!"
		# end			
	end	
end

#print out the triedout list pretty

def print_tried_list(db)
	triedlist= db.execute("SELECT * FROM triedout")
	triedlist.each do |restaurant|
		puts restaurant["id"].to_s + ") "+ restaurant['restaurant_name']
		puts "Here are your comments about #{restaurant['restaurant_name']}: #{restaurant['comment']}"
	end	
end

#CREATE THE TABLES
db.execute(create_table_cmd)
db.execute(create_table_cmd2)


#User Interface

puts "Welcome to the Foodie Trail! Great way to keep track of all the restaurants you want to try!"
puts "Lets get started. Please choose from the following options:"
puts "  Insert   	-Add new restaurants to your main list"
puts "  Delete   	-Delete any resturants from your main list(Yup that infestation doesn't sound good)"
puts "  Update   	-Did you finally go?!? Update that resturant to having tried it out!"
puts "  Mainlist 	-See your main list and head out!"
puts "  Triedlist     -Relive the happy stomach moments and look at where you've been!"
puts "  Exit          -Pasta la vista baby! Bye"

user_input= gets.chomp.capitalize

while user_input != 'Exit'
 	if user_input == 'Insert'
 		puts "What is the name of the new restaurant?"
 		restaurant_name= gets.chomp
 		puts "Where is it located?"
 		location= gets.chomp
		puts "Any comments? ie. Must try the dessert etc."
		comment= gets.chomp

		insert_restaurants(db, insert_table_cmd, restaurant_name, location, comment)

		puts "Here is your current list to try:"
		print_main_list(db)
	
	elsif user_input== 'Delete'
		puts "Here is your current list:"
		print_main_list(db)
		puts "Which restaurant would you like to delete? Choose the number"
		id= gets.chomp.to_i

		delete_restaurant_main(db, delete_restaurant_cmd, id)

		puts "Here is your current list to try:"
		print_main_list(db)	

	elsif user_input== 'Update'
		puts "Here is your current list:"
		print_main_list(db)
		puts "Would you like to update any of these restaurants to having tried it? Choose the number"
		id= gets.chomp.to_i

		update_restaurant(db, update_restaurant_cmd, move_restaurant_cmd, delete_restaurant_tried_cmd, id)

		puts "Here is your current list that you still need to try:"
		print_main_list(db)

		puts "Here is the list of restaurants that you've already tried:"
		print_tried_list(db)

	elsif user_input== 'Mainlist'
		puts "Here is your current list to try:"
		print_main_list(db)

	elsif user_input== 'Triedlist'
		puts "Here is the list of restaurants that you've already tried:"
		print_tried_list(db)

	else	
		puts "Invalid task"
	end	

	puts "Anything else you would like to do today: Insert, Delete, Update, Mainlist, Triedlist, Exit"
	user_input= gets.chomp.capitalize	
end



