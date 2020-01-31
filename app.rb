require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'boardcase'
require 'board'
require 'game'
require 'show'

def intro
    puts "****************************"
    puts "       Hello world !        "
    puts "You wanna play Tic Tac Toe ?"
    puts ""
    print "Yes or No > "
    answ = gets.chomp
    puts ""
    if answ == "Yes"
        puts "       Lets go !!!       "
      puts "****************************"
      puts ""
    else answ == "No"
      puts "       Alright, bye"
      puts "****************************"
      abort
    end
end

class Application
	def final
		
		my_game = Game.new
		while my_game.continue == true
			my_game.turn
		end
	end
end
intro
Application.new.final



binding.pry
