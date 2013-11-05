def get_horizontal_stars(number)
	"*" * number 
end 

def get_vertical_stars_down(number)
	if number == 1 
		get_horizontal_stars(number)
	else 
		stars = number - 1
		stars_result = ""
		(stars.downto(1)).each do |x|
			stars_result += get_horizontal_stars(number - x) + "\n"
		end 
		stars_result += get_horizontal_stars(number)
	end 
end 