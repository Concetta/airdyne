class User

	def initialize(options = {})
		@name = options[:name]
		@surname = options[:surname] 
		@id_number = options[:id_number]
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

	def to_s 
		"#{name} #{surname} #{id_number}"
	end 

end 

