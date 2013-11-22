def play_on_board(current_board, position, play_sequence)
	play_x = play_sequence.odd?
	play_o = play_sequence.even? 
	row_one = (position >= 1 && position < 4)
	row_two = (position >= 4 && position < 7)
	row_three = (position >= 7)
	result = if row_one
			check_and_play(current_board, position, 2, play_x, play_o)
		elsif row_two
			check_and_play(current_board, position, 1, play_x, play_o) 
		elsif row_three
			check_and_play(current_board, position, 0, play_x, play_o) 
		end
	if result[0] == "x" && result[2] == "x" && result[4] == "x"
		result += " Player 1 wins"
	elsif result[7] == "x" && result[9] == "x" && result[11] == "x"
		result += " Player 1 wins"
	elsif result[14] == "x" && result[16] == "x" && result[18] == "x"
		result += " Player 1 wins"
	elsif result[0] == "x" && result[7] == "x" && result[14] == "x"
		result += " Player 1 wins"
	elsif result[2] == "x" && result[9] == "x" && result[16] == "x"
		result += " Player 1 wins"
	elsif result[4] == "x" && result[11] == "x" && result[18] == "x"
		result += " Player 1 wins"
	elsif result[0] == "x" && result[9] == "x" && result[18] == "x"
		result += " Player 1 wins"
	elsif result[4] == "x" && result[9] == "x" && result[14] == "x"
		result += " Player 1 wins"	
	elsif result[0] == "o" && result[2] == "o" && result[4] == "o"
		result += " Player 2 wins"
	elsif result[7] == "o" && result[9] == "o" && result[11] == "o"
		result += " Player 2 wins"
	elsif result[14] == "o" && result[16] == "o" && result[18] == "o"
		result += " Player 2 wins"		
	elsif result[0] == "o" && result[7] == "o" && result[14] == "o"
		result += " Player 2 wins"
	elsif result[2] == "o" && result[9] == "o" && result[16] == "o"
		result += " Player 2 wins"
	elsif result[4] == "o" && result[11] == "o" && result[18] == "o"
		result += " Player 2 wins"
	elsif result[4] == "o" && result[9] == "o" && result[14] == "o"
		result += " Player 2 wins"
	elsif result[0] == "o" && result[9] == "o" && result[18] == "o"
		result += " Player 2 wins"
	end 
	result 
end 

def play(current_board, position, row_move, x_or_o)
		current_board[position * 2 - row_move] = x_or_o
		current_board 
end

def check_and_play(current_board, position, row_move, play_x, play_o)
	if current_board[position * 2 - row_move] != " "
		raise 'invalid play'
	elsif play_x
		 	play(current_board,position, row_move, "x") 
	elsif play_o
		 	play(current_board,position, row_move, "o")  			
	end 
end 
