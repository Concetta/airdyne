def change_calculator(value)

	if value >= 500

		five_rand_coins(value)

	elsif value < 500 && value >= 200

		two_rand_coins(value)

	elsif value < 200 && value >= 100

		one_rand_coins(value)

	elsif value < 99 && value >= 50

		fifty_cent_coins(value)

	elsif value < 49 && value >= 20 

		twenty_cent_coins(value)

	elsif value < 20 && value >= 10

		ten_cent_coins(value)

	elsif value < 10 && value >= 5

		five_cent_coins(value)

	elsif value < 5 && value >= 2

		two_cent_coins(value)

	else

		one_cent_coins(value)

	end 

end 

def five_rand_coins(value)

	value_left = value
	number_of_five_rand_coins =  value_left / 500
	value_left_five_rand = value - (500 * number_of_five_rand_coins) 
	result_text = amount_of_coins("R 5", value, 500)
	result_text += 
	if value_left_five_rand == 0 
		""	
	else
		", " + 
		two_rand_coins(value_left_five_rand)
	end
end 

def two_rand_coins(value)
		
	value_left = value
	number_of_two_rand_coins =  value_left / 200
	value_left_two_rand = value - (200 * number_of_two_rand_coins) 
	if number_of_two_rand_coins >= 1
		result_text = amount_of_coins("R 2", value, 200)
		result_text +=
		if value_left_two_rand == 0
			""
		else
			", " + 
			one_rand_coins(value_left_two_rand)
		end
	else 
		result_text = ""
		result_text +=
		if value_left_two_rand == 0
			""
		else
			one_rand_coins(value_left_two_rand)
		end
	end 
end 

def one_rand_coins(value)

	value_left = value 
	number_of_one_rand_coins = value_left / 100
	value_left_one_rand = value - (100 * number_of_one_rand_coins)
	if number_of_one_rand_coins >= 1
		result_text = amount_of_coins("R 1", value, 100)
		result_text +=
		if value_left_one_rand == 0
			""
		else 
			", " +
			fifty_cent_coins(value_left_one_rand) 
		end
	else
	 	result_text = ""
		result_text +=
		if value_left_one_rand == 0
			""
		else 
			fifty_cent_coins(value_left_one_rand) 
		end
	end 
end 

def fifty_cent_coins(value)
	value_left = value
	number_of_fifty_cent_coins =  value_left / 50
	value_left_fifty_cents = value - (50 * number_of_fifty_cent_coins)
	if number_of_fifty_cent_coins >= 1
		result_text = amount_of_coins("50 c", value, 50)
		result_text +=
		if value_left_fifty_cents == 0
			""
		else 
			", " +
			twenty_cent_coins(value_left_fifty_cents) 
		end
	else
		result_text = ""
		result_text +=
		if value_left_fifty_cents == 0
			""
		else 
			twenty_cent_coins(value_left_fifty_cents) 
		end
	end 
end 

def twenty_cent_coins(value)
	value_left = value
	number_of_twenty_cents_coins = value_left / 20
	value_left_twenty_cents = value - (20 * number_of_twenty_cents_coins)
	if number_of_twenty_cents_coins >= 1
		result_text = amount_of_coins("20 c", value, 20)
		result_text +=
		if value_left_twenty_cents == 0
			""
		else 
			", " +
			ten_cent_coins(value_left_twenty_cents)
		end 
	else
		result_text = ""
		result_text +=
		if value_left_twenty_cents == 0
			""
		else 
			ten_cent_coins(value_left_twenty_cents)
		end
	end 
end 

def ten_cent_coins(value)
	value_left = value
	number_of_ten_cents_coins = value_left / 10
	value_left_ten_cents = value - (10 * number_of_ten_cents_coins)
	if number_of_ten_cents_coins >= 1
		result_text = amount_of_coins("10 c", value, 10)
		result_text +=
		if value_left_ten_cents == 0
			""
		else 
			", " +
			five_cent_coins(value_left_ten_cents)
		end
	else 
		result_text = ""
		result_text +=
		if value_left_ten_cents == 0
			""
		else 
			five_cent_coins(value_left_ten_cents)
		end
	end 
end 

def five_cent_coins(value)
	value_left = value
	number_of_five_cents_coins = value_left / 5
	value_left_five_cents = value - (5 * number_of_five_cents_coins)
	if number_of_five_cents_coins >= 1
		result_text = amount_of_coins("5 c", value, 5)
		result_text +=
		if value_left_five_cents == 0
			""
		else 
			", " +
			two_cent_coins(value_left_five_cents)
		end
	else
		result_text = ""
		result_text +=
		if value_left_five_cents == 0
			""
		else 
			two_cent_coins(value_left_five_cents)
		end
	end 
end 

def two_cent_coins(value)
	value_left = value
	number_of_two_cents_coins = value_left / 2
	value_left_two_cents = value - (2 * number_of_two_cents_coins)
	if number_of_two_cents_coins >= 1
		result_text = amount_of_coins("2 c", value, 2)
		result_text +=
		if value_left_two_cents == 0
			""
		else 
			", " +
			one_cent_coins(value_left_two_cents)
		end
	else 
		result_text = ""
		result_text +=
		if value_left_two_cents == 0
			""
		else 
			one_cent_coins(value_left_two_cents)
		end
	end 
end 

def one_cent_coins(value)
	value_left = value
	one_cent = value_left / 1
	result_text = amount_of_coins("1 c", value, 1)
	result_text

end 

def amount_of_coins(coin_text, value, coin_value)

	result = coin_text
	amount = value / coin_value
	"#{amount} x #{result}"
end
