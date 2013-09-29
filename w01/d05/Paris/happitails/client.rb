#require "pry"

class Client

  def initialize(name, age)
    @name = name
    @age = age
    @pets_list = []
  end

  def pets_list
    @pets_list
  end

  def to_s
    "#{@name} is #{@age} years old. Total pets: #{@pets_list.count}"
  end

  def name
    @name
  end

  def age
    @age
  end

  def add_pet(x)
    @pets_list << x
  end

end


# bob = Client.new("bob", "10")

# puts bob.pets