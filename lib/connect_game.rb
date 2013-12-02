class ConnectGame 

	attr_accessor :board, :whose_turn

	def initialize
		@board = "........................."
		@whose_turn = "Player Red"
	end 

	def play(row)
		@board[20] = "R"
		@board
		@whose_turn = "Player Blue"
	end 
end 