class User

	def initialize(options = {})
		@id = options[:id] 
		@name = options[:name]
		@surname = options[:surname] 
		@id_number = options[:id_number]
	end 

	def id 
		@id 
	end 

	def name
    	@name  
	end 

	def surname 
		@surname
	end  

	def id_number
		@id_number
	end 

	def user_details 
		"#{id}; #{name}; #{surname}; #{id_number}"
	end 

end 

