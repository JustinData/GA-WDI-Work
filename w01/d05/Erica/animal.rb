class Animal 
  def initialize(name, species)
    @name = name
    @species = species
    @toys = [] 
  end

  #this method adds to the list toys
  def add_toy(toy)
    @toys.push(toy)
  end

  #this method creates a string with all the incident variables
  def to_s
    puts "#{@name.capitalize} is a #{@species} and plays with #{@toys.join(" ")}:  "
  end
end

dulce = Animal.new("Dulce", "Dog")
dulce.to_s

