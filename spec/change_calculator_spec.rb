require 'rspec'
require './lib/change_calculator.rb'

describe "change_calculator" do 

	it "I have 5 rand and want R5 change" do
		change_calculator(500).should == "1 x R 5"
	end 

	it "I have 2 rand and want R2 change" do
		change_calculator(200).should == "1 x R 2"
	end

	it "I have 1 rand and want R1 change" do
		change_calculator(100).should == "1 x R 1"
	end

	it "I have 50 cents and want 50c change" do 
		change_calculator(50).should == "1 x 50 c"
	end 

	it "I have 20 cents and want 20c change" do 
		change_calculator(20).should == "1 x 20 c"
	end 

	it "I have 10 cents and want 10c change" do 
		change_calculator(10).should == "1 x 10 c"
	end 

	it "I have 5 cents and want 5c change" do 
		change_calculator(5).should == "1 x 5 c"
	end 

	it "I have 2 cents and want 2c change" do
		change_calculator(2).should == "1 x 2 c"
	end 

	it "I have 1 cents and want 1c change" do 
		change_calculator(1).should == "1 x 1 c"
	end 

	it "I have R10 and want 2 x R5 change" do
		change_calculator(1000).should == "2 x R 5"
	end 

	it "I have R15 and want 3 x R5 change" do
		change_calculator(1500).should == "3 x R 5"
	end 

	it "I have R20 and want 4 x R5 change" do
		change_calculator(2000).should == "4 x R 5"
	end 

	it "I have R25 and want 5 x R5 change" do
		change_calculator(2500).should == "5 x R 5"
	end 

	it "I have R4 and want 2 x R2 change" do
		change_calculator(400).should == "2 x R 2"
	end 

	it "I have 40 cents and want 2 x 20 c change" do
		change_calculator(40).should == "2 x 20 c"
	end 

	it "I have 4 cents and want 2 x 2 c change" do
		change_calculator(4).should == "2 x 2 c"
	end 

	it "I have 700 cents and want 1 x R 5, 1 x R 2 change" do
		change_calculator(700).should == "1 x R 5, 1 x R 2"
	end 

	it "I have 1400 cents and want 2 x R 5, 2 x R 2 change" do
		change_calculator(1400).should == "2 x R 5, 2 x R 2"
	end 

	it "I have 1600 cents and want 3 x R 5, 1 x R 1 change" do
		change_calculator(1600).should == "3 x R 5, 1 x R 1"
	end 

	it "I have 1800 cents and want 3 x R 5, 1 x R 2, 1 x R 1 change" do
		change_calculator(1800).should == "3 x R 5, 1 x R 2, 1 x R 1"
	end 

	it "I have 300 cents and want 1 x R 2, 1 x R 1" do
		change_calculator(300).should == "1 x R 2, 1 x R 1"
	end

	it "I have 70 cents and want 1 x 50 c, 1 x 20 c" do
		change_calculator(70).should == "1 x 50 c, 1 x 20 c"
	end

	it "I have 80 cents and want 1 x 50 c, 1 x 20 c, 1 x 10 c" do
		change_calculator(80).should == "1 x 50 c, 1 x 20 c, 1 x 10 c"
	end

	it "I have 15 cents and want 1 x 10 c, 1 x 5 c" do
		change_calculator(15).should == "1 x 10 c, 1 x 5 c"
	end

	it "I have 17 cents and want 1 x 10 c, 1 x 5 c, 1 x 2 c" do
		change_calculator(17).should == "1 x 10 c, 1 x 5 c, 1 x 2 c"
	end

	it "I have 18 cents and want 1 x 10 c, 1 x 5 c, 1 x 2 c, 1 x 1 c" do
		change_calculator(18).should == "1 x 10 c, 1 x 5 c, 1 x 2 c, 1 x 1 c"
	end

	it "I have 550 cents and want 1 x R 5, 1 x 50 c" do
		change_calculator(550).should == "1 x R 5, 1 x 50 c"
	end

	it "I have 665 cents and want 1 x R 5, 1 x R 1, 1 x 50 c, 1 x 10 c" do
		change_calculator(660).should == "1 x R 5, 1 x R 1, 1 x 50 c, 1 x 10 c"
	end

	it "I have 6 cents and want 1 x 5 c, 1 x 1 c" do
		change_calculator(6).should == "1 x 5 c, 1 x 1 c"
	end

	it " I have 0 and want no rands or cents" do
		change_calculator(0).should == "No Rands or cents"
	end

	it " I have -1 and want no rands or cents" do
		change_calculator(-1).should == "No Rands or cents"
	end

end