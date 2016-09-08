#Worked with Kevin Goltermann, our guide was Bison

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a hash for groceries
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: def add_item
# adds each item to hash and quantity
# output: prints a hash with items and quantity

# Method to remove an item from the list
# input: item to be removed
# steps: using .delete
# output: prints new hash without deleted item

# Method to update the quantity of an item
# input: item and quantity that needs to be updated
# steps: take existing item in hash and update the number 
# output: new hash with updated quantity

# Method to print a list and make it look pretty
# input: puts statement	
# steps: uses hash to print out each item and the respective quantity
# output: prints method with info

#------------Release 1--------------#
def new_hash(food, quantity = 1)
	groceries_list = {}
	food.split.each { |item| groceries_list[item] = quantity}
	groceries_list
end

def add(groceries_list, food, quantity)
	groceries_list[food] = quantity
end

def remove(groceries_list, food)
		groceries_list.delete(food)
end    

def update(groceries_list, food, quantity)
	groceries_list[food]=quantity
end

def nice_print(groceries_list)
	groceries_list.each { |food, quantity| puts "#{quantity} of #{food}" }
  	
end

variable= new_hash('lemonade tomatoes onions ice-cream')
p variable
updated_variable = add(variable, 'ice-cream', 4)
p variable
update(variable, 'lemonade', 2)
p variable
update(variable, 'tomatoes', 3)
p variable
remove(variable, 'lemonade')
p variable
update(variable, 'ice-cream', 1)
p variable
nice_print(variable)
variable


=begin
	_____Release 4- Reflect_____
I learned that proper pseudcode can make things look more clear and readable. So
that when you start coding it comes to you faster.

For something like a grocery list a hash makes total sense, we have food items and we have 
their values. It keeps the info consistent.

The method returns what the defined method arugument is telling it to do.

You can pass information through methods by creating variables.

I can define methods and create hashes/arrays in methods and work on them outside of the method.

end

