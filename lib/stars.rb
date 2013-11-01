def number_of_stars(number)
	@number = number 
	"*" * @number
end 

def stars_left(number)
	@number += -1
	"*" * @number
end 

def stars_forward(number)
	@number += 1
	"*" * @number 
end 