def calculate_rands_and_cents(cents)

	cents / 100.0
	
end

def string_rands_and_cents(total)

	rand = (total.floor)
	cents = ((total - rand) * 100).round
	if rand > 1
		rand.to_s + " Rands and " + cents.to_s + " cents"
	else
		rand.to_s + " Rand and " + cents.to_s + " cents"
	end 

end 