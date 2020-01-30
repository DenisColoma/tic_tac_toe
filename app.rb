require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'boardcase'
require 'board'
#require 'game'

		#message d'introduction
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

		#appel de la calsse Player pour initialisation des joueurs en leur demandant leur nom
def players_init

	print "Please, enter the first player name > "
	user_1 = gets.chomp
	fighter_1 = Player.new(user_1)		#enregistrement du premier nom
	fighter_1.symbole = "X"						#on lui impose le premier symbole qu'il devra utiliser
	puts ""

	print "Please, enter the second player name > "
	user_2 = gets.chomp
	fighter_2 = Player.new(user_2)
	fighter_2.symbole = "O"
	puts ""

	fighters = [fighter_1, fighter_2]		#je les stocks dans un tableau afin de les appeler à tour de role

	puts "Okay ! We have a fight between #{fighter_1.name} and #{fighter_2.name}"
	puts ""
	puts "#{fighter_1.name} will fight for the team -- #{fighter_1.symbole} --"
	puts ""
	puts "#{fighter_2.name} will fight for the team -- #{fighter_2.symbole} --"
	puts ""

	puts "It will be legen..."
	puts "		wait fot it..."
	puts "					dary !"
	
end

def	grid_init
	Board.new.grid
	
end

def final		#permet de lancer le programme en reprennant toutes les methodes
	intro
	players_init
	grid_init
	
end

final

binding.pry
