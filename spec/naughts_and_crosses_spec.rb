require 'rspec'
require './lib/naughts_and_crosses.rb'

describe "naughts_and_crosses board" do 
	context "First play is x from position 1 - 9" do
		it "First play is x, play at position 1" do 
			play_on_board(" | | |\n | | |\n | | |\n", 1, 1).should == 
			"x| | |\n | | |\n | | |\n"
		end 

		it "First play is x, play at position 2" do 
			play_on_board(" | | |\n | | |\n | | |\n", 2, 1).should == 
			" |x| |\n | | |\n | | |\n"
		end 

		it "First play is x, play at position 3" do 
			play_on_board(" | | |\n | | |\n | | |\n", 3, 1).should == 
			" | |x|\n | | |\n | | |\n"
		end

		it "First play is x, play at position 4" do 
			play_on_board(" | | |\n | | |\n | | |\n", 4, 1).should == 
			" | | |\nx| | |\n | | |\n"
		end

		it "First play is x, play at position 5" do 
			play_on_board(" | | |\n | | |\n | | |\n", 5, 1).should == 
			" | | |\n |x| |\n | | |\n"
		end

		it "First play is x, play at position 6" do 
			play_on_board(" | | |\n | | |\n | | |\n", 6, 1).should == 
			" | | |\n | |x|\n | | |\n"
		end

		it "First play is x, play at position 7" do 
			play_on_board(" | | |\n | | |\n | | |\n", 7, 1).should == 
			" | | |\n | | |\nx| | |\n"
		end

		it "First play is x, play at position 8" do 
			play_on_board(" | | |\n | | |\n | | |\n", 8, 1).should == 
			" | | |\n | | |\n |x| |\n"
		end

		it "First play is x, play at position 9" do 
			play_on_board(" | | |\n | | |\n | | |\n", 9, 1).should == 
			" | | |\n | | |\n | |x|\n"
		end
	end 

	context "Second play is o from position 2 - 9" do 
		it "Second play is o, play at position 2" do 
			play_on_board("x| | |\n | | |\n | | |\n", 2, 2).should == 
			"x|o| |\n | | |\n | | |\n"
		end                      

		it "Second play is o, play at position 3" do 
			play_on_board("x| | |\n | | |\n | | |\n", 3, 2).should == 
			"x| |o|\n | | |\n | | |\n"
		end

		it "Second play is o, play at position 4" do 
			play_on_board("x| | |\n | | |\n | | |\n", 4, 2).should == 
			"x| | |\no| | |\n | | |\n"
		end 

		it "Second play is o, play at position 5" do 
			play_on_board("x| | |\n | | |\n | | |\n", 5, 2).should == 
			"x| | |\n |o| |\n | | |\n"
		end

		it "Second play is o, play at position 6" do 
			play_on_board("x| | |\n | | |\n | | |\n", 6, 2).should == 
			"x| | |\n | |o|\n | | |\n"
		end

		it "Second play is o, play at position 7" do 
			play_on_board("x| | |\n | | |\n | | |\n", 7, 2).should == 
			"x| | |\n | | |\no| | |\n"
		end           

		it "Second play is o, play at position 8" do 
			play_on_board("x| | |\n | | |\n | | |\n", 8, 2).should == 
			"x| | |\n | | |\n |o| |\n"
		end 

		it "Second play is o, play at position 9" do 
			play_on_board("x| | |\n | | |\n | | |\n", 9, 2).should == 
			"x| | |\n | | |\n | |o|\n"
		end
	end  

	context "Second play is o at position 2, with x from position 3 - 9" do 
		it "Second play is o, play at position 2" do 
			play_on_board(" | | |\n | | |\nx| | |\n", 2, 2).should == 
			" |o| |\n | | |\nx| | |\n"
		end 

		it "Second play is o, play at position 2" do 
			play_on_board(" | |x|\n | | |\n | | |\n", 2, 2).should == 
			" |o|x|\n | | |\n | | |\n"
		end

		it "Second play is o, play at position 2" do 
			play_on_board(" | | |\nx| | |\n | | |\n", 2, 2).should == 
			" |o| |\nx| | |\n | | |\n"
		end 	

		it "Second play is o, play at position 2" do 
			play_on_board(" | | |\n | | |\n |x| |\n", 2, 2).should == 
			" |o| |\n | | |\n |x| |\n"
		end

		it "Second play is o, play at position 2" do 
			play_on_board(" | | |\n |x| |\n | | |\n", 2, 2).should == 
			" |o| |\n |x| |\n | | |\n"
		end 

		it "Second play is o, play at position 2" do 
			play_on_board(" | | |\n | |x|\n | | |\n", 2, 2).should == 
			" |o| |\n | |x|\n | | |\n"
		end 

		it "Second play is o, play at position 2" do 
			play_on_board(" | | |\n | | |\n | |x|\n", 2, 2).should == 
			" |o| |\n | | |\n | |x|\n"
		end
	end 

	context "Second play is o from position 1, 3 - 9, with x at position 2" do 
		it "Second play is o, play at position 1" do 
			play_on_board(" |x| |\n | | |\n | | |\n", 1, 2).should == 
			"o|x| |\n | | |\n | | |\n"
		end

		it "Second play is o, play at position 3" do 
			play_on_board(" |x| |\n | | |\n | | |\n", 3, 2).should == 
			" |x|o|\n | | |\n | | |\n"
		end

		it "Second play is o, play at position 4" do 
			play_on_board(" |x| |\n | | |\n | | |\n", 4, 2).should == 
			" |x| |\no| | |\n | | |\n"
		end 

		it "Second play is o, play at position 5" do 
			play_on_board(" |x| |\n | | |\n | | |\n", 5, 2).should == 
			" |x| |\n |o| |\n | | |\n"
		end

		it "Second play is o, play at position 6" do 
			play_on_board(" |x| |\n | | |\n | | |\n", 6, 2).should == 
			" |x| |\n | |o|\n | | |\n"
		end

		it "Second play is o, play at position 7" do 
			play_on_board(" |x| |\n | | |\n | | |\n", 7, 2).should == 
			" |x| |\n | | |\no| | |\n"
		end

		it "Second play is o, play at position 8" do 
			play_on_board(" |x| |\n | | |\n | | |\n", 8, 2).should == 
			" |x| |\n | | |\n |o| |\n"
		end	

		it "Second play is o, play at position 9" do 
			play_on_board(" |x| |\n | | |\n | | |\n", 9, 2).should == 
			" |x| |\n | | |\n | |o|\n"
		end
	end

	context "Second play is o at position 1, with x from position 3 - 9" do 
		it "Second play is o, play at position 1" do 
			play_on_board(" | |x|\n | | |\n | | |\n", 1, 2).should == 
			"o| |x|\n | | |\n | | |\n"
		end

		it "Second play is o, play at position 1" do 
			play_on_board(" | |x|\n | | |\n | | |\n", 1, 2).should == 
			"o| |x|\n | | |\n | | |\n"
		end

		it "Second play is o, play at position 1" do 
			play_on_board(" | | |\nx| | |\n | | |\n", 1, 2).should == 
			"o| | |\nx| | |\n | | |\n"
		end
	end

	context "Second play is o from position 4 - 9, with x at position 3" do
		it "Second play is o, play at position 4" do 
			play_on_board(" | |x|\n | | |\n | | |\n", 4, 2).should == 
			" | |x|\no| | |\n | | |\n"
		end

		it "Second play is o, play at position 7" do 
			play_on_board(" | |x|\n | | |\n | | |\n", 7, 2).should == 
			" | |x|\n | | |\no| | |\n"
		end
	end 

	context "Third play is x, with x from position 3 - 9 and xo in postion 1 & 2" do 
		it "Third play is x, play at position 3" do 
			play_on_board("x|o| |\n | | |\n | | |\n", 3, 3).should == 
			"x|o|x|\n | | |\n | | |\n"
		end 

		it "Third play is x, play at position 4" do 
			play_on_board("x|o| |\n | | |\n | | |\n", 4, 3).should == 
			"x|o| |\nx| | |\n | | |\n"
		end

		it "Third play is x, play at position 5" do 
			play_on_board("x|o| |\n | | |\n | | |\n", 5, 3).should == 
			"x|o| |\n |x| |\n | | |\n"
		end

		it "Third play is x, play at position 6" do 
			play_on_board("x|o| |\n | | |\n | | |\n", 6, 3).should == 
			"x|o| |\n | |x|\n | | |\n"
		end

		it "Third play is x, play at position 7" do 
			play_on_board("x|o| |\n | | |\n | | |\n", 7, 3).should == 
			"x|o| |\n | | |\nx| | |\n"
		end 

		it "Third play is x, play at position 8" do 
			play_on_board("x|o| |\n | | |\n | | |\n", 8, 3).should == 
			"x|o| |\n | | |\n |x| |\n"
		end     

		it "Third play is x, play at position 9" do 
			play_on_board("x|o| |\n | | |\n | | |\n", 9, 3).should == 
			"x|o| |\n | | |\n | |x|\n"
		end   
	end

	context "Third play is x, with x in position 2 & 4-9, with play 1 and play 3 being x o" do 
		it "Third play is x, play at position 2" do 
			play_on_board("x| |o|\n | | |\n | | |\n", 2, 3).should == 
			"x|x|o|\n | | |\n | | |\n"
		end

		it "Third play is x, play at position 4" do 
			play_on_board("x| |o|\n | | |\n | | |\n", 4, 3).should == 
			"x| |o|\nx| | |\n | | |\n"
		end

		it "Third play is x, play at position 5" do 
			play_on_board("x| |o|\n | | |\n | | |\n", 5, 3).should == 
			"x| |o|\n |x| |\n | | |\n"
		end  	  	  		
	
		it "Third play is x, play at position 6" do 
			play_on_board("x| |o|\n | | |\n | | |\n", 6, 3).should == 
			"x| |o|\n | |x|\n | | |\n"
		end 

		it "Third play is x, play at position 7" do 
			play_on_board("x| |o|\n | | |\n | | |\n", 7, 3).should == 
			"x| |o|\n | | |\nx| | |\n"
		end 

		it "Third play is x, play at position 8" do 
			play_on_board("x| |o|\n | | |\n | | |\n", 8, 3).should == 
			"x| |o|\n | | |\n |x| |\n"
		end

		it "Third play is x, play at position 9" do 
			play_on_board("x| |o|\n | | |\n | | |\n", 9, 3).should == 
			"x| |o|\n | | |\n | |x|\n"
		end 	 	
	end

	context "Forth play is o in position 4 - 9, plays 1 - 3 is x x o" do 
		it "Forth play is o, play at position 4" do 
			play_on_board("x|x|o|\n | | |\n | | |\n", 4, 4).should == 
			"x|x|o|\no| | |\n | | |\n"
		end

		it "Forth play is o, play at position 5" do 
			play_on_board("x|x|o|\n | | |\n | | |\n", 5, 4).should == 
			"x|x|o|\n |o| |\n | | |\n"
		end

		it "Forth play is o, play at position 6" do 
			play_on_board("x|x|o|\n | | |\n | | |\n", 6, 4).should == 
			"x|x|o|\n | |o|\n | | |\n"
		end

		it "Forth play is o, play at position 7" do 
			play_on_board("x|x|o|\n | | |\n | | |\n", 7, 4).should == 
			"x|x|o|\n | | |\no| | |\n"
		end

		it "Forth play is o, play at position 8" do 
			play_on_board("x|x|o|\n | | |\n | | |\n", 8, 4).should == 
			"x|x|o|\n | | |\n |o| |\n"
		end		   
	
		it "Forth play is o, play at position 9" do 
			play_on_board("x|x|o|\n | | |\n | | |\n", 9, 4).should == 
			"x|x|o|\n | | |\n | |o|\n"
		end		
	end

	context "Forth play is o in position 4 - 9, plays 1 - 3 is o x x" do 
		it "Forth play is o, play at position 4" do 
			play_on_board("o|x|x|\n | | |\n | | |\n", 4, 4).should == 
			"o|x|x|\no| | |\n | | |\n"
		end

		it "Forth play is o, play at position 5" do 
			play_on_board("o|x|x|\n | | |\n | | |\n", 5, 4).should == 
			"o|x|x|\n |o| |\n | | |\n"
		end

		it "Forth play is o, play at position 7" do 
			play_on_board("o|x|x|\n | | |\n | | |\n", 7, 4).should == 
			"o|x|x|\n | | |\no| | |\n"
		end
	end

	context "Forth play is o in position 4 - 9, plays 1 - 3 is x o x" do 
		it "Forth play is o, play at position 4" do 
			play_on_board("x|o|x|\n | | |\n | | |\n", 4, 4).should == 
			"x|o|x|\no| | |\n | | |\n"
		end

		it "Forth play is o, play at position 7" do 
			play_on_board("x|o|x|\n | | |\n | | |\n", 7, 4).should == 
			"x|o|x|\n | | |\no| | |\n"
		end
	end 

	context "Forth play is o staying at position 2, x is played in position 4 - 9" do 
		it "Forth play is o, play at position 2" do 
			play_on_board("o| |x|\nx| | |\n | | |\n", 2, 4).should == 
			"o|o|x|\nx| | |\n | | |\n"
		end

		it "Forth play is o, play at position 7" do 
			play_on_board("o| |x|\n | | |\nx| | |\n", 2, 4).should == 
			"o|o|x|\n | | |\nx| | |\n"
		end
	end 

	context "Fifth play is x" do 
		it "Fifth play is x, play at position 2" do 
			play_on_board("o| |x|\nx| | |\no| | |\n", 2, 5).should == 
			"o|x|x|\nx| | |\no| | |\n"
		end

		it "Fifth play is x, play at position 3" do 
			play_on_board("o|x| |\nx| | |\no| | |\n", 3, 5).should == 
			"o|x|x|\nx| | |\no| | |\n"
		end

		it "Fifth play is x, play at position 5" do 
			play_on_board("o|x|x|\n | | |\no| | |\n", 5, 5).should == 
			"o|x|x|\n |x| |\no| | |\n"
		end

		it "Fifth play is x, play at position 9" do 
			play_on_board("o|x|x|\n | | |\no| | |\n", 9, 5).should == 
			"o|x|x|\n | | |\no| |x|\n"
		end		
	end

	context "Sixth play is o" do 
		it "Sixth play is o, play at position 3" do 
			play_on_board("x|x| |\n | |o|\n |o|x|\n", 3, 6).should == 
			"x|x|o|\n | |o|\n |o|x|\n"
		end

		it "Sixth play is o, play at position 6" do 
			play_on_board("x|x| |\no| | |\n |o|x|\n", 6, 6).should == 
			"x|x| |\no| |o|\n |o|x|\n"
		end

		it "Sixth play is o , play at position 8" do 
			play_on_board("x|x| |\no|o| |\n | |x|\n", 8, 6).should == 
			"x|x| |\no|o| |\n |o|x|\n"
		end
	end

	context "Seventh play is x" do
		it "Seventh play is x, play at position 1" do 
			play_on_board(" |x|o|\nx| |o|\n |o|x|\n", 1, 7).should == 
			"x|x|o|\nx| |o|\n |o|x|\n"
		end
	end

	context "Eighth play is o" do 
		it "Eighth play is o, play at position 5" do 
			play_on_board("x|x|o|\nx| |o|\n |o|x|\n", 5, 8).should == 
			"x|x|o|\nx|o|o|\n |o|x|\n"
		end
	end

	context "Nineth play is x" do 
		it "Nineth play is x, play at position 7" do
			play_on_board("x|x|o|\nx|o|o|\n |o|x|\n", 7, 9).should == 
			"x|x|o|\nx|o|o|\nx|o|x|\n"
		end
	end

	context "If a place is filled then cannot change in row_one" do
		it "Second play is o, play in position 1 which is already x" do
			play_on_board("x| | |\n | | |\n | | |\n", 1, 2).should == 
			"x| | |\n | | |\n | | |\n"
		end

		it "Second play is o, play in position 2 which is already x" do
			play_on_board(" |x| |\n | | |\n | | |\n", 2, 2).should == 
			" |x| |\n | | |\n | | |\n"
		end

		it "Second play is o, play in position 3 which is already x" do
			play_on_board(" | |x|\n | | |\n | | |\n", 3, 2).should == 
			" | |x|\n | | |\n | | |\n"
		end

		it "third play is x, play in position 1 which is already o" do 
			play_on_board("o| |x|\n | | |\n | | |\n", 1, 3).should == 
			"o| |x|\n | | |\n | | |\n"
		end

		it "third play is x, play in position 2 which is already o" do 
			play_on_board(" |o|x|\n | | |\n | | |\n", 2, 3).should == 
			" |o|x|\n | | |\n | | |\n"
		end

		it "third play is x, play in position 3 which is already o" do 
			play_on_board(" |x|o|\n | | |\n | | |\n", 3, 3).should == 
			" |x|o|\n | | |\n | | |\n"
		end  
	end  
end 