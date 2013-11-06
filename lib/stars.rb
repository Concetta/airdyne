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

def get_vertical_stars_up(number)
	if number == 1
		get_horizontal_stars(number)
	else 
		stars_result = ""
		(number.downto(2)).each do |x|
			stars_result += get_horizontal_stars(x) + "\n"
		end 
		stars_result += get_horizontal_stars(1)
	end 
end 

def spaces(lines)
	" " * lines 
end 

def star_pyramid(lines)
	if lines == 1
		get_horizontal_stars(lines)
	else 
		stars_result = ""
		(1.upto(lines - 1)).each do |x|
			stars_result += spaces(lines - x) + get_horizontal_stars(x + (x - 1)) + "\n"
		end
		stars_result += get_horizontal_stars(lines + lines - 1)
	end 
end 



