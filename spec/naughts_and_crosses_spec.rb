require 'rspec'
require './lib/naughts_and_crosses.rb'

describe "naughts_and_crosses board" do 
	it "has an outline of the board " do 
		naughts_and_crosses_board.should == 
			" | | |\n" + 
			"-------\n" + 
			" | | |\n" +
			"-------\n" + 
			" | | |\n" 
	end

	it "A1 is a valid position" do 
		position_on_board("A1").should ==
			"o| | |\n" + 
			"-------\n" + 
			" | | |\n" +
			"-------\n" + 
			" | | |\n" 
	end 

	it "B1 is a valid position" do 
		position_on_board("B1").should ==
			" |o| |\n" + 
			"-------\n" + 
			" | | |\n" +
			"-------\n" + 
			" | | |\n" 
	end 

	it "C1 is a valid position" do 
		position_on_board("C1").should ==
			" | |o|\n" + 
			"-------\n" + 
			" | | |\n" +
			"-------\n" + 
			" | | |\n" 
		end 

	it "A2 is a valid position" do 
		position_on_board("A2").should ==
			" | | |\n" + 
			"-------\n" + 
			"o| | |\n" +
			"-------\n" + 
			" | | |\n" 
	end 

	it "B2 is a valid position" do 
		position_on_board("B2").should ==
			" | | |\n" + 
			"-------\n" + 
			" |o| |\n" +
			"-------\n" + 
			" | | |\n" 
	end

	it "C2 is a valid position" do 
		position_on_board("C2").should ==
			" | | |\n" + 
			"-------\n" + 
			" | |o|\n" +
			"-------\n" + 
			" | | |\n" 
	end 

	it "A3 is a valid position" do 
		position_on_board("A3").should ==
			" | | |\n" + 
			"-------\n" + 
			" | | |\n" +
			"-------\n" + 
			"o| | |\n" 
	end

	it "B3 is a valid position" do 
		position_on_board("B3").should ==
			" | | |\n" + 
			"-------\n" + 
			" | | |\n" +
			"-------\n" + 
			" |o| |\n" 
	end 

	it "C3 is a valid position" do 
		position_on_board("C3").should ==
			" | | |\n" + 
			"-------\n" + 
			" | | |\n" +
			"-------\n" + 
			" | |o|\n" 
	end 	 	 
end 

