require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'boardcase'
require 'board'
require 'game'
require 'show'
		#message d'intro
def intro
    puts "****************************"
    puts "       Hello world !        "
    puts "You wanna play Tic Tac Toe ?"
    puts ""
    print "Yes or No > "		#je demande a l'utilisateur veux bien jouer
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
			#permet de lancer l'application
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
