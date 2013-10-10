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
end