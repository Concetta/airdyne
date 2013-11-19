def play_on_board(current_board, next_play, play_sequence)
	play_x = (play_sequence == 1 or play_sequence == 3 or play_sequence == 5 or
						play_sequence == 7 or play_sequence == 9)
	row_one = (next_play >= 1 && next_play < 4)
	row_two = (next_play >= 4 && next_play < 7)
	row_three = next_play >= 7
	if row_one
		if play_x
			current_board[next_play * 2 - 2] = "x"
	 		current_board
		else
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board 		
	 	end 
	 elsif row_two
	 	if play_x
	 		current_board[next_play * 2 - 1] = "x"
	 		current_board
	 	else 
	 		current_board[next_play * 2 - 1] = "o"
	 		current_board	
	 	end 
	 elsif row_three
	 	if play_x
	 		current_board[next_play * 2] = "x"
	 		current_board
	 	else 
	 		current_board[next_play * 2] = "o"
	 		current_board	 			
	 	end 
	 end
end 	 	