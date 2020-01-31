require_relative 'boardcase'
require_relative 'board'
require_relative 'show'
require_relative 'player'


class Game
	attr_accessor :fighter_1, :fighter_2, :board, :show, :fighters, :continue

        #appel de la classe Player pour initialisation des joueurs en leur demandant leur nom
	def initialize
		print "Please, enter the first player name > "
    user_1 = gets.chomp
    fighter_1 = Player.new(user_1)         #enregistrement du premier nom
    fighter_1.symbole = "X"                #on lui impose le premier symbole qu'il devra utiliser
    puts ""

    print "Please, enter the second player name > "
    user_2 = gets.chomp
    fighter_2 = Player.new(user_2)
    fighter_2.symbole = "O"
    puts ""

    fighters = [@fighter_1, @fighter_2]      #je les stocks dans un tableau afin de les appeler à tour de role

    puts "Okay ! We have a fight between #{fighter_1.name} and #{fighter_2.name}"
    puts ""
    puts "#{fighter_1.name} will fight for the team -- #{fighter_1.symbole} --"
    puts ""
    puts "#{fighter_2.name} will fight for the team -- #{fighter_2.symbole} --"
    puts ""

    puts "It will be legen..."
   	puts "          wait fot it..."
    puts "                                  dary !"

		@board = Board.new
		@continue = true
	end

		#permet l'alternance de joueurs
	def turn
		@board.play_turn(@fighters, @board)
	end

		#permet de rejouer
	def new_round
		@board = Board.new
	end
		#permet de relancer une partie
	def end_game
		puts "Would you like to play again?"
		print "Yes or No >"
		answ_bis = gets.chomp
		if answ_bis == "Yes"
			new_round
		elsif answ_bis == "No"
			@continue = false
		end
	end

end
