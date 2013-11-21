def play_on_board(current_board, position, play_sequence)
	play_x = play_sequence.odd?
	play_o = play_sequence.even? 
	row_one = (position >= 1 && position < 4)
	row_two = (position >= 4 && position < 7)
	row_three = (position >= 7)
	if row_one
		if current_board[0] == "o" && position == 1
		 	raise 'invalid play'
		elsif current_board[2] == "o" && position == 2
		 	raise 'invalid play'
		elsif current_board[4] == "o" && position == 3
		 	raise 'invalid play'
		elsif current_board[0] == "x" && position == 1
			raise 'invalid play'
		elsif current_board[2] == "x" && position == 2
 			raise 'invalid play'
		elsif current_board[4] == "x" && position == 3
			raise 'invalid play' 	
		elsif play_x
		 	play(current_board, position, 2, "x") 
		elsif play_o
			play(current_board, position, 2, "o")
		end 
	elsif row_two
		if current_board[7] == "o" && position == 4
			raise 'invalid play'
		elsif current_board[9] == "o" && position == 5
			raise 'invalid play'
		elsif current_board[11] == "o" && position == 6
			raise 'invalid play'
		elsif current_board[7] == "x" && position == 4 
			raise 'invalid play'
		elsif current_board[9] == "x" && position == 5
			raise 'invalid play' 
		elsif current_board[11] == "x" && position == 6   
			raise 'invalid play' 
		elsif play_x
		 	play(current_board,position, 1, "x")
		elsif play_o
		 	play(current_board,position, 1, "o")
		end 
	elsif row_three
		if current_board[14] == "o" && position == 7
			raise 'invalid play'
		elsif current_board[16] == "o" && position == 8
			raise 'invalid play'
		elsif current_board[18] == "o" && position == 9
			raise 'invalid play'
		elsif current_board[14] == "x" && position == 7
			raise 'invalid play'
		elsif current_board[16] == "x" && position == 8
			raise 'invalid play'
		elsif current_board[18] == "x" && position == 9
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
