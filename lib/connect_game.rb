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
				elsif @board[17] = "."
					@board[17] = r_or_b
					@board 
				end 
		elsif row == 4
			@board[23] = "R"
			@board
		elsif row == 5
			@board[24] = "R"
			@board
		end  
		
		if @whose_turn == "Player Red"
			@whose_turn = "Player Blue"
		else 
			@whose_turn = "Player Red"
		end
	end 
end 