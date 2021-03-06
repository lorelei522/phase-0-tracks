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


#Release 1: Calculate Fibonacci Numbers
# start with 0 and 1. keep adding numbers from the previous 2 and push in an array
#calling the method id. fibonacci(6)---- [0,1,1,2,3,5]
#use the index of the last two numbers [-2] and [-1] to make the next number

def fibonacci(number)
	#the initial array needs 0 and 1 per instruction
	array= [0,1]
	#make if and elsif about if the number is 0 or 1. Any number from 2 on will have the same concept
	if number == 0
		p []
	elsif number == 1
		p [0]
	#anything after fibonacci(1)
	else
		until array.length== number
			#use the last two numbers indexs'
			next_num= array[-2] + array[-1]
			#push those new numbers into the array
			array.push(next_num)
		end
	p array
	end			
end	

fibonacci(0)
fibonacci(1)
fibonacci(2)
fibonacci(3)
fibonacci(4)
fibonacci(5)
fibonacci(6)
fibonacci(100) #should be 218922995834555169026

# Release 2: Sort an array
# Bubble sort

def bubble_sort(array2)
  #assign to variable length of array.
  number = array2.length
  #loop through method
  loop do
    #declare boolean. Keeps track of whether or not a given number has been swapped with the rest.
    swapped = false
    #start a loop for length of array minus 1 times. So will go through the entire array
    (number-1).times do |i|
      #if an index is greater than the index next to it
      if array2[i] > array2[i+1]
        #switch the array index with the one next to it.
        array2[i], array2[i+1] = array2[i+1], array2[i]
        swapped = true
      end
    end

  break if not swapped
  end
  
  array2
end

#driver code for bubble sort
array2= [4, 1, 14, 56, 23, 5]
puts "Original Array2:" 
p array2
puts "Array 2 with Bubble Sort:"
p bubble_sort(array2)

array3= [44, 34, 12, 87, 72, 1]
puts "Original Array3:" 
p array3
puts "Array 3 with Bubble Sort:"
p bubble_sort(array3)
