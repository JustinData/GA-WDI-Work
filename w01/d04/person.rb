class Person
	attr_accessor :name, :age, :gender, :apartment

def initialize(name, age, gender, apartment)
	@name = name
	@age = age
	@gender = gender
	@apartment = apartment
end

def to_s 
	return "#{@name} #{@age} #{@gender} #{@apartment}"
end


 puts bob = Person.new("Bob", "23", "M", "2F")
 puts sally = Person.new("Sally", "45", "F", "5B")
 puts alice = Person.new("Alice", "33", "F", "3G")
 puts jack = Person.new("Jack", "54", "M", "6E")


end