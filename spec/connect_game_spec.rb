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

		context "four in a row or diagonal of same colour is a win" do 
			it "Player Red has four moves in row one spaces 0, 5, 10, 15" do 
				@game.play(2)
				@game.board.should == ".....................R..."
				@game.whose_turn.should == "Player Blue"
				@game.play(1)
				@game.board.should == "....................BR..."
				@game.whose_turn.should == "Player Red"
				@game.play(1)
				@game.board.should == "...............R....BR..."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "...............RB...BR..."
				@game.whose_turn.should == "Player Red"
				@game.play(1)
				@game.board.should == "..........R....RB...BR..."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "..........RB...RB...BR..."
				@game.whose_turn.should == "Player Red"
				@game.play(1)
				@game.board.should == ".....R....RB...RB...BR..."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == ".....RB...RB...RB...BR..."
				@game.play(1)
				@game.board.should == "R....RB...RB...RB...BR..."
				@game.who_is_the_winner.should == "Player Red Wins"
			end			

			it "Player Red has four moves in row two 6, 11 16, 21" do 
				@game.play(2)
				@game.board.should == ".....................R..."
				@game.whose_turn.should == "Player Blue"
				@game.play(1)
				@game.board.should == "....................BR..."
				@game.whose_turn.should == "Player Red"
				@game.play(2)
				@game.board.should == "................R...BR..."
				@game.whose_turn.should == "Player Blue"
				@game.play(1)
				@game.board.should == "...............BR...BR..."
				@game.whose_turn.should == "Player Red"
				@game.play(2)
				@game.board.should == "...........R...BR...BR..."
				@game.whose_turn.should == "Player Blue"
				@game.play(1)
				@game.board.should == "..........BR...BR...BR..."
				@game.whose_turn.should == "Player Red"
				@game.play(2)
				@game.board.should == "......R...BR...BR...BR..."
				@game.who_is_the_winner.should == "Player Red Wins"
			end

			it "Player Blue has four moves in row two 6, 11 16, 21" do 
				@game.play(1)
				@game.board.should == "....................R...."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "....................RB..."
				@game.whose_turn.should == "Player Red"
				@game.play(4)
				@game.board.should == "....................RB.R."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "................B...RB.R."
				@game.whose_turn.should == "Player Red"
				@game.play(1)
				@game.board.should == "...............RB...RB.R."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "...........B...RB...RB.R."
				@game.whose_turn.should == "Player Red"
				@game.play(1)
				@game.board.should == "..........RB...RB...RB.R."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "......B...RB...RB...RB.R."
				@game.who_is_the_winner.should == "Player Blue Wins"
			end 

			it "Player Red has four moves in 20, 21, 22, 23" do 
				@game.play(1)
				@game.board.should == "....................R...."
				@game.whose_turn.should == "Player Blue"
				@game.play(1)
				@game.board.should == "...............B....R...."
				@game.whose_turn.should == "Player Red"
				@game.play(2)
				@game.board.should == "...............B....RR..."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "...............BB...RR..."
				@game.whose_turn.should == "Player Red"
				@game.play(3)
				@game.board.should == "...............BB...RRR.."
				@game.whose_turn.should == "Player Blue"
				@game.play(3)
				@game.board.should == "...............BBB..RRR.."
				@game.whose_turn.should == "Player Red"
				@game.play(4)
				@game.board.should == "...............BBB..RRRR."
				@game.who_is_the_winner.should == "Player Red Wins"
			end 

			it "Player Red has four moves in row 20, 16, 12, 8" do 
				@game.play(1)
				@game.board.should == "....................R...."
				@game.whose_turn.should == "Player Blue"
				@game.play(2)
				@game.board.should == "....................RB..."
				@game.whose_turn.should == "Player Red"
				@game.play(2)
				@game.board.should == "................R...RB..."
				@game.whose_turn.should == "Player Blue"
				@game.play(3)
				@game.board.should == "................R...RBB.."
				@game.whose_turn.should == "Player Red"
				@game.play(4)
				@game.board.should == "................R...RBBR."
				@game.whose_turn.should == "Player Blue"
				@game.play(3)
				@game.board.should == "................RB..RBBR."
				@game.whose_turn.should == "Player Red"
				@game.play(3)
				@game.board.should == "............R...RB..RBBR."
				@game.whose_turn.should == "Player Blue"
				@game.play(4)
				@game.board.should == "............R...RBB.RBBR."
				@game.whose_turn.should == "Player Red"
				@game.play(4)
				@game.board.should == "............RR..RBB.RBBR."
				@game.whose_turn.should == "Player Blue"
				@game.play(5)
				@game.board.should == "............RR..RBB.RBBRB"
				@game.whose_turn.should == "Player Red"
				@game.play(4)
				@game.board.should == "........R...RR..RBB.RBBRB"
				@game.who_is_the_winner.should == "Player Red Wins"
			end 		 		
		end
	end 
end 