require_relative 'board'
require_relative 'boardcase'

class Show
	def grid(board)
		puts "The Grid"
 		puts ""
	  puts "	1       2       3".red
	  print "A".red
		puts "       #{board.case_arr[0]}   |   #{board.case_arr[1]}   |    #{board.case_arr[2]}".yellow
		puts "    --------+-------+--------".red
	  print "B".red
		puts "       #{board.case_arr[3]}   |   #{board.case_arr[4]}   |    #{board.case_arr[5]}".yellow
	  puts "    --------+-------+--------".red
	  print "C".red
		puts "       #{board.case_arr[6]}   |   #{board.case_arr[7]}   |    #{board.case_arr[8]}".yellow
		puts ""
		puts ""
	end
end
