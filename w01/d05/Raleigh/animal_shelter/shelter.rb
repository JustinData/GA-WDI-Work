### Shelter Class ###

class Shelter
   def initialize(name)
      @name = name
      @client_with_animal = {}
   end

   def name
      @name
   end

   def client_with_animal
      @client_with_animal
   end

   def display_clients

   end

   def display_animals

   end

end


- Shelter:
  - A shelter should have a name
  - A shelter can have multiple animals, but it doesn't start with any.
  - A shelter can have multiple clients, but it doesn't start with any.
  - A shelter should be able to display all of its clients.
  - A shelter should be able to display all of its animals.
  - A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
  - A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)
  - When we print an shelter to a string, it should tell us about its name, the number of clients, and the number of animals.