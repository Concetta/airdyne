require "highline/import"
require './lib/area_of_circle.rb'
require './lib/rands_and_cents.rb'
require './lib/change_calculator.rb'
require './lib/user.rb'

say "Menu"

loop do 
	choose do |menu|
	    menu.prompt = "Please select a menu number"

	    menu.choice "Users" do 
	    say "User Menu"
	    	choose do |submenu|
	    		submenu.prompt = "Please select a user menu number"
	    		submenu.choice "List" do 
	    			user_list 
	    		end 
	    		submenu.choice "Add" do 
	    			name = ask "What is your name? "
					# surname = ask "Enter your surname: "
					# id_number = ask "Enter your id number: "
	    		end 
	    		submenu.choice "Delete" do
	    		end 
	    		submenu.choice "Back" do 
	    		end 
	    	end 
	    end 

	    menu.choice "Area of circle" do 
	    	radius = ask "Enter radius: ", Integer
			say "Area is: #{calculate_area_circle(radius)}"
	    end 

	 	menu.choice "Rands and cents" do 
	 		rands = ask "Enter cents", Integer
			say "You have: #{rands_and_cents(rands)}"
		end 

		menu.choice "Change calculator" do
			change = ask "Enter changed amount in cents", Integer
			say "You have: #{change_calculator(change)} change"
		end 

		menu.choice(:Exit) { exit }
	end
end 
