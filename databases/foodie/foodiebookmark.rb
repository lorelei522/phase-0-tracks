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
		TriedOut BOOLEAN
	)
SQL

# create the table to store resturants already tried
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS triedout (
		id INTEGER PRIMARY KEY,
		restaurant_name VARCHAR(255),
		location VARCHAR(255),
		comment VARCHAR(255),
		TriedOut BOOLEAN
	)
SQL

# Insert new resturants to the main list

insert_table_cmd = <<-SQL
	INSERT INTO main_list (restaurant_name, location, comment, TriedOut) VALUES (?, ?, ?, 0)
SQL



	


