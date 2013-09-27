
class Shelter
	def initialize(name)
		@name = name
		@animals = []
		@clients = []
	end

	def clients
		@clients
	end

	def animals
		@animals
	end

	def adoption; end

	def to_s
		"#{self.name} is an animal shelter serving #{self.clients.count} clients and #{self.animals.count} animals."
	end

end