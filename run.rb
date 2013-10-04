require "highline/import"
require './lib/area_of_circle.rb'
require './lib/rands_and_cents.rb'

say "Menu"

choose do |menu|
    menu.prompt = "Please select a menu number" 
    menu.choice "Area of circle" do 
    	radius = ask "Enter radius: ", Integer
		say "Area is: #{calculate_area_circle(radius)}"
    end 

 	menu.choice "Rands and cents" do 
 		cents = ask "Enter cents", Integer
		say "You have: Rand #{calculate_rands_and_cents(cents)}" 	
	end 
end
