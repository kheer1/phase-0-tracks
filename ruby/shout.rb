module Shout
	#def self.yell_angrily(words)
	def yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	#def self.yell_happily(words)
  	def yell_happily(words)
  		words + "!!!!!!!!" + " 8-D"
	end

end #end of Shout module

class Old_People
	include Shout
end

class Kids
	include Shout
end

#drive code
puts Old_People.new.yell_angrily("Damn kids")

kid=Kids.new

puts kid.yell_happily("What's for dinner")





#puts Shout.yell_happily("Hello")
#puts Shout.yell_angrily ("Good Bye")