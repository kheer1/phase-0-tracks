puts "What is the hamster's name?"
hamsters_name = gets.chomp.capitalize

puts "What is the hamster's volume level (1-10, 1 being the quietest)"
hamsters_volume = gets.chomp.to_i

puts "What is the hamster's fur color?"
hamsters_fur_color = gets.chomp.capitalize

begin
  puts "Is the hamster a good candidate for adoption? (Y or N)"
  adoption = gets.chomp
  adoption.upcase!

  if adoption != "Y" and adoption != "N"
    puts "That's not  valid answer"
  end
end while adoption != "Y" and adoption != "N"

def status(answer)
  if answer == "Y"
    puts "They are ready to be adopted!"
  else
    puts "They are not ready to be adopted, sorry"
  end
end

puts "What is the estimated age in years of the hamster"
hamsters_age = gets.chomp.to_i

if hamsters_age == ""
  hamsters_age = nil
end

puts "Your hamster is named #{hamsters_name}"
puts "Their age is #{hamsters_age}"
puts "Their volume level is #{hamsters_volume}"
puts "Their fut color is #{hamsters_fur_color}"
puts status(adoption)