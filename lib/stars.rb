def get_horizontal_stars(number)
	"*" * number 
end 

def get_vertical_stars_down(number)
	stars = number - 1
	stars_result = ""
	stars_result +=
	if number == 1 
		get_horizontal_stars(number)
	else 
		(stars.downto(1)).each do |x|
			stars_result += get_horizontal_stars(number - x) + "\n"
		end 
		stars_result += get_horizontal_stars(number)
	end 
	# if number == 1
	#  get_horizontal_stars(number)
	# elsif number == 2
	# 	(stars.downto(1)).each do |x|
	# 		stars_result += get_horizontal_stars(number - x) + "\n"
	# 	end 
	# 	stars_result += get_horizontal_stars(number)
	# elsif number == 3
	# 	(stars.downto(1)).each do |x|
	# 		stars_result += get_horizontal_stars(number - x) + "\n"
	# 	end 
	# 	stars_result += get_horizontal_stars(number)
	# elsif number == 4
	# 	(stars.downto(1)).each do |x|
	# 		stars_result += get_horizontal_stars(number - x) + "\n"
	# 	end 
	# 	stars_result += get_horizontal_stars(number)
	# elsif number == 5
	# 	(stars.downto(1)).each do |x|
	# 		stars_result += get_horizontal_stars(number - x) + "\n"
	# 	end 
	# 	stars_result += get_horizontal_stars(number)
	# end 
end 