def calculate_rands_and_cents(cents)

	cents / 100.0
	
end

def string_rands_and_cents(total)

	rand = (total.floor)
	cents = ((total.modulo(1)*100).to_i).to_s + " cents"
	if rand > 1
		rand.to_s + " Rands and " + cents
	else
		rand.to_s + " Rand and " + cents
	end 

end 
