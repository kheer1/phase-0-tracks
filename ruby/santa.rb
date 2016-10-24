class Santa
attr_reader :age, :ethnicity #replaces getters
attr_accessor :gender, :age #replaces getters and setters(does both)

#Santa speaking method
def speak
	puts "Ho, ho, ho! Haaaappy holidays!"
end

#Put what kind of cookie santa ate
def eat_milk_and_cookies(cookie)
	puts "That was a good #{cookie}!"
end

#initialize santa with gender, ethnicity, reindeer rankings, and age
def initialize(gender, ethnicity)
	puts "Initializing Santa instance ..."
	@gender = gender
	@ethnicity = ethnicity
	@reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 1 + rand(140)
end

#Add age to santa
def celebrate_birthday
	@age += 1
end

#Move reindeer to the end
def get_mad_at (reindeer)
	@reindeer_ranking.delete(reindeer)
	@reindeer_ranking.push(reindeer)
end

#change gender outsite of class
#def gender=(new_gender)
#	@gender=new_gender
#end

#getter method for getting age
#def age
#	@age
#end

#getter method for getting ethnicity
#def ethnicity
#	@ethnicity
#end 

end #end of class

#Driver code
#greg=Santa.new("Male", "Jew")
#greg.speak
#greg.eat_milk_and_cookies("Cookies")
#puts greg.celebrate_birthday
#puts greg.get_mad_at("Dasher")
#puts greg.gender = "Blue"
#puts greg.age
#puts greg.ethnicity

#Build Many, Many Santas
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

for x in 0..1000
	santa = Santa.new(genders.sample, ethnicities.sample)
	puts santa.age
	puts santa.gender
	puts santa.ethnicity

end

#driver code
#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")

#driver code in a loop
#santas = []
#example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#example_genders.length.times do |i|
#  santas << Santa.new(example_genders[i], example_ethnicities[i])
#end



