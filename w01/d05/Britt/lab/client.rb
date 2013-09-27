
class Client
	def initialize(name, age)
		@name = name
		@age = age
		@pets = []
	end

	def name
		@name
	end

	def age
		@age
	end

	def pets
		@pets
	end

	def to_s; end

end
