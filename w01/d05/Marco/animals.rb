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