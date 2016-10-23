class Puppy

  	def fetch(toy)
    	puts "I brought back the #{toy}!"
    	toy
  	end

	def speak (number)
		start = 1
		
		until start > number
			puts "Woof!"
			start +=1
		end
	end

	def roll_over
		puts "*rolls over*"
	end

	def dog_years (number)
		number = 7 * number
	end

	def sit
		puts "*sits down*"
	end

	def initialize
		puts "Initializing new puppy instance ..."
	end

end

class Car

	def	initialize
		puts "Starting up the car!!!"
	end

#Model of my car
	def model
		puts "BMW"
	end

#The car breaking speed
	def breaking (speed)
		stop = 0
		
		until stop >= speed
			puts "My speed is #{speed}"
			speed = speed/2
		end
		puts "Finally Stopped!!"
	end

end



#drive code for Puppy class
spot = Puppy.new

puts spot.respond_to?(:fetch) ? spot.fetch("bone") : "It doesn't know how to fetch"
spot.fetch("ball")
spot.speak(3)
spot.roll_over
puts spot.dog_years(4)
spot.sit

#Testing my car class with drive code
betty=Car.new

betty.model
betty.breaking(100)

mycars = []
#Creating an array of 50 cars with a for loop
for i in 1..50
mycars << adriana=Car.new
end

puts "\n"
#Calling method model and breaking while using each to run through the array
mycars.each {|x| x.model & x.breaking(100)}
