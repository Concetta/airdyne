require 'rspec'
require './lib/vowels_and_consonants.rb'

describe "counting vowels_and_consonants" do 
	context "counting_vowels" do 
		it "returns 1 if input is 'a'" do 
			counting_vowels("a").should == 1
		end 
		it "returns 1 if input is 'a'" do 
			counting_vowels("a").should == 1
		end 
		it "returns 2 if input is 'aa'" do 
			counting_vowels("aa").should == 2
		end 
		it "returns 3 if input is 'aaa'" do 
			counting_vowels("aaa").should == 3
		end 
		it "returns 4 if input is 'aaaa'" do 
			counting_vowels("aaaa").should == 4
		end 
		it "returns 5 if input is 'aaaaa'" do 
			counting_vowels("aaaaa").should == 5
		end 

		it "returns 7 if input is 'aaa aaa a'" do
			counting_vowels("aaa aaa a").should == 7
		end 

		it "returns 7 if input is 'aaa aaa a'" do
			counting_vowels("aaa aaa a c").should == 7
		end 

		it "returns 5 if input is 'a bce/iofu/'" do
			counting_vowels("a bce/iofu/").should == 5
		end 
	end 
	
	context "counting_consonants" do
		it "returns 1 if input is 'b'" do 
			counting_consonants("b").should == 1
		end 

		it "returns 1 if input is 'ba'" do 
			counting_consonants("ba").should == 1
		end 

		it "returns 6 if input is 'abcdefgeh'" do 
			counting_consonants("abcdefgeh").should == 6
		end 
	end 

	context "counting_vowels_and_consonants" do 
		it "returns 1 vowels and 1 consonants if input is 'ab'" do 
			counting_vowels_and_consonants("ab").should == "1 vowels and 1 consonants"
		end  
	end 

	context "downcase uppercase letters" do 
		it "returns 1 vowel and 1 consonants if input is 'AB'" do 
			counting_vowels_and_consonants("AB").should == "1 vowels and 1 consonants"
		end 
	end 
end 