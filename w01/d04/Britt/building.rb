class Building
	attr_accessor :address, :style, :num_floors
	attr_reader :has_doorman?, :is_walkup?, :apartments

	def initialize
		@address = nil
		@style = nil
		@has_doorman? = false
		@is_walkup? = false
		@num_floors = 0
		@apartments = {}
	end

	def to_s ( param );	end

	def list_apartments; end

end