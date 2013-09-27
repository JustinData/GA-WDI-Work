class Animal
	def initialize(name, client, species, toys = [])
		@name = name
		@client = client
		@species = species
		@toys = toys
	end

	def name
		@name
	end

	def name=(name)
		@name = name
	end

	def toys
		@toys
	end

	def toys=(toys)
		@toys = toys
	end

	def to_s
		"#{name} is a #{@species} breed and has the following toys: #{@toys.join(", ")}"
	end
end
