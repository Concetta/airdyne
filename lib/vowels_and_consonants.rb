def counting_vowels(vowels)
	v = vowels 
	v.count "aeiou" 
end 

def counting_consonants(consonants)
	c = consonants
	c.count "bcdfghjklmnpqrstuvwxyz"
end 

def counting_vowels_and_consonants(alphabet)
	counting_vowels(alphabet).to_s + 
	" vowels and " + 
	counting_consonants(alphabet).to_s + 
	" consonants"
end 