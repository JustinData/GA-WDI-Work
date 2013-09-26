#remember to downcase each renter name before using

class Apartment
	attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters
	# renters should be Array

	def initialize(price = nil, is_occupied = nil, sqft = nil, num_beds = nil, num_baths = nil, renters = nil)
		@price = price
		@is_occupied = is_occupied
		@sqft = sqft
		@num_beds = num_beds
		@num_baths = num_baths
		@renters = renters
	end

	#to_s method
	#end

	def list_renters
		#return list of all renters
		@renters.join(" | ")
	end
end

temporary_renters = ['john', 'bill']

apt_1 = Apartment.new(1000, true, 100, 1, 1, temporary_renters)
puts apt_1.price
puts apt_1.is_occupied
puts apt_1.sqft
puts apt_1.num_beds
puts apt_1.num_baths
puts apt_1.renters

puts apt_1.list_renters