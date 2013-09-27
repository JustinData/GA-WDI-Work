
class Shelter
	def initialize(name)
		@name = name
		@animals = []
		@clients = {}
	end

	def name
		@name
	end

	def clients
		@clients
	end

	def animals
		@animals
	end

	def list_clients
		@clients.keys.join(", ")
	end

	def list_animals
		@animals.join(", ")
	end

	def adoption(animal)#, need something from client but not sure how to implement)
		# returns animal, which must be
		# added to client's pets array 
		@animals.delete(animal)
	end

	def to_s
		"#{self.name} is an animal shelter serving #{self.clients.keys.count} clients and #{self.animals.count} animals."
	end

end