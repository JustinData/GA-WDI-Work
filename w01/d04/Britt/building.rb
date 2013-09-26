class Building
	attr_accessor :num_floors, :address, :style, :apartments
	attr_reader :has_doorman?, :is_walkup?

	def initialize; end

	def to_s ( param );	end

	def list_apartments; end

end