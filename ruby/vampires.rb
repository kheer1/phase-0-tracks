puts "How many employees will be processed?"
	number_of_employees = gets.chomp.to_i

while number_of_employees > 0

	puts "What is Your Name?"
		employee_name = gets.chomp

	puts "How old are you?"
 		employee_age = gets.to_i
 	
 	puts "What year were you born in?"
 		employee_year = gets.to_i

 	date=Time.new
 	current_year=date.year
 	employee_age_verified = (((date.year - employee_age) == employee_year ) || (((date.year - employee_age) - 1) == employee_year ))
	
	puts "Our company cafeteria serves garlic bread. Should we order some for you Y/N?"
		employee_bread = gets.chomp.upcase!

	puts "Would you like to enroll in the company’s health insurance Y/N?"
		employee_health = gets.chomp.upcase!

	begin
		puts "Name an allergy you have, type 'done' when finished:"
			employee_allergy = gets.chomp

	end until employee_allergy == "sunshine" || employee_allergy == "done"

	puts

	if employee_allergy == "sunshine"
		puts "Probably a vampire"	
	
	elsif employee_name == "Drake Cula" || employee_name == "Tu Fang"
		puts "Definitely a vampire"
		
	elsif employee_age_verified && (employee_bread == "Y" || employee_health == "Y")
		puts "Probably not a vampire"

	elsif !employee_age_verified && employee_bread == "N" && employee_health == "N"
		puts "Almost certainly a vampire"

	elsif !employee_age_verified && (employee_bread == "N" || employee_health == "N")
		puts "Probably a vampire"
	
	else 
		puts "Results inconclusive"

	end
		
	puts
	
	number_of_employees -=1
end

puts "Actually never mind! What do these questions have to do with anything? Let's all be friends."