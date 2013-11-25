require "highline/import"
require "./lib/naughts_and_crosses.rb"

say "Naughts and Crosses\nRules: \nPlayer 1 is x \nPlayer 2 is o\n
Choose positions with number 1 - 9" 
say empty_board
board = empty_board
play_sequence = 1

while true
	begin  
		position = ask "Choose a number 1 - 9", Integer
		board = play_on_board(board, position, play_sequence)
		say board
		play_sequence += 1
		if board.include?(" wins") or board.include?(" moves")
			exit 
		end
	rescue RuntimeError => e
		say e.message
	end 
end 
