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

array=[ 1, 2, 3, 4, 5]
p search_array(array, 4)