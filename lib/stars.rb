def get_horizontal_stars(number)
	"*" * number 
end 

def get_vertical_stars_down(number)
	if number == 1
		get_horizontal_stars(number)
	elsif number == 2 
		get_horizontal_stars(number - 1)+ "\n" +
		get_horizontal_stars(number)
	elsif number == 3
		get_horizontal_stars(number - 2) + "\n" +
		get_horizontal_stars(number - 1) + "\n" +
		get_horizontal_stars(number)
	elsif number == 4
		stars_result = ""
		(3.downto(1)).each do |x|
			stars_result += get_horizontal_stars(number - x) + "\n"
		end 
		stars_result += get_horizontal_stars(number)
	elsif number == 5
		stars_result = ""
		(4.downto(1)).each do |x|
			stars_result += get_horizontal_stars(number - x) + "\n"
		end 
		stars_result += get_horizontal_stars(number)
	end 
end 