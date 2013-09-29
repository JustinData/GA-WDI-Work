#require "pry"

class Client

  def initialize(name, age)
    @name = name
    @age = age
    @pets_list = []
  end

  def name
    @name
  end

  def pets_list
    @pets_list
  end

  def bring_pet_back(x)
    @pets_list.delete(x)
  end

  def age
    @age
  end

  def to_s
    "#{@name} is #{@age} years old. Total pets: #{@pets_list.count}"
  end

  def add_pet(y)
    @pets_list << y
    puts "Congrats, #{@name}. You've just adopted #{y}."

  end

end


bob = Client.new("bob", 10) 


