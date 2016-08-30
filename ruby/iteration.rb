# pairing between Lorelei522 & sierramclawhorn

def pairing
  puts "Pairing between Lorelei & Sierra!"
  yield
  yield
end 

pairing { puts "5.3 ROCKS!!" }


sneaker_brands = ["Nike", "Puma", "Reebok", "Vans"]
disney_movie_profile = {
  movie_name: "The Little Mermaid",
  main_character: "Ariel",
  side_kick: "Sebastian",
  main_location: "the sea",
  main_character_age: 16, 
}

puts "Original data:"
p sneaker_brands 

sneaker_brands.each { |brand| puts "#{brand} is the best!"}

puts "Modified data:"
p sneaker_brands

sneaker_brands.map! { |brand| brand.upcase }

puts "Modified data:"
p sneaker_brands

puts "Original data:"
p disney_movie_profile

disney_movie_profile.sort.each do |label, info|
  puts "#{label}"
end

puts "Modified data:"
p disney_movie_profile


numbers = [1, 2, 3, 4, 5, 6]

numbers.delete_if { |number| number <= 3 }
p numbers

numbers.keep_if { |number| number >= 2 }
p numbers

numbers.select! { |number| number.even? }
p numbers

p numbers.take_while { |x| x < 4 }

hash = {
  a: 10,
  b: 20,
  c: 30,
  d: 40,
  e: 50,
}

hash.delete_if { |letter, number| letter == :b }
p hash

hash.keep_if { |letter, number| number > 30 }
p hash

hash.select! { |letter, number| number <= 20 }
p hash