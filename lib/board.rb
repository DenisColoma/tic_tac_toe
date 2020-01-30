

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

#	def play_turn
#		@@count += 1
#
#		puts "It is the turn of #{fighter.name}, what do you want to do ?"
#			
#	end

	def grid
		puts "The Grid"
		puts ""
		puts "	A	B	C"
		puts "1       #{@case_arr[0]}   |   #{@case_arr[1]}   |      #{@case_arr[2]}"
		puts "    --------+-------+--------"
		puts "2       #{@case_arr[3]}   |   #{@case_arr[4]}   |      #{@case_arr[5]}"
		puts "    --------+-------+--------"
		puts "3       #{@case_arr[6]}   |   #{@case_arr[7]}   |      #{@case_arr[8]}"
	end

end
