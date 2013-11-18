def play_on_board(current_board, next_play)
	if next_play >= 1 && next_play < 4
		if current_board == " | | |\n | | |\n | | |\n"
			current_board[next_play * 2 - 2] = "x"
	 		current_board
	 	elsif current_board[0..6] == "x|o| |\n"
	 		current_board[next_play * 2 - 2] = "x"
	 		current_board
	 	elsif current_board[0..6] == "x| |o|\n"
	 		current_board[next_play * 2 - 2] = "x"
	 		current_board
	 	elsif current_board[0..6] == "x| | |\n"
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board
	 	elsif current_board[0..6] == " |x| |\n"
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board	
	 	elsif current_board[0..6] == " | |x|\n"
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board
	 	elsif current_board[7..13] == "x| | |\n"
	 	 	current_board[next_play * 2 - 2] = "o"
	 		current_board		
	 	elsif current_board[7..13] == " |x| |\n"
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board
	 	elsif current_board[7..13] == " | |x|\n"
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board	 			 		
	 	elsif current_board[14..20] == "x| | |\n"
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board
	 	elsif current_board[14..20] == " |x| |\n"
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board	
	 	elsif current_board[14..20] == " | |x|\n"
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board	
	 	end 
	 elsif next_play >= 4 && next_play < 7
	 	if current_board == " | | |\n | | |\n | | |\n"
	 		current_board[next_play * 2 - 1] = "x"
	 		current_board
	 	elsif current_board[0..6] == "x|o| |\n"
	 		current_board[next_play * 2 - 1] = "x"
	 		current_board
	 	elsif current_board[0..6] == "x| |o|\n"
	 		current_board[next_play * 2 - 1] = "x"
	 		current_board
	 	elsif current_board[0..6] == "x|x|o|\n"
	 		current_board[next_play * 2 - 1] = "o"
	 		current_board
	 	elsif current_board[0..6] == "o|x|x|\n"
	 		current_board[next_play * 2 - 1] = "o"
	 		current_board
	 	elsif current_board[0..6] == "x|o|x|\n"
	 	 	current_board[next_play * 2 - 1] = "o"
	 		current_board	
	 	elsif current_board[0..6] == "x| | |\n"
	 		current_board[next_play * 2 - 1] = "o"
	 		current_board
	 	elsif current_board[0..6] == " |x| |\n"
	 		current_board[next_play * 2 - 1] = "o"
	 		current_board
	 	elsif current_board[0..6] == " | |x|\n"
	 	 	current_board[next_play * 2 - 1] = "o"
	 		current_board		
	 	end 
	 elsif next_play >= 7
	 	if current_board == " | | |\n | | |\n | | |\n"
	 		current_board[next_play * 2] = "x"
	 		current_board
	 	elsif current_board[0..6] == "x|o| |\n"
	 		current_board[next_play * 2] = "x"
	 		current_board
	 	elsif current_board[0..6] == "x| |o|\n"
	 		current_board[next_play * 2] = "x"
	 		current_board
	 	elsif current_board[0..6] == "x|x|o|\n"
	 		current_board[next_play * 2] = "o"
	 		current_board
	 	elsif current_board[0..6] == "o|x|x|\n"
	 		current_board[next_play * 2] = "o"
	 		current_board 	
	 	elsif current_board[0..6] == "x|o|x|\n"
	 	 	current_board[next_play * 2] = "o"
	 		current_board			
	 	elsif current_board[0..6] == "x| | |\n"
	 		current_board[next_play * 2] = "o"
	 		current_board 
	 	elsif current_board[0..6] == " |x| |\n"
	 		current_board[next_play * 2] = "o"
	 		current_board 
	 	elsif current_board[0..6] == " | |x|\n"
	 	 	current_board[next_play * 2] = "o"
	 		current_board 	 	 		
	 	end 
	 end
end 	 	