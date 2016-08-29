#Release 2 create a loop that asks how many employees will be processed 
#and have the program process them until all employees go all through

puts "How many employees are being processed today?(integer)"
employee_number= gets.chomp.to_i

while employee_number>0
	puts "What is your name?"
	name=gets.chomp
	puts "How old are you?"
	age_answered= gets.to_i
	puts "What year were you born?"
	year_of_birth= gets.to_i
	puts "Would you like garlic bread? (Y/N)"
	garlic_bread= gets.chomp
	puts "Would you like to enroll in the company's health insurance? (Y/N)"
	health_insurance= gets.chomp

	age_calculated= 2016-year_of_birth

#list allergies until done. if at any point allergy=sunshine puts "probably a vampire"

puts "Please list your allergies (one at a time). If all allergies are listed please write 'done'. Thank you!"
	allergy = ""
	until allergy == "done" || allergy == "sunshine"
		allergy = gets.chomp
		if allergy == "sunshine"
			puts "Probably a vampire."
		end
	end	

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
#Otherwise, print “Results inconclusive.”

if ((name =="Tu Fang") || (name == "Drake Cula"))
	puts "Definitely a vampire"
elsif age_calculated == age_answered && (garlic_bread== "y" || health_insurance== "y")
			puts "Probably not a vampire"
elsif (age_calculated != age_answered && (garlic_bread != health_insurance))
		puts "Probably a vampire"
elsif (age_calculated != age_answered) && (garlic_bread=="n" && health_insurance=="n")
		puts "Almost certainly a vampire"
else
	puts "Results inconclusive."
end
	employee_number=employee_number-1
end

#release 5-plot twist Everybody is actually cool

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends." 