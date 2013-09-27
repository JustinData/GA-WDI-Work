### Shelter Class ###

class Shelter
   def initialize(name)
      @name = name
      @client_with_animal = {no_client: []}
   end

   def name
      @name
   end

   def display_clients
      puts "All clients at #{self.name}:"
      @client_with_animal.keys.each do |client|
         if client != :no_client
            puts client.to_s.capitalize
         end
      end
   end

   def display_animals
      puts "All animals at #{self.name}:"
      @client_with_animal.values.each do |animal_arr|
         animal_arr.each {|animal| puts animal}
      end
   end

   def add_client(client_to_add)
      @client_with_animal.keys {client_to_add}
   end

   def add_animal(animal_to_add)
      @client_with_animal.values {animal_to_add}
   end

   def to_s
      "Shelter #{name} has #{client_with_animal.keys.count} clients and #{client_with_animal.values.count} animals."
   end
end


# - Shelter:
#   - A shelter should have a name
#   - A shelter can have multiple animals, but it doesn't start with any.
#   - A shelter can have multiple clients, but it doesn't start with any.
#   - A shelter should be able to display all of its clients.
#   - A shelter should be able to display all of its animals.
#   - A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
#   - A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)
#   - When we print an shelter to a string, it should tell us about its name, the number of clients, and the number of animals.