class ConnectGame 

	attr_accessor :board, :whose_turn, :dev

	def initialize(dev = nil)
		if dev 
			@board = "........................."
		else 
		 @board = ".....\n.....\n.....\n.....\n....."
		end 
		@whose_turn = "Player Red"
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

	def who_is_the_winner
		the_winner("R", "Player Red Wins") or the_winner("B", "Player Blue Wins")
	end 

	def done? 
		if who_is_the_winner
			who_is_the_winner
		else 
			"No more moves"
		end 
	end 

	private

	def the_winner(r_or_b, who_wins)
		if the_winner = check_vertical_win(r_or_b, who_wins)
			the_winner
		elsif the_winner = check_horizontal_win(r_or_b, who_wins)
			the_winner
		else 
			check_diagonal_win(r_or_b, who_wins)
		end 
	end 

	def row_one(r_or_b)
		if @board[0] != "."
			raise 'invalid play'
		else 
			(4.downto(0)).each do |x|
				if @board[5 * x] == "."
					@board[5 * x] = r_or_b
					break 
				end
			end
		end 
	end 

	def row_two(r_or_b)
		if @board[1] != "."
			raise 'invalid play'
		else 
			(4.downto(0)).each do |x|
				if @board[5 * x + 1] == "."
					@board[5 * x + 1] = r_or_b
					break
				end 
			end 
		end 
	end 

	def row_three(r_or_b)
		if @board[2] != "."
			raise 'invalid play'
		else 
			(4.downto(0)).each do |x|
				if @board[5 * x + 2] == "."
					@board[5 * x + 2] = r_or_b
					break
				end 
			end 
		end 
	end 

	def row_four(r_or_b)
		if @board[3] != "."
			raise 'invalid play'
		else 
		(4.downto(0)).each do |x|
				if @board[5 * x + 3] == "."
					@board[5 * x + 3] = r_or_b
					break
				end 
			end 
		end 
	end 

	def row_five(r_or_b)
		if @board[4] != "."
			raise 'invalid play'
		else 
			(4.downto(0)).each do |x|
				if @board[5 * x + 4] == "."
					@board[5 * x + 4] = r_or_b
					break
				end 
			end 
		end 
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
		the_winner = nil 
		(0.upto(1)).each do |x|
			([0,5,10,15,20]).each do |y|
				if @board[y + x] == r_or_b && @board[y + 1 + x] == r_or_b && @board[y + 2 + x] == r_or_b && @board[y + 3 + x] == r_or_b 
					the_winner = who_wins
				end 
			end 
		end 
		the_winner
	end 

	def check_diagonal_win(r_or_b, who_wins)
		the_winner = nil 
		(0.upto(1)).each do |x|
			if @board[15 + x] == r_or_b && @board[11 + x] == r_or_b && @board[7 + x] == r_or_b && @board[3 + x] == r_or_b 
				the_winner = who_wins
			elsif @board[18 + x] == r_or_b && board[12 + x] == r_or_b && @board[6 + x] == r_or_b && @board[0 + x] == r_or_b
				the_winner = who_wins
			elsif @board[20 + x] == r_or_b && @board[16 + x] == r_or_b && @board[12 + x] == r_or_b && @board[8 + x] == r_or_b 
				the_winner = who_wins
			elsif @board[23 + x] == r_or_b && @board[17 + x] == r_or_b && @board[11 + x] == r_or_b && @board[5 + x] == r_or_b 
				the_winner = who_wins
			end 
		end 
		the_winner
	end 
end 
