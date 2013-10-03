require 'rspec'
require './lib/area_of_circle.rb'

describe "calculate_area_circle" do 

	it "returns 3.14 if radius is 1" do
		calculate_area_circle(1).should be_within(0.01).of(3.14)
	end

	it "returns 12.57 if radius is 2" do 
		calculate_area_circle(2).should be_within(0.01).of(12.57)
	end

end

