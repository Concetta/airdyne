def change_calculator(value)

	if value % 500 == 0

		amount_of_coins("R 5", value , 500)

	elsif value > 500

		more_than_five_rand(value)

	elsif value % 200 == 0 
			
		amount_of_coins("R 2", value , 200)

	elsif value == 100
		"1 x R 1"

	elsif value == 50
		"1 x 50 c"

	elsif value % 20 == 0

		amount_of_coins("20 c", value , 20)

	elsif value == 10
		"1 x 10 c"

	elsif value == 5
		"1 x 5 c"

	elsif value % 2 == 0

		amount_of_coins("2 c", value , 2)

	else
		"1 x 1 c"
	end 

end 

def amount_of_coins(coin_text, value, coin_value)

		result = coin_text
		amount = value / coin_value
		"#{amount} x #{result}"
end

def more_than_five_rand(value)

		value_left = value
		five_rand =  value_left / 500
		value_left_five_rand = value - (500 * five_rand) 
		two_rand = value_left_five_rand / 200
		value_left_two_rand = value_left_five_rand - (200 * two_rand)
		one_rand = value_left_two_rand / 100
		result_text = amount_of_coins("R 5", value, 500)
		if two_rand == 0 && one_rand == 0
			result_text
		elsif two_rand == 0
			result_text + ", " + 
			amount_of_coins("R 1", value_left_two_rand , 100)
		elsif one_rand == 0
			result_text + ", " + 
			amount_of_coins("R 2", value_left_five_rand, 200)
		else
			result_text + ", " + 
			amount_of_coins("R 2", value_left_five_rand, 200) + 

			", " + amount_of_coins("R 1", value_left_two_rand , 100)
		end
end 