
class MyClass

	# automatically is called when an instance of the class is created
	def initialize
		@tables = "none"
		@chairs = none
	end

	def add_tables( param1 )
		@tables = param1.upcase
	end

	# def add_chairs ( param1 )
	# 	@chairs = param1.upcase
	# end

	def whadda_we_got
		puts "OK WE GOT SOME #{@tables} TABLES HERE!"
		puts "AND SOME #{@chairs} CHAIRS, TOO!"
	end

end

# automatically calls and runs initialize
my_class = MyClass.new

puts my_class.class
# my_class.add_tables( "white" )
# my_class.add_chairs( "black" )
my_class.whadda_we_got