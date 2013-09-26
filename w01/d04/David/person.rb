class Person
  attr_accessor :name, :age, :gender, :apartment

  def initialize(name, age, gender, apartment)
    @name = name
    @age = age
    @gender = gender
    @apartment = apartment
  end

  def to_s
    "Hi I'm #{@name}, who is #{@age} years old #{gender} in #{apartment}"
  end
end

david = Person.new("david", "15", "m", "soho")
