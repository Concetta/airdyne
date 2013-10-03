require "highline/import"
require './lib/area_of_circle.rb'

say "Menu"

menu = "Area of circle"

choose menu

if 1
	radius = ask "Enter radius: ", Integer
	say "Area is: #{calculate_area_circle(radius)}"

end
