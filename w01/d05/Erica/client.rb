 # Client:
 #  - A client should have a name.
 #  - A client should have an age.
 #  - A client can have multiple pets (animals), but it doesn't start with any.
 #  - When we print an client to a string, it should tell us about its name, age and the number of pets.

class Client
  def initialize(name, age)
    @name = name
    @age = age
    @animal = []
  end

  def animal(pets)
    @animal.push(pets)
  end

  def to_s
  puts "The client #{@name} is #{@age} years old and has #{@animal.size} pet(s): #{@animal.join}"
  end
end






