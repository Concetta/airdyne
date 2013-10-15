def change_calculator(value)

	if value >= 500

		more_than_five_rand(value)

	elsif value < 500 && value >= 100

		less_than_five_rand(value)

	elsif value < 90 && value > 1

		less_than_one_rand(value)

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
	result_text = amount_of_coins("R 5", value, 500)
	result_text += 
	if value_left_five_rand == 0 
		""	
	else
		", " + 
		less_than_five_rand(value_left_five_rand) 
	end
end 

def less_than_five_rand(value)
		
	value_left = value
	two_rand =  value_left / 200
	value_left_two_rand = value - (200 * two_rand) 
	one_rand = value_left_two_rand / 100
	value_left_one_rand = value_left_two_rand - (100 * one_rand)
	result_text = amount_of_coins("R 2", value, 200)
	if two_rand == 0
		amount_of_coins("R 1", value_left_two_rand , 100)
	elsif one_rand == 0
		result_text
	else
		result_text + ", " + 
		amount_of_coins("R 1", value_left_two_rand , 100)
	end
end 

def less_than_one_rand(value)

	value_left = value
	fifty_cents =  value_left / 50
	value_left_fifty_cents = value - (50 * fifty_cents) 
	twenty_cents = value_left_fifty_cents / 20
	value_left_twenty_cents = value_left_fifty_cents - (20 * twenty_cents)
	ten_cents = value_left_twenty_cents / 10
	value_left_ten_cents = value_left_twenty_cents - (10 * ten_cents)
	five_cents = value_left_ten_cents / 5
	value_left_five_cents = value_left_ten_cents - (5 * five_cents)
	two_cents = value_left_five_cents / 2
	value_left_two_cents = value_left_five_cents - (2 * two_cents)
	one_cent = value_left_two_cents / 1
	result_text = amount_of_coins("50 c", value, 50)
	if fifty_cents == 0 && twenty_cents == 0 && ten_cents == 0 && 
		five_cents == 0 && two_cents == 0
		amount_of_coins("1 c", value_left_two_cents, 1)
	elsif fifty_cents == 0 && twenty_cents == 0 && ten_cents == 0 && 
		five_cents == 0 
		amount_of_coins("2 c", value_left_five_cents, 2)
	elsif fifty_cents == 0 && twenty_cents == 0 && ten_cents == 0
		amount_of_coins("5 c", value_left_ten_cents, 5)	
	elsif fifty_cents == 0 && twenty_cents == 0 && five_cents == 0
		amount_of_coins("10 c", value_left_twenty_cents, 10)
	elsif fifty_cents == 0 && twenty_cents == 0 && two_cents == 0
		amount_of_coins("10 c", value_left_twenty_cents, 10) + ", " +
		amount_of_coins("5 c", value_left_ten_cents, 5)
	elsif fifty_cents == 0 && twenty_cents == 0 && one_cent == 0
		amount_of_coins("10 c", value_left_twenty_cents, 10) + ", " +
		amount_of_coins("5 c", value_left_ten_cents, 5)	+ ", " +
		amount_of_coins("2 c", value_left_five_cents, 2)	
	elsif fifty_cents == 0 && twenty_cents == 0
		amount_of_coins("10 c", value_left_twenty_cents, 10) + ", " +
		amount_of_coins("5 c", value_left_ten_cents, 5)	+ ", " +
		amount_of_coins("2 c", value_left_five_cents, 2) + ", " +
		amount_of_coins("1 c", value_left_two_cents, 1)
	elsif fifty_cents == 0
		amount_of_coins("20 c", value_left_fifty_cents, 20)
	elsif twenty_cents == 0
		result_text
	elsif ten_cents == 0
		result_text + ", " + 
		amount_of_coins("20 c", value_left_fifty_cents, 20)	
	else
		result_text + ", " + 
		amount_of_coins("20 c", value_left_fifty_cents, 20) +
		", " + amount_of_coins("10 c", value_left_twenty_cents, 10)
	end
end 
