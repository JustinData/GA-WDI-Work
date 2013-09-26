class Person
	attr_accessor :name, :age, :gender, :apartment

	def initialize
		@name = nil
		@age = 0
		@gender = nil
		@apartment = nil
	end

	def to_s ( param );	end

end




# only create attr_accessor for
# attributes you'd like to be
# able to change/write USING the
# method_name_set=('stuff') syntax