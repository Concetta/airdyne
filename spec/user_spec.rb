require 'rspec'
require './lib/user.rb'

describe "User" do 

	before :each do 
		@user = User.new({
			:name => "bug",
			:surname => "laing",
			:id_number => "800228"})
	end 

	it "should have a user name" do 
		expect(@user.name).to eq "bug"
	end 

	it "should have a user surname" do 
		expect(@user.surname).to eq "laing"
	end 

	it "should have a user id number" do
		expect(@user.id_number).to eq "800228"
	end 

	it "should show user_details" do 
		expect(@user.user_details).to eq "bug laing 800228"
	end 

end 
