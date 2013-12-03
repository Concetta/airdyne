require 'rspec'
require './lib/connect_game.rb'

describe ConnectGame do

	before :each do 
		@game = ConnectGame.new 
	end 

	context "New" do 
		it "start with an empty board" do 
			@game.board.should == 
			"........................."
		end 

		it "start with an empty board and Red Players turn" do 
			@game.whose_turn.should == "Player Red"
		end 
	end

	context "Play" do
		context "first move" do 
			it "Player Red plays in row 1" do 
				@game.play(1)
				@game.board.should == "....................R...."
				@game.whose_turn.should == "Player Blue"
			end

			it "Player Red plays in row 2" do 
				@game.play(2)
				@game.board.should == ".....................R..."
				@game.whose_turn.should == "Player Blue"
			end 

			it "Player Red plays in row 3" do 
				@game.play(3)
				@game.board.should == "......................R.."
				@game.whose_turn.should == "Player Blue"
			end 

			it "Player Red plays in row 4" do
				@game.play(4)
				@game.board.should == ".......................R."
				@game.whose_turn.should == "Player Blue"
			end

			it "Player Red plays in row 5" do 
				@game.play(5)
				@game.board.should == "........................R"
				@game.whose_turn.should == "Player Blue"
			end
		end 

		context "second move" do 
			it "Player Blue plays in row 1 with Red in row 1" do
				@game.play(1)
				@game.board.should == "....................R...."
				@game.whose_turn.should == "Player Blue"
				@game.play(1)
				@game.board.should == "...............B....R...."
				@game.whose_turn.should == "Player Red"
			end

			it "Player Blue plays in row 2 with Red in row 1" do 
				@game.play(1)
				@game.board.should == "....................R...."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "....................RB..."
				@game.whose_turn.should == "Player Red"			
			end 
		end  

		context "third move" do 
			it "Player Red plays in row 1 with Red and Blue in row 1" do
				@game.play(1)
				@game.board.should == "....................R...."
				@game.whose_turn.should == "Player Blue"
				@game.play(1)
				@game.board.should == "...............B....R...."
				@game.whose_turn.should == "Player Red"
				@game.play(1)
				@game.board.should == "..........R....B....R...."
				@game.whose_turn.should == "Player Blue"
			end 

			it "Player Red plays in row 1 with Red in row 1 and Blue in row 2" do
				@game.play(1)
				@game.board.should == "....................R...."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "....................RB..."
				@game.whose_turn.should == "Player Red"
				@game.play(1)
				@game.board.should == "...............R....RB..."
				@game.whose_turn.should == "Player Blue"
			end 
		end

		context "forth move" do 
			it "Player Blue plays in row 1 with Red and Blue in Row 1" do 
				@game.play(1)
				@game.board.should == "....................R...."
				@game.whose_turn.should == "Player Blue"
				@game.play(1)
				@game.board.should == "...............B....R...."
				@game.whose_turn.should == "Player Red"
				@game.play(1)
				@game.board.should == "..........R....B....R...."
				@game.whose_turn.should == "Player Blue"
				@game.play(1)
				@game.board.should == ".....B....R....B....R...."
				@game.whose_turn.should == "Player Red"
			end
		end 

		context "fifth move" do 
			it "Player Red plays in row 1 with Blue and Red in row 1" do 
				@game.play(1)
				@game.board.should == "....................R...."
				@game.whose_turn.should == "Player Blue"
				@game.play(1)
				@game.board.should == "...............B....R...."
				@game.whose_turn.should == "Player Red"
				@game.play(1)
				@game.board.should == "..........R....B....R...."
				@game.whose_turn.should == "Player Blue"
				@game.play(1)
				@game.board.should == ".....B....R....B....R...."
				@game.whose_turn.should == "Player Red"
				@game.play(1)
				@game.board.should == "R....B....R....B....R...."
				@game.whose_turn.should == "Player Blue"
			end 

			it "Player Red plays in row 1 with Blue in row 2 and Red in row 1" do 
				@game.play(1)
				@game.board.should == "....................R...."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "....................RB..."
				@game.whose_turn.should == "Player Red"
				@game.play(1)
				@game.board.should == "...............R....RB..."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "...............RB...RB..."
				@game.whose_turn.should == "Player Red"
				@game.play(1)
				@game.board.should == "..........R....RB...RB..."
				@game.whose_turn.should == "Player Blue"
			end 
		end 

		context "sixth move" do 
			it "Player Red plays in row 2 with Blue in row 2 and Red in row 3" do 
				@game.play(2)
				@game.board.should == ".....................R..."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "................B....R..."
				@game.whose_turn.should == "Player Red"
				@game.play(3)
				@game.board.should == "................B....RR.."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "...........B....B....RR.."
				@game.whose_turn.should == "Player Red"
				@game.play(3)
				@game.board.should == "...........B....BR...RR.."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "......B....B....BR...RR.."
				@game.whose_turn.should == "Player Red"
			end 	
		end 

		context "seventh move" do 
			it "Player Blue plays in row 2 with Blue in row 2 and row 3 and Red in row 2 - 4" do 
				@game.play(2)
				@game.board.should == ".....................R..."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "................B....R..."
				@game.whose_turn.should == "Player Red"
				@game.play(2)
				@game.board.should == "...........R....B....R..."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "......B....R....B....R..."
				@game.whose_turn.should == "Player Red"
				@game.play(3)
				@game.board.should == "......B....R....B....RR.."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == ".B....B....R....B....RR.."
				@game.whose_turn.should == "Player Red"
				@game.play(3)
				@game.board.should == ".B....B....R....BR...RR.."
				@game.whose_turn.should == "Player Blue"
			end 	
		end 

		context "eighth move" do 
			it "Player Blue plays in row 1 with Blue in row 1 and Red in row 1 and 2" do 
				@game.play(2)
				@game.board.should == ".....................R..."
				@game.whose_turn.should == "Player Blue"
				@game.play(1)
				@game.board.should == "....................BR..."
				@game.whose_turn.should == "Player Red"
				@game.play(1)
				@game.board.should == "...............R....BR..."
				@game.whose_turn.should == "Player Blue"
				@game.play(1)
				@game.board.should == "..........B....R....BR..."
				@game.whose_turn.should == "Player Red"
				@game.play(2)
				@game.board.should == "..........B....RR...BR..."
				@game.whose_turn.should == "Player Blue"
				@game.play(1)
				@game.board.should == ".....B....B....RR...BR..."
				@game.whose_turn.should == "Player Red"
				@game.play(2)
				@game.board.should == ".....B....BR...RR...BR..."
				@game.whose_turn.should == "Player Blue"
				@game.play(1)
				@game.board.should == "B....B....BR...RR...BR..."
				@game.whose_turn.should == "Player Red"
			end 
		end 
	end 
end 