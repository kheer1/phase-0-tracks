# 5.5 Solo Challenge: Manipulating Strings with Iteration
#Release 0: Attempt a Tricky Algorithm
#Release 1: Provide a User Interface
#Release 2: Store the Aliases

#Declare the variables
answer = "test"
real_fake = {}

#finding the vowels and taking the next one, finding the outliers and (u,z, and space) and lastly going to the next consonant
def changechar (tempname)	
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"

	tempname.map! do |char|
		if char.start_with?("a","e","i","o")
			char = vowels[vowels.index(char).next]
		elsif char == "u"
			char = "a"
		elsif char == "z"
			char = "b"
		elsif char == " "
			char = " "
		else
			char = consonants[consonants.index(char).next]
		end
	end
	return tempname
end

def preparename (realname)
	tempname =realname.downcase
	#Spliting the name into first and last
	tempname = tempname.split(" ")
	#Reversing first and last name
	tempname = tempname.reverse
	#Joining the names back into one
	tempname = tempname.join(" ")
	#Splitting the name into individual letters
	tempname = tempname.split("")
	#This can also be written as one line of code
	#name_split = tempname.split(" ").reverse.join(" ").split("")

	return tempname
end

def preparealais (tempname)
	#Joining the chars stliting it where there's a space and then capitalizing the first letter, combining the two names into one
	alaisname = tempname.join("").split(" ")
	alaisname[0].capitalize!
	alaisname[1].capitalize!
	alaisname = alaisname.join(" ")
	return alaisname
end

until answer == "quit"
	
	puts "Enter a name you'd like to turn into an alias:"
	realname = gets.chomp

	tempname = preparename(realname)

	tempname = changechar (tempname)

	alaisname = preparealais (tempname)

	#saving them into a hash
	real_fake[realname]= alaisname

	puts "Enter \"quit\" to exit and display your aliases, or enter anything else to enter another name."
	answer = gets.chomp
end

real_fake.each do |real, fake|

puts "The real name: #{real} has an alias of: #{fake}!"
		
end


