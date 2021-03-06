require "highline/import"
require "./lib/naughts_and_crosses.rb"
require "./lib/connect_game.rb"

say "Menu"

	loop do 
	choose do |menu|
		menu.prompt = "Please select a menu number"
		menu.choice "Naughts and Crosses" do 
			say "Naughts and Crosses\nRules: \nPlayer 1 is x \nPlayer 2 is o\nChoose positions with number 1 - 9" 
			say empty_board
			board = empty_board
			play_sequence = 1
			game_play = true 

			while game_play
				begin  
					position = ask "Choose a number 1 - 9", Integer
					board = play_on_board(board, position, play_sequence)
					say board
					play_sequence += 1
					if board.include?(" wins") or board.include?(" moves")
							game_play = false 
					end
				rescue RuntimeError => e
					say e.message
				end 
			end 
		end 
		menu.choice "Connect the dots" do 
			say "Connect the dots\n Rules: \n Player Red is R\n Player Blue is B\n"
			@game = ConnectGame.new
			say @game.board
			game_play = true 
			
			while game_play 	
				begin 		
					row = ask "Choose a row from 1 -5 to play", Integer
					@game.play(row)
					say @game.board
					if @game.done?.include?(" Wins")
						game_play = false 
					end 
				rescue RuntimeError => e
					say e.message
				end 	
			end 
		end 
		menu.choice(:Exit) { exit }
	end
	end  

