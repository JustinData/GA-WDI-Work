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

   def toys
      @toys
   end

   def to_s
      "#{self.animal} is a #{self.species} and has the following toys: #{self.toys}"
   end

end