def play_on_board(current_board, next_play)
	if next_play >= 1 && next_play < 4
		if current_board == " | | |\n | | |\n | | |\n"
			current_board[next_play * 2 - 2] = "x"
	 		current_board
	 	elsif current_board == "x|o| |\n | | |\n | | |\n"
	 		current_board[4] = "x"
	 		current_board
	 	else 
	 		current_board[next_play * 2 - 2] = "o"
	 		current_board
	 	end 
	 elsif next_play >= 4 && next_play < 7
	 	if current_board == " | | |\n | | |\n | | |\n"
	 		current_board[next_play * 2 - 1] = "x"
	 		current_board
	 	elsif current_board == "x|o| |\n | | |\n | | |\n"
	 		if next_play == 4
	 			current_board[7] = "x"
	 			current_board
	 		elsif next_play == 5
	 			current_board[9] = "x"
	 			current_board
	 		elsif next_play == 6
	 			current_board[11] = "x"
	 			current_board
	 		end 
	 	else 
	 		current_board[next_play * 2 - 1] = "o"
	 		current_board
	 	end 
	 elsif next_play >= 7
	 	if current_board == " | | |\n | | |\n | | |\n"
	 		current_board[next_play * 2] = "x"
	 		current_board
	 	elsif current_board == "x|o| |\n | | |\n | | |\n"
	 		if next_play == 7
	 			current_board[14] = "x"
	 			current_board
	 		elsif next_play == 8 
	 			current_board[16] = "x"
	 			current_board
	 		elsif next_play == 9
	 			current_board[18] = "x"
	 			current_board  
	 		end 
	 	else
	 		current_board[next_play * 2] = "o"
	 		current_board 
	 	end 
	 end
end 	 	











