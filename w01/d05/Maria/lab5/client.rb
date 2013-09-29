class Client

  def initialize(name, age)
    @name = name
    @age = age
    @pets = {}
  end

  def name 
    @name 
  end

  def age
    @age 
  end

  def pets
    @pets
  end

  def show_pets
    @pets.value.join(", ")
  end
  def to_s
    "#{@name}, whose age is #{@age} has #{@pets.values.join", "} number of pets."
  end
end