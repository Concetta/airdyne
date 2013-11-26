class Person 

	attr_accessor :first_name, :last_name, :age

	def full_name
	 @first_name + " " + @last_name
	end 

	def age_category
		category = @age.to_i
		if category >= 0 && category <= 1
			"Baby"
		elsif category >= 2 && category <= 3
			"Toddler"
		elsif category >= 4 && category <= 12
			"Child"
		elsif category >= 13 && category <= 18
			"Teenager"
		elsif category >= 19 && category <= 29
			"Young Adult"
		elsif category >= 30 && category <= 64
			"Adult"
		else 
			"Pensioner"
		end 
	end 

end 