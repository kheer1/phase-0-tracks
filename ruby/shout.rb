module Shout
	def self.yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	def self.yell_happily(words)
  		words + "!!!!!!!!" + " 8-D"
	end

end #end of Shout module

puts Shout.yell_happily("Hello")
puts Shout.yell_angrily ("Good Bye")