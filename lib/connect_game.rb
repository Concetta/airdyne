class ConnectGame 

	attr_accessor :board, :whose_turn

	def initialize
		@board = "........................."
		@whose_turn = "Player Red"
	end 

	def play(row)
		if row == 1 
			if @board[20] == "." && @whose_turn == "Player Red"
				@board[20] = "R"
				@board
			elsif @board[15] == "." && @whose_turn == "Player Blue"
				@board[15] = "B"
				@board
			elsif @board[15] == "." && @whose_turn == "Player Red"
				@board[15] = "R"
				@board
			elsif @board[10] == "." && @whose_turn == "Player Red"
				@board[10] = "R"
				@board
			elsif @board[5] == "." && @whose_turn == "Player Blue"
				@board[5] = "B"
				@board
			elsif @board[5 * 0] == "." && @whose_turn == "Player Red"
				@board[5 * 0] = "R"
				@board
			end 
		elsif row == 2
			if @board[21] == "." && @whose_turn == "Player Red"
				@board[21] = "R"
				@board
			elsif @board[21] == "." && @whose_turn == "Player Blue"
				@board[21] = "B"
				@board
			elsif @board[16] == "." && @whose_turn == "Player Blue"
				@board[16] = "B"
				@board
			end 
		elsif row == 3
			@board[22] = "R"
			@board
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