class Client
  def initialize(name, age, pets)
    @name = name
    @age = age.to_i
    @pets = pets
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
  #------------non initialized methods
  def to_s
    puts "#{@name} is #{@age} years old and has these pets: #{@pets.join("|")}"
  end
  #accepts input and pushes the pet to the owner
  def add_pet(name, species, toy)
    @pets << [name, species, toy]
  end
  def give_back
    @pets.pop
  end

end 