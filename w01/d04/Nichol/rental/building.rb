class Building
	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

	def initialize(address, style, doorman, walkup, numfloors, apartments)
	
		@address = address
		@style = style
		@has_doorman = doorman
		@is_walkup	= walkup
		@num_floors = numfloors
		@apartments = apartments

	end

	
	def to_s
		#need to iterate through the keys of hash of apartments
		"#{@address} #{@style} #{@has_doorman} #{@is_walkup} #{@num_floors} #{@apartments.each}"
	end


end
