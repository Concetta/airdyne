def calculate_rands_and_cents(rands)
	
	[rands / 100, rands % 100]

end

def rands_and_cents(rands)

rand, cents = calculate_rands_and_cents(rands)

	if cents == 0 && rand == 1
		rand.to_s + " Rand"
	elsif cents == 0
		rand.to_s + " Rands"
	elsif rand > 1
		rand.to_s + " Rands and " + cents.to_s + " cents"
	elsif rand < 0 
		" No Rands or cents"
	else
		rand.to_s + " Rand and " + cents.to_s + " cents"
	end
end 