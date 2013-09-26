class Apartment
	attr_accessor :price, :sqft, :num_beds, :num_baths
	attr_reader :is_occupied?, :renters

	def initialize
		@price = 0
		@is_occupied? = false
		@sqft = 0
		@num_beds = 0
		@num_baths = 0
		@renters = []
	end

	def to_s ( param );	end

	def list_renters; end

end