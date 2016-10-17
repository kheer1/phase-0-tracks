#5.3 Mandatory Pairing

#Write your own method taht takes a block

names = ["Kam", "Eric", "Jason", "Greg"]

names.length.times {|friend| puts "Bill has a friend named #{names[friend]}"}

#Release 1: using each, map and map! with arrays and hashes

numbers = [1,2,3,4,5,6,7,8]

location = {country: "usa", state: "illinois", city: "chicago"}

p numbers
numbers.each {|num| puts "The number is: #{num}"}
p numbers

p location
location.each {|key, value| puts "The #{key} is #{value}!" }
p location

p numbers
numbers.map {|number| puts "Double #{number} is #{number * 2}"}
p numbers

p numbers
numbers.map! {|number| puts "Double #{number} is #{number * 2}"}

p numbers
p location

#Release 2: Use the Documentation
#Doubles every number in array

numbers = [11,22,33,44,55,66,77,88]
location = {country: "usa", state: "illinois", city: "chicago"}

p numbers
numbers.map! do |number| 
	puts "Double #{number} is #{number * 2}"
	number * 2
end

p numbers

#Capitalized every letter in Value
p location
location.each {|key, value| puts "The #{key} is #{value.upcase}"}





