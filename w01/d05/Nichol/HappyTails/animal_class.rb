class Animal

	def initialize(name, species)
		@name = name
		@species = species
		@toys = Array.new

	end

	def name
		return name
	end
	

	def to_s
		return "my names is #{name} and i am a #{species} and i have these things for #{toys.join(", ")}"
	end

end

