require_relative 'board'
require_relative 'boardcase'

class Show
	def grid(board)
		puts "The Grid"
 		puts ""
	  puts "	A       B       C".red
	  print "1".red
		puts "       #{board.case_arr[0]}   |   #{board.case_arr[1]}   |    #{board.case_arr[2]}".yellow
		puts "    --------+-------+--------".red
	  print "2".red
		puts "       #{board.case_arr[3]}   |   #{board.case_arr[4]}   |    #{board.case_arr[5]}".yellow
	  puts "    --------+-------+--------".red
	  print "3".red
		puts "       #{board.case_arr[6]}   |   #{board.case_arr[7]}   |    #{board.case_arr[8]}".yellow
		puts ""
		puts ""
	end
end
