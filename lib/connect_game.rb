class ConnectGame 

	attr_accessor :board, :whose_turn

	def initialize
		@board = "........................."
		@whose_turn = "Player Red"
	end 

	def who_is_the_winner
		the_winner("R", "Player Red Wins") or the_winner("B", "Player Blue Wins")
	end 

	def check_vertical_win(r_or_b, who_wins)
		the_winner = nil
		(0.upto(9)).each do |x|
			if @board[15 + x] == r_or_b && @board[10 + x] == r_or_b && @board[5 + x] == r_or_b && @board[0 + x] == r_or_b
				the_winner = who_wins
			end 
		end 
		the_winner
	end 

	def check_horizontal_win(r_or_b, who_wins)
		if @board[0] == r_or_b && @board[1] == r_or_b && @board[2] == r_or_b && @board[3] == r_or_b 
			who_wins	
		elsif @board[1] == r_or_b && @board[2] == r_or_b && @board[3] == r_or_b && @board[4] == r_or_b 
			who_wins	
		elsif @board[5] == r_or_b && @board[6] == r_or_b && @board[7] == r_or_b && @board[8] == r_or_b 
			who_wins	
		elsif @board[6] == r_or_b && @board[7] == r_or_b && @board[8] == r_or_b && @board[9] == r_or_b 
			who_wins	
		elsif @board[10] == r_or_b && @board[11] == r_or_b && @board[12] == r_or_b && @board[13] == r_or_b 
			who_wins	
		elsif @board[11] == r_or_b && @board[12] == r_or_b && @board[13] == r_or_b && @board[14] == r_or_b
			who_wins				
		elsif @board[15] == r_or_b && @board[16] == r_or_b && @board[17] == r_or_b && @board[18] == r_or_b
			who_wins	
		elsif @board[16] == r_or_b && @board[17] == r_or_b && @board[18] == r_or_b && @board[19] == r_or_b 
			who_wins				
		elsif @board[20] == r_or_b && @board[21] == r_or_b && @board[22] == r_or_b && @board[23] == r_or_b 
			who_wins
		elsif @board[21] == r_or_b && @board[22] == r_or_b && @board[23] == r_or_b && @board[24] == r_or_b 
			who_wins
		end 
	end 

	def check_diagonal_win(r_or_b, who_wins)
		if @board[0] == r_or_b && @board[6] == r_or_b && @board[12] == r_or_b && @board[18] == r_or_b
			who_wins
		elsif @board[15] == r_or_b && @board[11] == r_or_b && @board[7] == r_or_b && @board[3] == r_or_b 
			who_wins
		elsif @board[16] == r_or_b && @board[12] == r_or_b && @board[8] == r_or_b && @board[4] == r_or_b 
			who_wins
		elsif @board[19] == r_or_b && @board[13] == r_or_b && @board[7] == r_or_b && @board[1] == r_or_b 
			who_wins
		elsif @board[20] == r_or_b && @board[16] == r_or_b && @board[12] == r_or_b && @board[8] == r_or_b 
			who_wins
		elsif @board[21] == r_or_b && @board[17] == r_or_b && @board[13] == r_or_b && @board[9] == r_or_b 
			who_wins
		elsif @board[23] == r_or_b && @board[17] == r_or_b && @board[11] == r_or_b && @board[5] == r_or_b 
			who_wins
		elsif @board[24] == r_or_b && @board[18] == r_or_b && @board[12] == r_or_b && @board[6] == r_or_b 
			who_wins
		end
	end 

	def the_winner(r_or_b, who_wins)
		if the_winner = check_vertical_win(r_or_b, who_wins)
			the_winner
		elsif the_winner = check_horizontal_win(r_or_b, who_wins)
			the_winner
		else 
			check_diagonal_win(r_or_b, who_wins)
		end 
	end 

	def play(row)
		if @whose_turn == "Player Red"
			r_or_b = "R"
		else 
			r_or_b = "B"
		end 
		
		if row == 1 
			row_one(r_or_b)
		elsif row == 2
			row_two(r_or_b)
		elsif row == 3
			row_three(r_or_b)
		elsif row == 4
			row_four(r_or_b)
		elsif row == 5
			row_five(r_or_b)
		end  
		
		if @whose_turn == "Player Red"
			@whose_turn = "Player Blue"
		else 
			@whose_turn = "Player Red"
		end
	end

	def row_one(r_or_b)
		if @board[20] == "." 
			@board[20] = r_or_b	
		elsif @board[15] == "."
			@board[15] = r_or_b
 		elsif @board[10] == "." 
			@board[10] = r_or_b
		elsif @board[5] == "." 
			@board[5] = r_or_b
		elsif @board[0] == "." 
			@board[0] = r_or_b
		end 
	end 

	def row_two(r_or_b)
		if @board[21] == "." 
			@board[21] = r_or_b
		elsif @board[16] == "." 
			@board[16] = r_or_b
		elsif @board[11] == "." 
			@board[11] = r_or_b
		elsif @board[6] == "."
			@board[6] = r_or_b
		elsif @board[1] == "."
			@board[1] = r_or_b
		end 
	end 

	def row_three(r_or_b)
		if @board[22] == "."
			@board[22] = r_or_b
		elsif @board[17] == "."
			@board[17] = r_or_b
		elsif @board[12] == "."
			@board[12] = r_or_b
		elsif @board[7] == "."
			@board[7] = r_or_b
		elsif @board[2] == "."
			@board[2] = r_or_b
		end 
	end 

	def row_four(r_or_b)
		if @board[23] == "."
			@board[23] = r_or_b
		elsif @board[18] == "."
			@board[18] = r_or_b
		elsif @board[13] == "."
			@board[13] = r_or_b
		elsif @board[8] == "."
			@board[8] = r_or_b
		elsif @board[3] == "."
			@board[3] = r_or_b
		end 
	end 

	def row_five(r_or_b)
		if @board[24] == "."
			@board[24] = r_or_b
		elsif @board[19] == "."
			@board[19] = r_or_b
		elsif @board[14] == "."
			@board[14] = r_or_b
		elsif @board[9] == "."
			@board[9] = r_or_b
		elsif @board[4] == "."
			@board[4] = r_or_b
		end 
	end 
end 
