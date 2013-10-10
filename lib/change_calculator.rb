def change_calculator(value)

	if value == 500 or 
		value == 1000 or 
		value == 1500 or 
		value == 2000
		
		result = "R 5"
		amount = value / 500
		
		if value == 500
			result = "1 x " + result 
		elsif value == 1000
			result = "2 x " + result  
		elsif value == 1500
			result = "3 x " + result 
		elsif value == 2000
			result = "4 x " + result 
		end  
		result 
	elsif value == 200
		"1 x R 2"
	elsif value == 100
		"1 x R 1"
	elsif value == 50
		"1 x 50 c"
	elsif value == 20
		"1 x 20 c"
	elsif value == 10
		"1 x 10 c"
	elsif value == 5
		"1 x 5 c"
	elsif value == 2
		"1 x 2 c"
	else
		"1 x 1 c"
	end 

end 