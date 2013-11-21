def play_on_board(current_board, position, play_sequence)
	play_x = play_sequence.odd?
	play_o = play_sequence.even? 
	row_one = (position >= 1 && position < 4)
	row_two = (position >= 4 && position < 7)
	row_three = (position >= 7)
	if row_one
		check_and_play(current_board, position, 2, play_x, play_o)
	elsif row_two
		check_and_play(current_board, position, 1, play_x, play_o) 
	elsif row_three
		check_and_play(current_board, position, 0, play_x, play_o) 
	end
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