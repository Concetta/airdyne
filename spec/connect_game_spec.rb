require 'rspec'
require './lib/connect_game.rb'

describe ConnectGame do

	context "New" do  
		it "start with an empty board" do 
			game = ConnectGame.new
			game.board.should == 
			"........................."
		end 

		it "start with an empty board and Red Players turn" do 
			game = ConnectGame.new
			game.whose_turn.should == "Player Red"
		end 
	end

	context "Play" do
		it "Player Red plays first in row 1" do 
			game = ConnectGame.new
			game.play(1)
			game.board.should == "....................R...."
			game.whose_turn.should == "Player Blue"
		end 
	end 
end 