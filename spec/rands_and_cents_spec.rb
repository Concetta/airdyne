require 'rspec'
require './lib/rands_and_cents.rb'

describe "calculate_rands_and_cents" do 

	it "returns 1 and 0" do
		calculate_rands_and_cents(100).should == [1,0]
	end

	it "returns 2 and 32" do
		calculate_rands_and_cents(232).should == [2,32]
	end

end

describe "rands_and_cents" do 

	it "returns 1 Rand if 100" do 
		rands_and_cents(100).should == "1 Rand"
	end

	it "returns 2 Rands if 200" do
		rands_and_cents(200).should == "2 Rands"
	end

	it "returns 1 Rand and 34 cents if 134" do
		rands_and_cents(134).should == "1 Rand and 34 cents"
	end 

	it "returns 2 Rands and 34 cents if 234" do
		rands_and_cents(234).should == "2 Rands and 34 cents"
	end 

	it "returns no Rands or cents if -234" do
		rands_and_cents(-234).should == " No Rands or cents"
	end

	it "returns no Rands or cents if -1" do 
		rands_and_cents(-1).should == " No Rands or cents"
	end 

end 