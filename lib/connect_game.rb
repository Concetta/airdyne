class ConnectGame 

	attr_accessor :board, :whose_turn

	def initialize
		@board = "........................."
		@whose_turn = "Player Red"
	end 

	def play(row)
		if @whose_turn == "Player Red"
			r_or_b = "R"
		else 
			r_or_b = "B"
		end 
		
		if row == 1 
			if @board[20] == "." 
				@board[20] = r_or_b
				@board		
			elsif @board[15] == "."
				@board[15] = r_or_b
				@board
 			elsif @board[10] == "." 
				@board[10] = r_or_b
				@board
			elsif @board[5] == "." 
				@board[5] = r_or_b
				@board
			elsif @board[0] == "." 
				@board[0] = r_or_b
				@board
			end 
		elsif row == 2
			if @board[21] == "." 
				@board[21] = r_or_b
				@board
			elsif @board[16] == "." 
				@board[16] = r_or_b
				@board
			elsif @board[11] == "." 
				@board[11] = r_or_b
				@board
			elsif @board[6] == "."
				@board[6] = r_or_b
				@board
			elsif @board[1] == "."
				@board[1] = r_or_b
				@board
			end 
		elsif row == 3
				if @board[22] == "."
					@board[22] = r_or_b
					@board
				elsif @board[17] == "."
					@board[17] = r_or_b
					@board
				elsif @board[12] == "."
					@board[12] = r_or_b
					@board
				elsif @board[7] == "."
					@board[7] = r_or_b
					@board
				elsif @board[2] == "."
					@board[2] = r_or_b
					@board 
				end 
		elsif row == 4
			if @board[23] == "."
				@board[23] = r_or_b
				@board
			elsif @board[18] == "."
				@board[18] = r_or_b
				@board
			elsif @board[13] == "."
				@board[13] = r_or_b
				@board
			elsif @board[8] == "."
				@board[8] = r_or_b
				@board
			elsif @board[3] == "."
				@board[3] = r_or_b
				@board
			end 
		elsif row == 5
			if @board[24] == "."
				@board[24] = r_or_b
				@board
			elsif @board[19] == "."
				@board[19] = r_or_b
				@board
			elsif @board[14] == "."
				@board[14] = r_or_b
				@board
			elsif @board[9] == "."
				@board[9] = r_or_b
				@board
			elsif @board[4] == "."
				@board[4] = r_or_b
				@board
			end 
		end  
		
		if @whose_turn == "Player Red"
			@whose_turn = "Player Blue"
		else 
			@whose_turn = "Player Red"
		end
	end 
end 