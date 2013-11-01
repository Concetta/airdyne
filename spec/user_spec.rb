require 'rspec'
require './lib/user.rb'

describe "User" do 

	context "instance" do 
	
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

		it "should show to_s" do 
			expect(@user.to_s).to eq "bug laing 800228"
		end 
	end 

	context "class methods" do

		before :each do 
			User.reset
		end 

		it "must start with no users" do
			User.all.should be_empty
		end

		it "must be able to add users" do
			u1 = User.new(:name => "t1")
			User.add(u1)
			User.all.should include(u1)
		end

		it "must be able to add users" do
			User.add_new_user(:name => 't2', :surname => 't3', :id_number => '3')
			user = User.all.first
			user.name.should == 't2'
			user.surname.should == 't3'
			user.id_number.should == '3'
		end


	end 
end 
