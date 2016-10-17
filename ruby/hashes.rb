# 5.2 Arrays and Hashes Kam Heer

=begin
Input data, Name, Age, number of kids, theme
Output udpated date
Ask if they'd like to change any data by key, if so then udpate the data
print hash
=end

client = {}

puts "What is your client's name?"
client[:name] = gets.chomp

puts "What is your client's age?"
client[:age] = gets.to_i

puts "How many children does your client have?"
client[:kids] = gets.to_i

puts "What kind of decor theme does your client like?"
client[:decor_theme] = gets.chomp

puts "\nThis is the client's information:"
p client

puts "\nWould you like to change any information about your client? Type key value that you'd like to change else enter none.\n"
input = gets.chomp

if input == "none"
  	puts "Goodbye"

elsif input == "kids" || input == "age"
	puts "What would you like the new value to be?"
	client[input.to_sym] = gets.to_i

elsif input == "name" || input == "decor_theme"
  	puts "What would you like the new name/decor theme to be?"
  	client[input.to_sym] = gets.chomp

else
  puts "You have not changed anything."

end


puts "\nThe final client form contains the following information:"
p client