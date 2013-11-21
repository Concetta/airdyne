def play_on_board(current_board, position, play_sequence)
	play_x = play_sequence.odd?
	play_o = play_sequence.even? 
	row_one = (position >= 1 && position < 4)
	row_two = (position >= 4 && position < 7)
	row_three = (position >= 7)
	if row_one
		if current_board[0] != " " && position == 1
		 	raise 'invalid play'
		elsif current_board[2] != " " && position == 2
		 	raise 'invalid play'
		elsif current_board[4] != " " && position == 3
		 	raise 'invalid play'
		elsif play_x
		 	play(current_board, position, 2, "x") 
		elsif play_o
			play(current_board, position, 2, "o")
		end 
	elsif row_two
		if current_board[7] != " " && position == 4
			raise 'invalid play'
		elsif current_board[9] != " " && position == 5
			raise 'invalid play'
		elsif current_board[11] != " " && position == 6
			raise 'invalid play'
		elsif play_x
		 	play(current_board,position, 1, "x")
		elsif play_o
		 	play(current_board,position, 1, "o")
		end 
	elsif row_three
		if current_board[14] != " " && position == 7
			raise 'invalid play'
		elsif current_board[16] != " " && position == 8
			raise 'invalid play'
		elsif current_board[18] != " " && position == 9
			raise 'invalid play'
		elsif play_x
		 	play(current_board,position, 0, "x")
		elsif play_o
		 	play(current_board,position, 0, "o")  			
		end 
	end
end 

def play(current_board, position, value, x_or_o)
		current_board[position * 2 - value] = x_or_o
		current_board 
end 
