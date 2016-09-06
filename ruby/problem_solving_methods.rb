#Release 0
=begin
Write a method that takes an array of integers and an integer to
search for. The method should return the index of the item or
nil if integer not present.
def search_array(array, number)	
=end

def  search_array (array, number)
  start = 0
  index = []
  array.each do |value|
    index << start if value == number
    start += 1
  end
  index.empty? ? nil : index
end

array=[ 6, 7, 8, 9, 10]
p search_array(array, 7)
#will print 1 as the index
p search_array(array, 15)
#will print nil as the index since not found in the array


#Release 1
=begin
Fibonacci numbers
Start with 0 and 1 and keep adding numbers onto the array by adding
the previous two.
IE. Fib(6) will give you [0,1,1,2,3,5]
Must work with Fib 100 giving you the last number of
218922995834555169026
=end

def fib(number)
  fib_array = [0, 1]
  if number == 0
    p []
  elsif number == 1
    p [0]
  else 
    until fib_array.length == number
      next_number = fib_array[-1] + fib_array[-2]
      fib_array << next_number 
    end
  p fib_array
  end
end

#examples
fib(100)
fib(10)
fib(6)


#Release 2
=begin
Research Bubble Sort. Basically if you have an array, it will
go through(loop?) the array until it is sorted.
=end

def bubble(array2)
  number = array2.length
  loop do
    fixed = false

    (number-1).times do |i|
      if array2[i] > array2[i+1]
        array2[i], array2[i+1] = array2[i+1], array2[i]
        fix = true
      end
    end

    break if not fixed
  end
  array2
end

array2= [1,4,2,3,5,7,6]
bubble(array2)

#will return back [1,2,3,4,5,6,7]