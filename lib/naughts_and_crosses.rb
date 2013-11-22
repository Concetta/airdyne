def play_on_board(current_board, position, play_sequence)
	play_x = play_sequence.odd?
	play_o = play_sequence.even? 
	row_one = (position >= 1 && position < 4)
	row_two = (position >= 4 && position < 7)
	row_three = (position >= 7)
	if row_one
			check_and_play(current_board, position, 2, play_x, play_o)
	elsif row_two
		check_and_play(current_board, position, 1, play_x, play_o) 
	elsif row_three
		check_and_play(current_board, position, 0, play_x, play_o) 
	end
end 

def play(current_board, position, row_move, x_or_o)
		current_board[position * 2 - row_move] = x_or_o
		current_board 
end

def check_and_play(current_board, position, row_move, play_x, play_o)
		if current_board[position * 2 - row_move] != " "
			raise 'invalid play'
		elsif current_board[0..20] == "x|x| |\n |o|o|\n | | |\n" && play_x
			current_board[4] = "x"
			current_board + " Player 1 wins"
		elsif current_board[0..20] == " | | |\nx|o|o|\nx| | |\n" && play_x
			current_board[0] = "x"
			current_board + " Player 1 wins"
		elsif current_board[0..20] == "o| | |\n |x|o|\n |x| |\n" && play_x
			current_board[2] = "x"
			current_board + " Player 1 wins"	
		elsif current_board[0..20] == "o|o| |\n |x|x|\nx| | |\n" && play_o
			current_board[4] = "o"
			current_board + " Player 2 wins"
		elsif current_board[0..20] == " |x| |\no|x|x|\no| | |\n" && play_o
			current_board[0] = "o"
			current_board + " Player 2 wins"
		elsif current_board[0..20] == "x| | |\nx|o|x|\n |o| |\n" && play_o
			current_board[2] = "o"
			current_board + " Player 2 wins"
		elsif play_x
		 	play(current_board,position, row_move, "x")
		elsif play_o
		 	play(current_board,position, row_move, "o")  			
		end 
end 
