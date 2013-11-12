def play_on_board(current_board, next_play)
	if next_play == 1
		if current_board == " | | |\n | | |\n | | |\n"
			current_board[0] = "x"
	 		current_board
	 	else current_board[2] == "x"
	 		current_board[0] = "o"
	 		current_board
	 	end 
	elsif next_play == 2
		if current_board == " | | |\n | | |\n | | |\n"
			current_board[2] = "x"
	 		current_board
		else 	 		
			current_board[2] = "o"
	 		current_board
		end 
	 elsif next_play == 3
	 	if current_board == " | | |\n | | |\n | | |\n"
	 		current_board[4] = "x"
	 		current_board
	 	else 
	 		current_board[4] = "o"
	 		current_board
	 	end 
	 elsif next_play == 4
	 	if current_board == " | | |\n | | |\n | | |\n"
	 		current_board[7] = "x"
	 		current_board	 		
	 	else 
	 		current_board[7] = "o"
	 		current_board
	 	end 
	 elsif next_play == 5
	 	if current_board == " | | |\n | | |\n | | |\n"
	 		 current_board[9] = "x"
	 		current_board	
	 	else 
	 		current_board[9] = "o"
	 		current_board
	 	end 
	 elsif next_play == 6
	 	if current_board == " | | |\n | | |\n | | |\n"
	 		current_board[11] = "x"
	 		current_board
	 	else 
	 		current_board[11] = "o"
	 		current_board
	 	end 
	 elsif next_play == 7
	 	if current_board == " | | |\n | | |\n | | |\n"
	 		current_board[14] = "x"
	 		current_board
	 	else
	 		current_board[14] = "o"
	 		current_board 
	 	end 
	 elsif next_play == 8
	 	if current_board == " | | |\n | | |\n | | |\n"
	 		current_board[16] = "x"
	 		current_board
	 	else 
	 		current_board[16] = "o"
	 		current_board
	 	end 
	 elsif next_play == 9
	 	if current_board == " | | |\n | | |\n | | |\n"
	 		current_board[18] = "x"
	 		current_board
	 	else 
	 		current_board[18] = "o"
	 		current_board
	 	end
	 end
end 	 	











