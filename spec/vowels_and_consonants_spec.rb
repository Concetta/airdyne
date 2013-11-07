require 'rspec'
require './lib/vowels_and_consonants.rb'

describe "counting vowels_and_consonants" do 
	context "counting_vowels" do 
		it "returns 1 if input is 'a'" do 
			counting_vowels("a").should == 1
		end 
	end 
end 