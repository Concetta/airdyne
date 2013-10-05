require 'rspec'
require './lib/rands_and_cents.rb'

describe "calculate_rands_and_cents" do
	
	it "returns 1 rand if 100 " do
		calculate_rands_and_cents(100).should == 1 
	end

	it "returns 1.34 rand if 134" do 
		calculate_rands_and_cents(134).should == 1.34
	end

end

describe "string_rands_and_cents" do 
	
	it "returns 1 rand if 1" do
		string_rands_and_cents(1).should == "1 Rand and 0 cents"
	end

	it "returns 1 rand if 1.34" do
		string_rands_and_cents(1.34).should == "1 Rand and 34 cents"
	end

	it "returns 2 rands if 2" do
		string_rands_and_cents(2).should == "2 Rands and 0 cents"
	end 

end 