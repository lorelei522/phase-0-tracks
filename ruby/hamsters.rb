puts "Hamster's name?"
hamster_name= gets.chomp
puts "Volume Level from 1-10?"
volume_level= gets.to_i
puts "Fur color?"
fur_color= gets.chomp
puts "Good candidate for adoption(Y/N)"
good_candidate= gets.chomp
puts "Estimated Age"
estimated_age= gets.to_i
	if estimated_age== ""
		estimated_age=nil
	else
		#{estimated_age}
end		

puts "This hamster name is #{hamster_name} and it is #{estimated_age} years old. It's fur color is #{fur_color} and has a volume level of #{volume_level}. Customer replied #{good_candidate} to whether it 
was a good candidate for adoption."