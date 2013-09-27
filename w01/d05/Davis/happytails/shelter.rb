class Shelter
	def initialize(name, clients = {})
		@name = name
		@clients = clients
	end

	def name
		@name
	end

	def name=(name)
		@name = name
	end

	def clients
		@clients
	end

	def clients=(clients)
		@clients = clients
	end

	def list_clients
		#lists all clients
		#refer to rental for exact process
	end

	def list_animals
		#lists all animals
		#refer to rental for exact process
	end

	def facilitate_adoption
	end

	def facilitate_return
	end

	def animals_count
		#inside @clients hash find values(clients_instaneces)
		#inside client_instances find animal_instances
		result = 0
		@clients.each_value { |client_instance| result += client_instance.animals.count }
		result
	end

	def to_s
		"Shelter #{name} has #{clients.count} clients and #{}"
	end
end


doog = Animal.new("frog", "idiot")
doog.toys.push("iphone", "knife")

john = Client.new("John", 22)
john.animals << doog


shitty_place = Shelter.new("Shitty Place")
shitty_place.clients[:john] = john
shitty_place.clients

# Shelter has:
# clients = {

# 	clients: => client_instances

# }

# Client has:
# animals = [
# 	animal_instances
# ]


# Animal has:
# toys = [
# 	toys_strings
# ]

