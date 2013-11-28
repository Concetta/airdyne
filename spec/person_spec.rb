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

	it "Concetta is older than Grant" do 
		person1 = Person.new
		person1.age = 9
		person1.first_name = "Grant"
		person2 = Person.new
		person2.age = 10
		person2.first_name = "Concetta"
		Person.who_is_older(person1, person2).should == "Concetta"
	end

	it "Grant is older than Wilhelm" do 
		person1 = Person.new
		person1.age = 9
		person1.first_name = "Grant"
		person2 = Person.new
		person2.age = 6
		person2.first_name = "Wilhelm"
		Person.who_is_older(person1, person2).should == "Grant"
	end

	it "Grant and Pawel are the same age" do 
		person1 = Person.new
		person1.age = 9
		person1.first_name = "Grant"
		person2 = Person.new
		person2.age = 9
		person2.first_name = "Pawel"
		Person.who_is_older(person1, person2).should == "They are the same age"
	end

	it "Concetta is the oldest of two people" do 
		person1 = Person.new
		person1.age = 9
		person1.first_name = "Grant"
		person2 = Person.new
		person2.age = 10
		person2.first_name = "Concetta"
		Person.who_is_oldest(person1, person2).should == "Concetta"
	end

	it "Grant is the oldest of two people" do 
		person1 = Person.new
		person1.age = 9
		person1.first_name = "Grant"
		person2 = Person.new
		person2.age = 6
		person2.first_name = "Wilhelm"
		Person.who_is_oldest(person1, person2).should == "Grant"
	end

	it "Richard is the oldest of three people" do 
		person1 = Person.new
		person1.age = 9
		person1.first_name = "Grant"
		person2 = Person.new
		person2.age = 6
		person2.first_name = "Wilhelm"
		person3 = Person.new
		person3.age = 11
		person3.first_name = "Richard"
		Person.who_is_oldest(person1, person2, person3).should == "Richard"
	end

	it "Richard is the oldest of four people" do 
		person1 = Person.new
		person1.age = 9
		person1.first_name = "Grant"
		person2 = Person.new
		person2.age = 6
		person2.first_name = "Wilhelm"
		person3 = Person.new
		person3.age = 11
		person3.first_name = "Richard"
		person4 = Person.new
		person4.age = 10
		person4.first_name = "Concetta"
		Person.who_is_oldest(person1, person2, person3, person4).should == "Richard"
	end

	it "Grant is family of Adam" do 
		person1 = Person.new
		person1.first_name = "Grant"
		person1.last_name = "Speelman"
		person2 = Person.new
		person2.first_name = "Adam"
		person2.last_name = "Speelman"
		person1.is_family_of?(person2).should == true 
	end 
end 