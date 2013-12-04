class ConnectGame 

	attr_accessor :board, :whose_turn

	def initialize
		@board = "........................."
		@whose_turn = "Player Red"
	end 

	def who_is_the_winner
		#vertical wins R
		if @board[15] == "R" && @board[10] == "R" && @board[5] == "R" && @board[0] == "R" 
			"Player Red Wins"
		elsif @board[16] == "R" && @board[11] == "R" && @board[6] == "R" && @board[1] == "R" 
			"Player Red Wins"
		elsif @board[17] == "R" && @board[12] == "R" && @board[7] == "R" && @board[2] == "R" 
			"Player Red Wins"	
		elsif @board[18] == "R" && @board[13] == "R" && @board[8] == "R" && @board[3] == "R" 
			"Player Red Wins"
		elsif @board[19] == "R" && @board[14] == "R" && @board[9] == "R" && @board[4] == "R" 
			"Player Red Wins"			
		elsif @board[20] == "R" && @board[15] == "R" && @board[10] == "R" && @board[5] == "R" 
			"Player Red Wins"	
		elsif @board[21] == "R" && @board[16] == "R" && @board[11] == "R" && @board[6] == "R" 
			"Player Red Wins"
		elsif @board[22] == "R" && @board[17] == "R" && @board[12] == "R" && @board[7] == "R" 
			"Player Red Wins"
		elsif @board[23] == "R" && @board[18] == "R" && @board[13] == "R" && @board[8] == "R" 
			"Player Red Wins"	
		elsif @board[24] == "R" && @board[19] == "R" && @board[14] == "R" && @board[9] == "R" 
			"Player Red Wins"	
		#horizontal wins R
		elsif @board[0] == "R" && @board[1] == "R" && @board[2] == "R" && @board[3] == "R" 
			"Player Red Wins"	
		elsif @board[1] == "R" && @board[2] == "R" && @board[3] == "R" && @board[4] == "R" 
			"Player Red Wins"	
		elsif @board[5] == "R" && @board[6] == "R" && @board[7] == "R" && @board[8] == "R" 
			"Player Red Wins"	
		elsif @board[6] == "R" && @board[7] == "R" && @board[8] == "R" && @board[9] == "R" 
			"Player Red Wins"	
		elsif @board[10] == "R" && @board[11] == "R" && @board[12] == "R" && @board[13] == "R" 
			"Player Red Wins"	
		elsif @board[11] == "R" && @board[12] == "R" && @board[13] == "R" && @board[14] == "R" 
			"Player Red Wins"				
		elsif @board[15] == "R" && @board[16] == "R" && @board[17] == "R" && @board[18] == "R" 
			"Player Red Wins"	
		elsif @board[16] == "R" && @board[17] == "R" && @board[18] == "R" && @board[19] == "R" 
			"Player Red Wins"				
		elsif @board[20] == "R" && @board[21] == "R" && @board[22] == "R" && @board[23] == "R" 
			"Player Red Wins"
		elsif @board[21] == "R" && @board[22] == "R" && @board[23] == "R" && @board[24] == "R" 
			"Player Red Wins"
		#Diagonal wins A
		elsif @board[0] == "R" && @board[6] == "R" && @board[12] == "R" && @board[18] == "R" 
			"Player Red Wins"
		elsif @board[15] == "R" && @board[11] == "R" && @board[7] == "R" && @board[3] == "R" 
			"Player Red Wins"
		elsif @board[16] == "R" && @board[12] == "R" && @board[8] == "R" && @board[4] == "R" 
			"Player Red Wins"
		elsif @board[19] == "R" && @board[13] == "R" && @board[7] == "R" && @board[1] == "R" 
			"Player Red Wins"
		elsif @board[20] == "R" && @board[16] == "R" && @board[12] == "R" && @board[8] == "R" 
			"Player Red Wins"
		elsif @board[21] == "R" && @board[17] == "R" && @board[13] == "R" && @board[9] == "R" 
			"Player Red Wins"
		elsif @board[23] == "R" && @board[17] == "R" && @board[11] == "R" && @board[5] == "R" 
			"Player Red Wins"
		elsif @board[24] == "R" && @board[18] == "R" && @board[12] == "R" && @board[6] == "R" 
			"Player Red Wins"
		#vertical wins B
		elsif @board[15] == "B" && @board[10] == "B" && @board[5] == "B" && @board[0] == "B" 
			"Player Blue Wins"
		elsif @board[16] == "B" && @board[11] == "B" && @board[6] == "B" && @board[1] == "B" 
			"Player Blue Wins"
		elsif @board[17] == "B" && @board[12] == "B" && @board[7] == "B" && @board[2] == "B" 
			"Player Blue Wins"	
		elsif @board[18] == "B" && @board[13] == "B" && @board[8] == "B" && @board[3] == "B" 
			"Player Blue Wins"
		elsif @board[19] == "B" && @board[14] == "B" && @board[9] == "B" && @board[4] == "B" 
			"Player Blue Wins"		
		elsif @board[20] == "B" && @board[15] == "B" && @board[10] == "B" && @board[5] == "B" 
			"Player Blue Wins"		
		elsif @board[21] == "B" && @board[16] == "B" && @board[11] == "B" && @board[6] == "B"
			"Player Blue Wins"
		elsif @board[22] == "B" && @board[17] == "B" && @board[12] == "B" && @board[7] == "B" 
			"Player Blue Wins"
		elsif @board[23] == "B" && @board[18] == "B" && @board[13] == "B" && @board[8] == "B" 
			"Player Blue Wins"
		elsif @board[24] == "B" && @board[19] == "B" && @board[14] == "B" && @board[9] == "B" 
			"Player Blue Wins"
		#horizontal wins B
		elsif @board[0] == "B" && @board[1] == "B" && @board[2] == "B" && @board[3] == "B" 
			"Player Blue Wins"
		elsif @board[1] == "B" && @board[2] == "B" && @board[3] == "B" && @board[4] == "B" 
			"Player Blue Wins"
		elsif @board[5] == "B" && @board[6] == "B" && @board[7] == "B" && @board[8] == "B" 
			"Player Blue Wins"
		elsif @board[6] == "B" && @board[7] == "B" && @board[8] == "B" && @board[9] == "B" 
			"Player Blue Wins"
		elsif @board[10] == "B" && @board[11] == "B" && @board[12] == "B" && @board[13] == "B" 
			"Player Blue Wins"
		elsif @board[11] == "B" && @board[12] == "B" && @board[13] == "B" && @board[14] == "B" 
			"Player Blue Wins"		
		elsif @board[15] == "B" && @board[16] == "B" && @board[17] == "B" && @board[18] == "B" 
			"Player Blue Wins"
		elsif @board[16] == "B" && @board[17] == "B" && @board[18] == "B" && @board[19] == "B" 
			"Player Blue Wins"				
		elsif @board[20] == "B" && @board[21] == "B" && @board[22] == "B" && @board[23] == "B" 
			"Player Blue Wins"
		elsif @board[21] == "B" && @board[22] == "B" && @board[23] == "B" && @board[24] == "B" 
			"Player Blue Wins"
		#Diagonal wins B
		elsif @board[0] == "B" && @board[6] == "B" && @board[12] == "B" && @board[18] == "B" 
			"Player Blue Wins"
		elsif @board[15] == "B" && @board[11] == "B" && @board[7] == "B" && @board[3] == "B" 
			"Player Blue Wins"
		elsif @board[16] == "B" && @board[12] == "B" && @board[8] == "B" && @board[4] == "B" 
			"Player Blue Wins"
		elsif @board[19] == "B" && @board[13] == "B" && @board[7] == "B" && @board[1] == "B" 
			"Player Blue Wins"
		elsif @board[20] == "B" && @board[16] == "B" && @board[12] == "B" && @board[8] == "B" 
			"Player Blue Wins"
		elsif @board[21] == "B" && @board[17] == "B" && @board[13] == "B" && @board[9] == "B" 
			"Player Blue Wins"
		elsif @board[23] == "B" && @board[17] == "B" && @board[11] == "B" && @board[5] == "B" 
			"Player Blue Wins"
		elsif @board[24] == "B" && @board[18] == "B" && @board[12] == "B" && @board[6] == "B" 
			"Player Blue Wins"						
		end 
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
			elsif @board[15] == "."
				@board[15] = r_or_b
 			elsif @board[10] == "." 
				@board[10] = r_or_b
			elsif @board[5] == "." 
				@board[5] = r_or_b
			elsif @board[0] == "." 
				@board[0] = r_or_b
			end 
		elsif row == 2
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
		elsif row == 3
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
		elsif row == 4
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
		elsif row == 5
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
		
		if @whose_turn == "Player Red"
			@whose_turn = "Player Blue"
		else 
			@whose_turn = "Player Red"
		end
	end 
end 