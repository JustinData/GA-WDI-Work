### Animal Class ###

class Animal
   def initialize(animal, species)
      @animal = animal
      @species = species
      @toys = []
   end

   def animal
      @animal
   end

   def species
      @species
   end

   def add_toys(new_toy)
      @toys.push(new_toy)
   end

   def to_s
      "#{self.animal} is a #{self.species} and has the following toys: #{self.toys.join(", ")}"
   end

end