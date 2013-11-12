require 'rspec'
require './lib/naughts_and_crosses.rb'

describe "naughts_and_crosses board" do 
	it "First play is x, play at position 1" do 
		play_on_board(" | | |\n | | |\n | | |\n", 1).should == 
		"x| | |\n | | |\n | | |\n"
	end 

	it "First play is x, play at position 2" do 
		play_on_board(" | | |\n | | |\n | | |\n", 2).should == 
		" |x| |\n | | |\n | | |\n"
	end 

	it "First play is x, play at position 3" do 
		play_on_board(" | | |\n | | |\n | | |\n", 3).should == 
		" | |x|\n | | |\n | | |\n"
	end

	it "First play is x, play at position 4" do 
		play_on_board(" | | |\n | | |\n | | |\n", 4).should == 
		" | | |\nx| | |\n | | |\n"
	end

	it "First play is x, play at position 5" do 
		play_on_board(" | | |\n | | |\n | | |\n", 5).should == 
		" | | |\n |x| |\n | | |\n"
	end

	it "First play is x, play at position 6" do 
		play_on_board(" | | |\n | | |\n | | |\n", 6).should == 
		" | | |\n | |x|\n | | |\n"
	end

	it "First play is x, play at position 7" do 
		play_on_board(" | | |\n | | |\n | | |\n", 7).should == 
		" | | |\n | | |\nx| | |\n"
	end

	it "First play is x, play at position 8" do 
		play_on_board(" | | |\n | | |\n | | |\n", 8).should == 
		" | | |\n | | |\n |x| |\n"
	end

	it "First play is x, play at position 9" do 
		play_on_board(" | | |\n | | |\n | | |\n", 9).should == 
		" | | |\n | | |\n | |x|\n"
	end

	it "Second play is o, play at position 2" do 
		play_on_board("x| | |\n | | |\n | | |\n", 2).should == 
		"x|o| |\n | | |\n | | |\n"
	end                      

	it "Second play is o, play at position 3" do 
		play_on_board("x| | |\n | | |\n | | |\n", 3).should == 
		"x| |o|\n | | |\n | | |\n"
	end

	it "Second play is o, play at position 4" do 
		play_on_board("x| | |\n | | |\n | | |\n", 4).should == 
		"x| | |\no| | |\n | | |\n"
	end 

	it "Second play is o, play at position 5" do 
		play_on_board("x| | |\n | | |\n | | |\n", 5).should == 
		"x| | |\n |o| |\n | | |\n"
	end

	it "Second play is o, play at position 6" do 
		play_on_board("x| | |\n | | |\n | | |\n", 6).should == 
		"x| | |\n | |o|\n | | |\n"
	end

	it "Second play is o, play at position 7" do 
		play_on_board("x| | |\n | | |\n | | |\n", 7).should == 
		"x| | |\n | | |\no| | |\n"
	end           

	it "Second play is o, play at position 8" do 
		play_on_board("x| | |\n | | |\n | | |\n", 8).should == 
		"x| | |\n | | |\n |o| |\n"
	end 

	it "Second play is o, play at position 9" do 
		play_on_board("x| | |\n | | |\n | | |\n", 9).should == 
		"x| | |\n | | |\n | |o|\n"
	end 

	it "Second play is o, play at position 2" do 
		play_on_board(" | | |\n | | |\nx| | |\n", 2).should == 
		" |o| |\n | | |\nx| | |\n"
	end 

	it "Second play is o, play at position 2" do 
		play_on_board(" | |x|\n | | |\n | | |\n", 2).should == 
		" |o|x|\n | | |\n | | |\n"
	end

	it "Second play is o, play at position 2" do 
		play_on_board(" | | |\nx| | |\n | | |\n", 2).should == 
		" |o| |\nx| | |\n | | |\n"
	end 	

	it "Second play is o, play at position 2" do 
		play_on_board(" | | |\n | | |\n |x| |\n", 2).should == 
		" |o| |\n | | |\n |x| |\n"
	end

	it "Second play is o, play at position 2" do 
		play_on_board(" | | |\n |x| |\n | | |\n", 2).should == 
		" |o| |\n |x| |\n | | |\n"
	end 

	it "Second play is o, play at position 2" do 
		play_on_board(" | | |\n | |x|\n | | |\n", 2).should == 
		" |o| |\n | |x|\n | | |\n"
	end 

	it "Second play is o, play at position 2" do 
		play_on_board(" | | |\n | | |\n | |x|\n", 2).should == 
		" |o| |\n | | |\n | |x|\n"
	end

	it "Second play is o, play at position 1" do 
		play_on_board(" |x| |\n | | |\n | | |\n", 1).should == 
		"o|x| |\n | | |\n | | |\n"
	end

	it "Second play is o, play at position 3" do 
		play_on_board(" |x| |\n | | |\n | | |\n", 3).should == 
		" |x|o|\n | | |\n | | |\n"
	end

	it "Second play is o, play at position 4" do 
		play_on_board(" |x| |\n | | |\n | | |\n", 4).should == 
		" |x| |\no| | |\n | | |\n"
	end 

	it "Second play is o, play at position 5" do 
		play_on_board(" |x| |\n | | |\n | | |\n", 5).should == 
		" |x| |\n |o| |\n | | |\n"
	end

	it "Second play is o, play at position 6" do 
		play_on_board(" |x| |\n | | |\n | | |\n", 6).should == 
		" |x| |\n | |o|\n | | |\n"
	end

	it "Second play is o, play at position 7" do 
		play_on_board(" |x| |\n | | |\n | | |\n", 7).should == 
		" |x| |\n | | |\no| | |\n"
	end

	it "Second play is o, play at position 8" do 
		play_on_board(" |x| |\n | | |\n | | |\n", 8).should == 
		" |x| |\n | | |\n |o| |\n"
	end	

	it "Second play is o, play at position 9" do 
		play_on_board(" |x| |\n | | |\n | | |\n", 9).should == 
		" |x| |\n | | |\n | |o|\n"
	end	     	             
end 









