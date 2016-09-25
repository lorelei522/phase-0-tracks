# define a method that will take an array and an integer to search for.
#if the integer is in the array it will return the index(location) of the integer
#else the integer is not in the array it will return nil
# use .length to get the index

array= [10, 11, 12, 13, 14, 15, 16, 17]

def search_array(array, number)
	index= nil
	if array.include? number
		index= 0
		while index < array.length
			if array[index] == number
				return index
			else
			index += 1
			end
		end
	end			
end

p search_array(array, 12)   #will return 2
p search_array(array, 45)	#will return nil


