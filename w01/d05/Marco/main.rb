#require "pry"

class Animal
  def initialize (name, species)
    @name = name
    @species = species
    @toys = []
  end

  #creates instance variable for animal name
  def name 
    @name
  end

  #creates instance variable for animal species
  def species 
    @species
  end

  #creates instance variable for animal toy(s)
  def toys
    @toys
  end

  def give_toy (x)
    @toys.push (x)
  end

  def to_s
    "#{name} is a #{species}. \n     Toy(s): #{toys.join(", ")}"
  end

end

################ ANIMAL END ##################

class Client

  def initialize (name, age)
      @name = name
      @age = age
      @pets = []
    end

    #creates instance variable for client name
    def name 
      @name
    end

    #creates instance variable for client age
    def age 
      @age
    end

    #creates instance variable for client pet(s)
    def pets
      @pets
    end

    #create instance method for client pet(s)
    def pets_owned (x)
      @pets.push (x)
    end

    def to_s
      "#{name} is #{age} years old. \n     Pet(s) owned: #{pets.join(", ")}"
    end

end

################ CLIENT END ##################

class Shelter

  def initialize (name, animals, clients, adoption, pet_return)
      @name = name
      @animals = animals
      @clients = clients
      @adoption = adoption
      @pet_return = pet_return
    end

    #creates instance variable for shelter
    def name 
      @name
    end

    #creates instance variable for shelter
    def animals 
      @animals
    end

    #creates instance variable for shelter
    def clients
      @clients
    end

    #creates instance variable for shelter
    def adoption
      @adoption
    end

    #creates instance variable for shelter
    def pet_return
      @pet_return
    end

    def to_s
      "copy copy copy #{parameter}"
    end

end

################ SHELTER END ##################
#binding.pry

air_bud = Animal.new( "Air Bud", "dog")
air_bud.give_toy "basketball"

puts air_bud.to_s

gina_fina = Client.new("Gina Fina", "39")
gina_fina.pets_owned "parrot"

puts gina_fina.to_s

new_shelter = Shelter.new()


