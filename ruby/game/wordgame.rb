=begin
User one enters a word
User two trys to guess the word but is limited to guesses based on word length
If a guess is repeated is does not count, therefore i need to keep track of guesses
The guessing player gets feedback on the current word
If the user gets it right, they get a congrats message, else a taunting message
=end

class Wordgame
	attr_reader :guess_count, :game_status #sets read only vars
	attr_accessor :starting_word, :guessing_word, :guessing_letter, :guessed_letters, :letter_exists #global vars that are changable

#initialize my program
	def initialize
		system "clear"
		puts "Lets play hangman!"
 		@guess_count = 0
 		@game_status = false
 		@guessed_letters=[]
 		@guessing_word=[]
 	end

#Break my starting word into characters
	def setstartingword(word)
		@starting_word = word.downcase!
		@starting_word = word.split("")
		return @starting_word
	end
	
#Set my guessing word to default
	def setguessword
		@starting_word.each_index do |index|
			@guessing_word[index]="_ "
		end
		return @guessing_word
	end

#Test to see if letter exists returns true or false
	def setguessedletter(letter)
		@letter_exists = false
		
		@guessed_letters.each do |char|
			if char == letter
				@letter_exists = true
			end
		end
		return @letter_exists
	end

#Tests to see if words match
	def setguessmatch(letter)
		@guess_count +=1	
		@guessed_letters << letter

		@starting_word.each_with_index do |char,index|
			if char == letter
				@guessing_word[index] = char
				if starting_word == guessing_word
					@game_status = true
				end
			end
		end
	end

#Prints out the output of your progress
	def setprintword()
		return @guessing_word.join(" ")
	end

#Lets the user know if they won or lose
	def setwinlosemessage
		if game_status
			puts "\n\nGreat Job you guessed the word!\n\n"
		else
			puts "\n\nGuess you're not as smart as you think, better luck next time!\n\n"
		end
	end

end #end of class
	

#user driven data
game=Wordgame.new

puts "What would you like to have the user guess?"
userword = gets.chomp

system "clear"

game.setstartingword(userword) 
game.setguessword

#runs it the number of times how many letters are in the word or if they guessed it before that time
while game.starting_word.length > game.guess_count && !game.game_status
	puts "\n\nPlease enter a letter you'd like to guess:"
	letter = gets.chomp.downcase
		if !game.setguessedletter(letter)
			game.setguessmatch(letter)
			game.guessed_letters
			puts "\n" 
			p game.setprintword
		end
end

game.setwinlosemessage


