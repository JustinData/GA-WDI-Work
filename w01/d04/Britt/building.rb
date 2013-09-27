# only create attr_accessor for
# attributes you'd like to be
# able to change/write USING the
# method_name_set=('stuff') syntax

class Building
	attr_accessor :name, :address, :style, :num_floors
	attr_reader :has_doorman, :is_walkup, :apartments

	def initialize (name, address, style, has_doorman, is_walkup, num_floors)
		@name = name
		@address = address
		@style = style
		@has_doorman = has_doorman
		@is_walkup = is_walkup
		@num_floors = num_floors
		@apartments = {}
	end

	def list_apartments
		apartments.keys.join(", ")
	end

	# Prompts user input; returns true if 'y' or 'yes', else returns false
	def get_true_or_false
		print "'y' or 'n': "
		input = gets.chomp.downcase
		if input == 'y' || input == 'yes'
			true
		else
			false
		end
	end

	def has_doorman?
		puts "Does this building have a doorman?"
		get_true_or_false
	end

	def is_walkup?
		puts "Is this building a walkup?"
		get_true_or_false
	end

	def add_apartment(key, value)
		@apartments[key] = value
	end

	def to_s
		"#{name} at #{address} is a #{style}, #{@num_floors}-story building."
	end

end