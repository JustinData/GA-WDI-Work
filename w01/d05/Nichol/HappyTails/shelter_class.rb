# Shelter:

# A shelter should have a name
# A shelter can have multiple animals, but it doesn't start with any.
# A shelter can have multiple clients, but it doesn't start with any.
# A shelter should be able to display all of its clients.
# A shelter should be able to display all of its animals.
# A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
# A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)
# When we print an shelter to a string, it should tell us about its name, the number of clients, and the number of animals.


class Shelter

	def initialize(name)
		@name = name
		@animals = Array.new
		@clients = Array.new

	end

	def display_all_animals
		
	end

	def display_all_clients
	
	end

	def facilitate_adoption
	end

	def facilitate_return
	end

	def to_s
		return "#{name}, #{clients.length}, #{animals.length}"
	end



end
