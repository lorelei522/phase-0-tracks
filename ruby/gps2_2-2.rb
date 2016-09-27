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