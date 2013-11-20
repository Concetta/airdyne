def play_on_board(current_board, position, play_sequence)
	play_x = play_sequence.odd?
	play_o = play_sequence.even? 
	row_one = (position >= 1 && position < 4)
	row_two = (position >= 4 && position < 7)
	row_three = (position >= 7)
	if row_one
		if current_board[0..6] == "o| |x|\n" && position == 1
		 	play(current_board, position, 2, "o")
		elsif current_board[0..6] == " |o|x|\n" && position == 2
		 	play(current_board, position, 2, "o")
		elsif current_board[0..6] == " |x|o|\n" && position == 3
		 	play(current_board, position, 2, "o")
		elsif play_x
		 	play(current_board, position, 2, "x") 
		elsif current_board[0..6] == "x| | |\n" && position == 1
			play(current_board, position, 2, "x") 
		elsif current_board[0..6] == " |x| |\n" && position == 2
			play(current_board, position, 2, "x") 
		elsif current_board[0..6] == " | |x|\n" && position == 3
			play(current_board, position, 2, "x") 
		elsif play_o
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
