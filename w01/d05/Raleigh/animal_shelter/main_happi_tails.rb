### HappiTails MAIN ###

require "./animal"
require "./client"
require "./shelter"

def menu
   puts "*** HappiTails Shelter ***"
   puts "\n(1) Add a client, (2) Add an animal, (3) Display all clients, (4) Display all animals, or (Q) Quit:"
   gets.chomp.downcase
end

happitails = Shelter.new("HappiTails")

response = menu

while response !="q"
   if response == "1"
      puts "Please enter the client's name:"
      client_name = gets.chomp.capitalize
      puts "Please enter the client's age:"
      client_age = gets.chomp

      new_client = Client.new(client_name, client_age)

      puts "\nClient added!"

   elsif response == "2"
      puts "Please enter the animal's name:"
      animal_name = gets.chomp.capitalize
      puts "Please enter the animal's species:"
      animal_species = gets.chomp.capitalize

      new_animal = Animal.new(animal_name, animal_species)

      puts "\nAnimal added!"
   elsif response == "3"
      puts happitails.display_clients
   elsif response == "4"
      puts happitails.display_animals
   else
      puts "\nThat is not an option."
   end
   response = menu
end

