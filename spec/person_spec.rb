require 'rspec'
require './lib/person.rb'

describe Person do 

	it "can set name" do
		person1 = Person.new
		person1.name = "Grant"
		person1.name.should == "Grant"
	end

	it "can set age" do 
		person1 = Person.new 
		person1.age = "30"
		person1.age.should == "30"
	end 

end 