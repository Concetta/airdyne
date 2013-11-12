def play_on_board(current_board, next_play)
	if next_play >= 1 && next_play < 4
		if current_board == " | | |\n | | |\n | | |\n"
			current_board[next_play * 2 - 2] = "x"
	 		current_board
	 	elsif current_board == "x|o| |\n | | |\n | | |\n"
	 		current_board[next_play * 2 - 2] = "x"
	 		current_board
	 	elsif current_board == "x| |o|\n | | |\n | | |\n"
	 		current_board[next_play * 2 - 2] = "x"
	 		current_board
	 	elsif current_board == "x| | |\n | | |\n | | |\n"
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board
	 	elsif current_board == " |x| |\n | | |\n | | |\n"
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board	
	 	elsif current_board == " | |x|\n | | |\n | | |\n"
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board
	 	elsif current_board == " | | |\nx| | |\n | | |\n"
	 	 	current_board[next_play * 2 - 2] = "o"
	 		current_board		
	 	elsif current_board == " | | |\n |x| |\n | | |\n"
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board
	 	elsif current_board == " | | |\n | |x|\n | | |\n"
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board	 			 		
	 	elsif current_board == " | | |\n | | |\nx| | |\n"
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board
	 	elsif current_board == " | | |\n | | |\n |x| |\n"
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board	
	 	elsif current_board == " | | |\n | | |\n | |x|\n"
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board	
	 	end 
	 elsif next_play >= 4 && next_play < 7
	 	if current_board == " | | |\n | | |\n | | |\n"
	 		current_board[next_play * 2 - 1] = "x"
	 		current_board
	 	elsif current_board == "x|o| |\n | | |\n | | |\n"
	 		current_board[next_play * 2 - 1] = "x"
	 		current_board
	 	elsif current_board == "x| |o|\n | | |\n | | |\n"
	 		current_board[next_play * 2 - 1] = "x"
	 		current_board
	 	elsif current_board == "x| | |\n | | |\n | | |\n"
	 		current_board[next_play * 2 - 1] = "o"
	 		current_board
	 	elsif current_board == " |x| |\n | | |\n | | |\n"
	 		current_board[next_play * 2 - 1] = "o"
	 		current_board
	 	elsif current_board == " | |x|\n | | |\n | | |\n"
	 	 	current_board[next_play * 2 - 1] = "o"
	 		current_board		
	 	end 
	 elsif next_play >= 7
	 	if current_board == " | | |\n | | |\n | | |\n"
	 		current_board[next_play * 2] = "x"
	 		current_board
	 	elsif current_board == "x|o| |\n | | |\n | | |\n"
	 		current_board[next_play * 2] = "x"
	 		current_board
	 	elsif current_board == "x| |o|\n | | |\n | | |\n"
	 		current_board[next_play * 2] = "x"
	 		current_board
	 	elsif current_board == "x| | |\n | | |\n | | |\n"
	 		current_board[next_play * 2] = "o"
	 		current_board 
	 	elsif current_board == " |x| |\n | | |\n | | |\n"
	 		current_board[next_play * 2] = "o"
	 		current_board 
	 	elsif current_board == " | |x|\n | | |\n | | |\n"
	 	 	current_board[next_play * 2] = "o"
	 		current_board 	 	 		
	 	end 
	 end
end 	 	