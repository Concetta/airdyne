require "highline/import"
require './lib/area_of_circle.rb'
require './lib/rands_and_cents.rb'
require './lib/change_calculator.rb'
require './lib/user.rb'
require './lib/stars.rb'
require './lib/vowels_and_consonants.rb'
require './lib/person.rb'

users = []

say "Menu"

loop do 
	choose do |menu|
	    menu.prompt = "Please select a menu number"
	    menu.choice "Users" do 
		    loop do 
		    	say "User Menu"
		    	choose do |submenu|
		    		submenu.prompt = "Please select a user menu number"
		    		submenu.choice "List" do 
		    			users.each do |user|
		    				say user.to_s + "\n"
		    			end
		    		end 
		    		submenu.choice "Add" do 
		    			name = ask "What is your name? "
		    			surname = ask "What is your surname? "
		    			id_number = ask "What is your id number? "
		    			user = User.new ({
		    				:name => name,
		    				:surname => surname,
		    				:id_number => id_number
		    				})
		    			users << user
		    		end 
		    		submenu.choice "Delete" do
		    			delete_user = ask "Which user id_number do you want to delete? "
		    			user_to_delete = users.find { |user| user.id_number == delete_user }
		    			users.delete(user_to_delete)
		    		end 
		    		submenu.choice(:Back) { exit }
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

		menu.choice "Stars" do 
			loop do 
			number = ask "Enter a star number", Integer
				while number <= 0
					number = ask "Please enter a positve number", Integer
				end 
				say "Star Menu"
				choose do |submenu|
		    	submenu.prompt = "How would you like the stars displayed?"
		    	submenu.choice "Vertical Stars Up" do 
		    		say get_vertical_stars_up(number)
		    	end 
		    	submenu.choice "Vertical Stars Down" do
		    		say get_vertical_stars_down(number)
		    	end 
		    	submenu.choice "Star Pyramid" do 
		    		say star_pyramid(number)
		    	end
		    	submenu.choice "Empty Star Pyramid" do 
		    		say empty_star_pyramid(number)
		    	end 
		    	submenu.choice "Horizontal Stars" do 
		    		say get_horizontal_stars(number)
		    	end 
		    	submenu.choice(:Back) { exit }
				end
			end 
		end 

		menu.choice "Vowels and Consonants" do 
			string = ask "Enter a sentence"
			say "There are:  #{counting_vowels_and_consonants(string)} in your sentence"
		end 

		menu.choice "Person" do 
		end 
		menu.choice(:Exit) { exit }
	end
end 
