class Person 

	attr_accessor :first_name, :last_name, :age

	def is_family_of?(person2)
		@last_name == @last_name
	end 

	def Person.who_is_oldest(*people)
		people = people.sort_by {|x| x.age}
		people.last.first_name
	end 

	def Person.who_is_older(person1, person2)
		if person1.age < person2.age
			person2.first_name
		elsif person1.age > person2.age
			person1.first_name
		else 
			"They are the same age"
		end 
	end 

	def full_name
	 @first_name + " " + @last_name
	end 

	def age_category
		category = @age.to_i
		if category == 0 or category == 1
			"Baby"
		elsif category == 2 or category == 3
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