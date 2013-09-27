#remember to downcase each renter name before using

class Apartment
	attr_accessor :name, :price, :sqft, :num_beds, :num_baths, :renters
	attr_reader :is_occupied
	# renters should be Array

	def initialize(name = nil, price = nil, sqft = nil, num_beds = nil, num_baths = nil, renters = nil)
		@name = name
		@price = price
		@sqft = sqft
		@num_beds = num_beds
		@num_baths = num_baths
		
		#arrays
		@renters = renters
		@is_occupied = @renters.nil? ? false : true
	end

	def to_s
		"#{@name}"
	end

	def list_renters
		#return list of all renters
		result = @renters.map { |person| person.name }.join("\n")
	end
end