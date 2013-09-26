class Person
	attr_accessor :name, :age, :gender, :apartment

	def initialize(name = nil, age = nil, gender = nil, apartment = nil)
		@name = name
		@age = age
		@gender = gender
		@apartment = apartment
	end

	#def to_s
		
	#end
end

ravis_apartment = "apartment for now"
ravis = Person.new("Ravis", 22, "m", ravis_apartment)
# puts ravis.name
# puts ravis.age
# puts ravis.gender
# puts ravis.apartment

puts ravis.to_s