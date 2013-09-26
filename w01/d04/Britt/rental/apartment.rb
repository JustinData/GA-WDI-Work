class Apartment
	attr_accessor :price, :is_occupied?, :sqft, :num_beds, :num_baths, :renters

	def initialize; end

	def to_s ( param )
		param = "#{param}"
	end

end