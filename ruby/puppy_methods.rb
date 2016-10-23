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

#drive code
spot = Puppy.new

spot.fetch("ball")
spot.speak(3)
spot.roll_over
puts spot.dog_years(4)
spot.sit
