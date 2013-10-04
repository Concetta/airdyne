require 'rspec'
require './lib/rands_and_cents.rb'

describe "calculate_rands_and_cents" do
	
	it "returns 1 rand if 100 " do
		calculate_rands_and_cents(100).should == 1 
	end

	it "returns 1.34 rand if 134" do 
		calculate_rands_and_cents(134).should == 1.34
	end

	it "returns 1 rand if 100" do
		calculate_rands_and_cents(100).should have_content('Rand')
	end

end