class Person
	attr_accessor :age, :apartment
	attr_reader :name, :gender

	def initialize; end

	def to_s ( param )
		param = "#{param}"
	end

end