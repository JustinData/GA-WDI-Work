# only create attr_accessor for
# attributes you'd like to be
# able to change/write USING the
# method_name_set=('stuff') syntax

class Apartment
	attr_accessor :name, :monthly_price, :sqft, :num_beds, :num_baths
	attr_reader :is_occupied, :renters

	# Gets user input, and return true if 'y' or 'yes', else returns false
	def get_true_or_false
		print "'y' or 'n': "
		input = gets.chomp.downcase
		if input == 'y' || input == 'yes'
			true
		else
			false
		end
	end

	def is_occupied?
		puts "Is this apartment currently occupied?"
		@is_occupied = get_true_or_false
	end

	def initialize(name, monthly_price, sqft, num_beds, num_baths)
		@name = name
		@monthly_price = monthly_price
		@sqft = sqft
		@num_beds = num_beds
		@num_baths = num_baths
		@renters = []
		is_occupied?
	end

	def add_renter(renter)
		@renters << renter
	end

	def list_renters
		@renters.join(", ")
	end

	def to_s
		"#{@name} is a #{@sqft}ft^2 apartment with #{@num_beds}-bed, #{@num_baths}-bath, running $#{@price} a month."
	end

end