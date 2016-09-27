#Worked with Ryan Austin(Driver)
#Guide: John Dees

# Method to start the hash 
# Steps:
  # Take a string and assign a key and have a default value of 1
  # Go through string and seperate each item and put into hash
  # Print the hash
# End Method
def hash_start(food, quantity=1)
	grocery_list = {}

	food.split.each { |item| grocery_list[item] = quantity }
		
	grocery_list
end

 list = hash_start("carrots apples cereal pizza")
p list

# Method to add extra items
  # Input take new food item and new quantity
  # Steps:
    # Insert food item into hash with new quantity
# End Method 

def add(grocery_list, food, quantity)
	grocery_list[food] = quantity
end 

add(list, "popcorn", 5)

p list

# Method for Removing items
  # Input take an existing food item without quantity
    # Steps:
    # Use delete method to remove the food item
# End Method 

def remove(grocery_list, food)
	grocery_list.delete(food)
end

remove(list, "pizza")

p list

# Method to update quantity
  # Input take a food item and the updated quantity
    # Steps:
    # Take food item and search for it's value
    # Insert new quantity into key value
# End Method 

def update(grocery_list, food, quantity)
    grocery_list[food] = quantity if grocery_list.has_key?(food) 

end

update(list, "carrots", 5)
p list

# Method for printing final result
  # Input take hashes name 
  # Steps 
    # Iterate through hash printing each food item and quantity
  # Output Final list 
# End Method 

def nice_print(grocery_list)
	grocery_list.each { |food, quantity| puts "We need #{quantity}, of #{food}."}
end

nice_print(list)

=begin

#Reflection
What did you learn about pseudocode from working on this challenge?

I learned that proper pseudocoding makes life easier when you start to
actually code your work. Taking the time to think it out beforehand made
this assignment go smoothly

What are the tradeoffs of using arrays and hashes for this challenge?
For the kind of list they wanted us to have a hash was definitely necessary.
A hash properly stored the food item and the quantity.

What does a method return?
The method will return the action stated within the method.

What kind of things can you pass into methods as arguments?
Strings, integers, hashes, arrays

How can you pass information between methods?
You can use what is produced from a previous method and use it as the argument
for the next method. In the assignment above we created a hash and then used that
hash in the arguments the other methods.

What concepts were solidified in this challenge, and what concepts are still confusing?
A big concept that was solidified is that I am able to pass information between methods.
Another thing is really taking the time to refactor. I will remind myself of the 3 keys
to refactoring (readable, dry, efficiency). Taking the time to refactor will really help me
make sure that my code is the best I can do.

=end