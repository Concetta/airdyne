def play_on_board(current_board, next_play, play_sequence)
	if next_play >= 1 && next_play < 4
		if play_sequence == 1
			current_board[next_play * 2 - 2] = "x"
	 		current_board
		elsif play_sequence == 2
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board 	
	 	elsif play_sequence == 3
	 		current_board[next_play * 2 - 2] = "x"
	 		current_board
	 	elsif play_sequence == 4
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board 	
	 	elsif play_sequence == 5 
	 		current_board[next_play * 2 - 2] = "x"
	 		current_board
	 	elsif play_sequence == 6 
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board 	 		
	 	end 
	 elsif next_play >= 4 && next_play < 7
	 	if play_sequence == 1
	 		current_board[next_play * 2 - 1] = "x"
	 		current_board
		 	elsif play_sequence == 2
	 		current_board[next_play * 2 - 1] = "o"
	 		current_board 	
	 	elsif play_sequence == 3
	 		current_board[next_play * 2 - 1] = "x"
	 		current_board
	 	elsif play_sequence == 4
	 		current_board[next_play * 2 - 1] = "o"
	 		current_board
	 	elsif play_sequence == 5
	 		current_board[next_play * 2 - 1] = "x"
	 		current_board	
	 	elsif play_sequence == 6
	 		current_board[next_play * 2 - 1] = "o"
	 		current_board	
	 	end 
	 elsif next_play >= 7
	 	if play_sequence == 1
	 		current_board[next_play * 2] = "x"
	 		current_board
	 	elsif play_sequence == 2
	 		current_board[next_play * 2] = "o"
	 		current_board 
	 	elsif play_sequence == 3
	 		current_board[next_play * 2] = "x"
	 		current_board
	 	elsif play_sequence == 4 
	 		current_board[next_play * 2] = "o"
	 		current_board 
	 	elsif play_sequence == 5 
	 	 	current_board[next_play * 2] = "x"
	 		current_board
	 	elsif play_sequence == 6
	 		current_board[next_play * 2] = "o"
	 		current_board	 			
	 	end 
	 end
end 	 	