def play_on_board(current_board, next_play)
	 if current_board == " | | |\n | | |\n | | |\n"
	 		if next_play == 1
	 			current_board[0] = "x"
	 			current_board
	 		elsif next_play == 2
	 			current_board[2] = "x"
	 			current_board
	 		elsif next_play == 3
	 			current_board[4] = "x"
	 			current_board
	 		elsif next_play == 4
	 			current_board[7] = "x"
	 			current_board
	 		elsif next_play == 5
	 			current_board[9] = "x"
	 			current_board
	 		elsif next_play == 6
	 			current_board[11] = "x"
	 			current_board
	 		elsif next_play == 7 
	 			current_board[14] = "x"
	 			current_board
	 		elsif next_play == 8 
	 			current_board[16] = "x"
	 			current_board
			elsif next_play == 9 
				current_board[18] = "x"
	 			current_board
	 		end 
	 
	 elsif next_play == 2
	 	if current_board[0] == "x"
	 		current_board[2] = "o"
	 		current_board
	 	elsif current_board[4] == "x" 
	 		current_board[2] = "o"
	 		current_board
	 	elsif current_board[7] == "x"
	 		current_board[2] = "o"
	 		current_board
	 	elsif current_board[9] == "x"
	 		current_board[2] = "o"
	 		current_board
	 	elsif current_board[11] == "x"
	 		current_board[2] = "o"
	 		current_board
	 	elsif current_board[14] == "x"
	 		current_board[2] = "o"
	 		current_board
	 	elsif current_board[16] == "x"
	 		current_board[2] = "o"
	 		current_board
	 	elsif current_board[18] == "x"
	 		current_board[2] = "o"
	 		current_board
	 	end 
	 
	 elsif next_play == 3
	 		"x| |o|\n" + " | | |\n" * 2 
	 elsif next_play == 4
	 		"x| | |\no| | |\n" + " | | |\n"
	 elsif next_play == 5
	 		"x| | |\n |o| |\n" + " | | |\n"
	 elsif next_play == 6
	 		"x| | |\n | |o|\n" + " | | |\n"
	 elsif next_play == 7
	 		"x| | |\n" + " | | |\n" + "o| | |\n"
	 elsif next_play == 8
	 		"x| | |\n" + " | | |\n" + " |o| |\n"
	 elsif next_play == 9
	 	 	"x| | |\n" + " | | |\n" + " | |o|\n"
	 end
end 











