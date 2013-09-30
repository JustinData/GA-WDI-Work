class Apartment
	attr_accessor :price, :is_occupied, :sqft, :num_baths, :num_beds
	

def initialize(price, is_occupied, sqft, num_baths, num_beds)
	@price = price 
	@is_occupied = is_occupied
	@sqft = sqft
	@num_baths = num_baths
	@num_beds = num_beds
end

def to_s
	return "#{@price} #{@is_occupied} #{@sqft} #{@num_baths} #{@num_beds}"
end

 puts apartment1 = Apartment.new("1200", "yes", "975", "2", "2")
 puts apartment2 = Apartment.new("900", "no", "475", "1", "1")
 puts apartment3 = Apartment.new("2000", "no", "1345", "3", "3")
 puts apartment4 = Apartment.new("1500", "yes", "1240", "3", "2")

end	