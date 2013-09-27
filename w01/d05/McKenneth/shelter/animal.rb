class Animal
  def initialize(name, species, toys)
    @name = name
    @species = species
    @toys = toys
  end
  def name
    @name
  end
  def species
    @species
  end
  def toys
    @toys
  end
  #-------------non initialized methods
  def to_s
    puts "#{@name} is a #{@species} and has #{@toys} toys"
  end
  def add_toy(toy)
    @toys << toy
  end

end
