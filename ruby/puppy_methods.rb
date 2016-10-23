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

	def model
		puts "BMW"
	end

	def breaking (speed)
		stop = 0
		
		until stop >= speed
			puts "My speed is #{speed}"
			speed = speed/2
		end
		puts "Finally Stopped!!"
	end

end



#drive code
spot = Puppy.new

puts spot.respond_to?(:fetch) ? spot.fetch("bone") : "It doesn't know how to fetch"
spot.fetch("ball")
spot.speak(3)
spot.roll_over
puts spot.dog_years(4)
spot.sit

betty=Car.new
betty.model
betty.breaking(100)
