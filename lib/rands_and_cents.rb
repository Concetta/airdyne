def calculate_rands_and_cents(rands)
	
	[rands / 100, rands % 100]

end

def rands_and_cents(rands)

rand, cents = calculate_rands_and_cents(rands)

	if cents == 0 && rand == 1
		"#{rand} Rand"
	elsif cents == 0
		"#{rand} Rands"
	elsif rand > 1
		"#{rand} Rands and #{cents} cents"
	elsif rand < 0 
		" No Rands or cents"
	else
		"#{rand} Rand and #{cents} cents"
	end
end 
