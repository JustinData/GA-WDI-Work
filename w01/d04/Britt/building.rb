class Building
	attr_accessor :address, :style, :has_doorman?, :is_walkup?, :num_floors, :apartments

	def initialize; end

	def to_s ( param )
		param = "#{param}"
	end

end