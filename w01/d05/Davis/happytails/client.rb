class Client
	def initialize(name, age, animals = [])
		@name = name
		@age = age
		@animals = animals
	end

	def name 
		@name
	end

	def name=(name)
		@name = name
	end

	def animals
		@animals
	end

	def animals=(animals)
		@animals = animals
	end

	def to_s
		"#{name} is #{@age} years old and has #{@animals.count} pets"
	end
end
