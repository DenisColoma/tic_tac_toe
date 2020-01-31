require_relative 'board'
require_relative 'boardcase'

class Show
	def grid(board)
		puts "The Grid"
 		puts ""
	  puts " 	A       B       C"
	  puts "1       #{board.case_arr[0]}   |   #{board.case_arr[1]}   |      #{board.case_arr[2]}"
		puts "    --------+-------+--------"
	  puts "2       #{board.case_arr[3]}   |   #{board.case_arr[4]}   |      #{board.case_arr[5]}"
	  puts "    --------+-------+--------"
	  puts "3       #{board.case_arr[6]}   |   #{board.case_arr[7]}   |      #{board.case_arr[8]}"
	end
end
