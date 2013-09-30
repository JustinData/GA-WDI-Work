### Person Class ###

class Person 
    attr_accessor :name, :age, :gender, :apartment

   def initialize(name, age, gender, apartment)
      @name = name.capitalize
      @age = age
      @gender = gender
      @apartment = apartment
   end

   def to_s
      "#{@name} is #{@age} years old, a #{@gender}, and lives in apartment #{@apartment}."
   end
end
