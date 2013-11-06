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
	elsif lines == 2
		spaces(lines - 1) + get_horizontal_stars(lines - 1) + "\n" + 
		get_horizontal_stars(lines + lines - 1)
	elsif lines == 3
		spaces(lines - 1) + get_horizontal_stars(lines - 2) + "\n" + 
		spaces(lines - 2) + get_horizontal_stars(lines) + "\n" +
		get_horizontal_stars(lines + lines - 1)
	elsif lines == 4
		spaces(lines - 1) + get_horizontal_stars(lines - 3) + "\n" + 
		spaces(lines - 2) + get_horizontal_stars(lines - 1) + "\n" +
		spaces(lines - 3) + get_horizontal_stars(lines + 1) + "\n" +
		get_horizontal_stars(lines + lines - 1)
	elsif lines == 5
		spaces(lines - 1) + get_horizontal_stars(lines - 4) + "\n" + 
		spaces(lines - 2) + get_horizontal_stars(lines - 2) + "\n" +
		spaces(lines - 3) + get_horizontal_stars(lines) + "\n" +
		spaces(lines - 4) + get_horizontal_stars(lines + 2) + "\n" +
		get_horizontal_stars(lines + lines - 1)
	elsif lines == 6
		spaces(lines - 1) + get_horizontal_stars(lines - 5) + "\n" + 
		spaces(lines - 2) + get_horizontal_stars(lines - 3) + "\n" +
		spaces(lines - 3) + get_horizontal_stars(lines - 1) + "\n" +
		spaces(lines - 4) + get_horizontal_stars(lines + 1) + "\n" +
		spaces(lines - 5) + get_horizontal_stars(lines + 3) + "\n" +
		get_horizontal_stars(lines + lines - 1)
	end 
end 









