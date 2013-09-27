### Client Class ###

class Client
   def initialize(name, age)
      @name = name
      @age = age
      @animals = []
   end

   def name
      @name
   end

   def age
      @age
   end

   def animals
      @animals
   end

   def to_s
      "#{name} is #{age} years old and has the following animals: #{animals}"
   end

end