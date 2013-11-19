def play_on_board(current_board, position, play_sequence)
	play_x = play_sequence.odd?
	row_one = (position >= 1 && position < 4)
	row_two = (position >= 4 && position < 7)
	row_three = position >= 7
	if row_one
		if play_x
	 		play(current_board, position, 2, "x")  
		else
			play(current_board, position, 2, "o")
	 	end 
	 elsif row_two
	 	if play_x
	 		play(current_board,position, 1, "x")  
	 	else 
	 		play(current_board,position, 1, "o")
	 	end 
	 elsif row_three
	 	if play_x
	 		play(current_board,position, 0, "x")  
	 	else
	 		play(current_board,position, 0, "o")  			
	 	end 
	 end
end 

def play(current_board, position, value, x_or_o)
		current_board[position * 2 - value] = x_or_o
		current_board
end 
