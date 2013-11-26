require 'rspec'
require './lib/person.rb'

describe Person do 

	it "can set first_name" do
		person1 = Person.new
		person1.first_name = "Grant"
		person1.first_name.should == "Grant"
	end

	it "can set age" do 
		person1 = Person.new 
		person1.age = "30"
		person1.age.should == "30"
	end 

	it "can set last_name" do 
		person1 = Person.new
		person1.last_name = "Speelman"
		person1.last_name.should == "Speelman"
	end 

	it "gives first name & last name" do 
		person1 = Person.new
		person1.first_name = "Grant"
		person1.last_name = "Speelman"
		person1.full_name.should == "Grant Speelman"	
	end 
end 