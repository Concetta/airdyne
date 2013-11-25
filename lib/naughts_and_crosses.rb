require "highline/import"

def empty_board
	" | | |\n | | |\n | | |\n"
end 

def play_on_board(current_board, position, play_sequence)
	play_x = play_sequence.odd?
	play_o = play_sequence.even? 
	row_one = (position >= 1 && position < 4)
	row_two = (position >= 4 && position < 7)
	row_three = (position >= 7)
	result = if row_one
			check_and_play(current_board, position, 2, play_x, play_o)
		elsif row_two
			check_and_play(current_board, position, 1, play_x, play_o) 
		elsif row_three
			check_and_play(current_board, position, 0, play_x, play_o) 
		end
	if check_for_winner(result, "x")
		result += " Player 1 wins"
		result 
	elsif check_for_winner(result, "o")
		result += " Player 2 wins"
		result
	elsif play_sequence == 9 
		result += " No more moves"
		result
	end
	result 
end 

def play(current_board, position, row_move, x_or_o)
		current_board[position * 2 - row_move] = x_or_o
		current_board 
end

def check_and_play(current_board, position, row_move, play_x, play_o)
	if current_board[position * 2 - row_move] != " "
		raise 'invalid play'
	elsif play_x
		 	play(current_board,position, row_move, "x") 
	elsif play_o
		 	play(current_board,position, row_move, "o")  			
	end 
end 

def winner(result, position1, position2, position3, x_or_o)
	result[position1] == x_or_o && result[position2] == x_or_o && result[position3] == x_or_o
end 

def check_for_winner(result, x_or_o)
	if winner(result, 0, 2, 4, x_or_o)
		true
	elsif winner(result, 7, 9, 11, x_or_o)
		true
	elsif winner(result, 14, 16, 18, x_or_o)
		true 
	elsif winner(result, 0, 7, 14, x_or_o)
		true
	elsif winner(result, 2, 9, 16, x_or_o)
		true
	elsif winner(result, 4, 11, 18, x_or_o)
		true
	elsif winner(result, 0, 9, 18, x_or_o)
		true
	elsif winner(result, 4, 9, 14, x_or_o)
		true
	else 
		false 
	end 
end 
