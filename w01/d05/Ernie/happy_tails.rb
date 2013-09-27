class Animal
          
          def initialize(name,species,toys)
                @name = name
                @species = species
                @toys = []
          end
         
          def name
               @name
          end

          def species
               @species
          end

          def list_toys
                @toys.join(" , ")
        end

         def to_s
           "Im #{self.name} whose a #{self.species} with #{@toys.count}"
         end
end

# dog = Animal.new("boobie","dog","bone")

class Client
        
        def initialize(name,age,animal)
          @name = name
          @age = age
          @animals = animals
        end
        
        def name
             @name
        end
        
        def age
             @age
        end
        
        def animal
              @animal.join(" , ")
        end

        def to_s
            "Im #{self.name} whose #{self.age} with these many #{self.animal}"
        end

        # ernie = Client.new("ernie",27,["Dog","Cat"])
        # puts ernie
  
end

class Shelter
        def initialize(name,animal,clients)
              @name = name
              @animals = animals
              @clients = {}
              @all_animals =[]
        end

        def name
             @name
        end
        
        def clients
             @clients
        end

        def  animals
              @animals
        end

        def list_animals
            @all_animals.join(" , ")
        end

        def list_clients
            @clients.values.join(" , ")
        end

        def to_s
           "Hello we are #{self.name} who has these many animals #{@list_animals.count} and these many #{self.clients}"
        end
        
  
end



class CatLady
  def initialize(args)
    
  end
  
  
end