class Building 
	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors

def initialize(address, style, has_doorman, is_walkup, num_floors)
	@address = address
	@style = style
	@has_doorman = has_doorman
	@is_walkup = is_walkup
	@num_floors = num_floors
end


 def to_s
	return "#{@address} #{@style} #{@has_doorman} #{is_walkup} #{@num_floors}"
end

 puts building1 = Building.new("123 Park Ave", "duplex", "yes", "no", "2")
 puts building2 = Building.new("456 Astor Place", "townhouse", "no", "no", "3")
 puts building3 = Building.new("333 86th St", "loft", "yes", "yes", "1")
 puts building4 = Building.new("999 45th St", "studio", "no", "yes", "2")

end	