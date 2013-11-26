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

	it "age category is Adult when 30 entered" do 
		person1 = Person.new 
		person1.age = "30"
		person1.age_category.should == "Adult"
	end 

	it "age category is Baby when 0 entered" do 
		person1 = Person.new 
		person1.age = "0"
		person1.age_category.should == "Baby"
	end 

	it "age category is Baby when 1 entered" do 
		person1 = Person.new 
		person1.age = "1"
		person1.age_category.should == "Baby"
	end 

	it "age category is Toddler when 2 entered" do 
		person1 = Person.new 
		person1.age = "2"
		person1.age_category.should == "Toddler"
	end 

	it "age category is Child when 6 entered" do 
		person1 = Person.new 
		person1.age = "6"
		person1.age_category.should == "Child"
	end 

	it "age category is Teenager when 16 entered" do 
		person1 = Person.new 
		person1.age = "16"
		person1.age_category.should == "Teenager"
	end 

	it "age category is Teenager when 16 entered" do 
		person1 = Person.new 
		person1.age = "25"
		person1.age_category.should == "Young Adult"
	end 

	it "age category is Pensioner when 67 entered" do 
		person1 = Person.new 
		person1.age = "67"
		person1.age_category.should == "Pensioner"
	end 
end 