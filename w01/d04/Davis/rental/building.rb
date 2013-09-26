class Building
	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments
	# apartments should be Hash[apartment_names]??????
	# rather Array...

	def initialize(address = nil, style = nil, has_doorman = nil, is_walkup = nil, num_floors = nil, apartments = nil)
		@address = address
		@style = style
		@has_doorman = has_doorman
		@is_walkup = is_walkup
		@num_floors = num_floors
		@apartments = apartments
	end

	#to_s method
	#end

	def list_apartments
		#return string w/ all apartments
		@apartments.join(" | ")
	end
end

apt_2 = ['stan', 'tito']
apt_3 = ['weird', 'normal']

temporary_apartments = [apt_2, apt_3]
sample_building = Building.new("2109 Broadway", "Parisian", true, false, 16, temporary_apartments )

puts sample_building.address
puts sample_building.style
puts sample_building.has_doorman
puts sample_building.is_walkup
puts sample_building.num_floors
puts sample_building.apartments

puts sample_building.list_apartments
	03hfehf2h0[32f0h32f0h923fgh9022g3h92g39hj-23g0-j23g]
	#look at output
	#realize, need to use Hash
	