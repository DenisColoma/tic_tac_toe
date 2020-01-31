require_relative 'boardcase'
require_relative 'show'

class Board
	attr_accessor :case_arr, :count
	attr_reader :error, :win

	@@count = 0

	def initialize
		@A1 = BoardCase.new("A1")
		@A2 = BoardCase.new("A2")
		@A3 = BoardCase.new("A3")
		@B1 = BoardCase.new("B1") 
		@B2 = BoardCase.new("B2")
		@B3 = BoardCase.new("B3")
		@C1 = BoardCase.new("C1")
		@C2 = BoardCase.new("C2")
		@C3 = BoardCase.new("C3")

		@case_arr = [@A1.value,@A2.value,@A3.value,@B1.value,@B2.value,@B3.value,@C1.value,@C2.value,@C3.value]
	end

	def play_turn(fighters, board)
		@@count += 1
		i = rand(0..1)			#je lance un random pour choisir qui commencera
		while @count != 9
			Show.new.grid(board)

			puts "It is the turn of #{fighters[i].name}, what do you want to do ?"
			puts "Write letter + number. Exemple : A1"
			print "> "
							#permet de controler si l case est vide pour pouvoir y jouer et en aps jouer si elle est prise
				if choice == "A1" && board.case_arr[0] == " "
          board.case_arr[0] = fighters[i].symbole
        elsif choice == "A2" && board.case_arr[1] == " "
          board.case_arr[1] = fighters[i].symbole  
      	elsif choice == "A3" && board.case_arr[2] == " "
          board.case_arr[2] = fighters[i].symbole   
        elsif choice == "B1" && board.case_arr[3] == " "
          board.case_arr[3] = fighters[i].symbole 
        elsif choice == "B2" && board.case_arr[4] == " "
          board.case_arr[4] = fighters[i].symbole
        elsif choice == "B3" && board.case_arr[5] == " "
          board.case_arr[5] = fighters[i].symbole
        elsif choice == "C1" && board.case_arr[6] == " "
          board.case_arr[6] = fighters[i].symbole
        elsif choice == "C2" && board.case_arr[7] == " "
          board.case_arr[7] = fighters[i].symbole
        elsif choice == "C3" && board.case_arr[8] == " "
          board.case_arr[8] = fighters[i].symbole 
        else
          puts "No no no, not this one, try again ! "
                i = (i - 1) % 2
				end
							#j'annonce le vainqueur
          if f != board.victory?
            if board.victory? == fighters[1].symbole || board.victory? == fighters[0].symbole
              if "O" == fighters[1].symbol
                puts "The challenger #{fighters[1]} win !"
               	return
              elsif "X" == player[0].symbole
                puts "The challenger #{fighters[0]} win !"
                return
              end
            end
          else
           puts "The game end in a draw"
           return
          end
          i = (i + 1) % 2
        end
			end
	
				# cas de victoire
	def victory?(board)
    if (board.case_arr[0] == board.case_arr[1] && board.case_arr[1] == board.case_arr[2]) 
      return board.case_board[0]
    elsif (board.case_arr[3] == board.case_arr[4] && board.case_arr[4] == board.case_arr[5])
     	return board.case_arr[3]
    elsif (board.case_arr[6] == board.case_arr[7] && board.case_arr[7] == board.case_arr[8])
      return board.arr_board[6]
    elsif (board.case_arr[0] && board.case_arr[4] && board.case_arr[4] == board.case_arr[8])
      return board.case_arr[1]
    elsif (board.case_arr[6] == board.case_arr[4] && board.case_arr[4] == board.case_arr[2])
      return board.case_arr[1]
    elsif @count_turn == 9 
      return f
    end

	end
end
