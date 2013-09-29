require_relative 'animal'
require_relative 'shelter'
require_relative 'client'
require_relative 'seeds'
#require "pry"

def menu 
  puts "\n\n*** HappiTails ***\n\n"
  puts '1 : Enter a new pet into our system'
  puts '2 : Create your profile' 
  puts '3 : Display all animals'
  puts '4 : Display all clients'
  puts '5 : Adopt a pet'
  puts '6 : Return a pet'
  puts 'q : Quit'
  response = gets.chomp.downcase
end
###NOTE TO SELF: review \n and the difference between double quotes and single quote

shelter = Shelter.new("HappiTails")
shelter.clients["Bob"] = Client.new("Bob", 20)
shelter.clients["Sally"] = Client.new("Sally", 20)
shelter.clients["Sally"].pets_list << Animal.new("Max", "dog", 0)
shelter.animals["Goober"] = Animal.new("Goober", "cat", 0)
shelter.animals["Rocket"] = Animal.new("Rocket", "dog", 0) 
shelter.animals["J"] = Animal.new("J", "dog", 0) 
shelter.adopted_pet << Animal.new("Max", "dog", 0)
name = Client.new("Sally", 20)

response = menu ###NOTE TO SELF: NEED TO REVIEW HOW THIS WORKS

while response != 'q'

  case response
  when '1' 
    print "Pet's name: "
    name = gets.chomp
    print "Species: "
    species = gets.chomp
    print "Has toys? Y or n? "
    toys = gets.chomp.downcase

    while toys == 'y'
      puts "How many? "
      toys = gets.to_i
    end 
      puts "Thank you. Let's find this bundle of joy a home."
      shelter.animals[name] = Animal.new(name, species, toys)

  when '2'
    print "Your name: "
    name = gets.chomp
    print "Age: "
    age = gets.to_i #why do we not need chomp? 
    shelter.clients[name] = Client.new(name, age)
    print "Thank you for creating a profile. Welcome to our commmunity."
 
  when '3'
    puts shelter.adoptables_list
 
  when '4'
    puts shelter.current_clients

  when '5'
    print "Your name: "
    name = gets.chomp
    print "Age: "
    age = gets.to_i #why do we not need chomp? 
    puts "Which animal would you like to adopt? "
    puts shelter.adoptables_list
    pet = gets.chomp  
    name = Client.new(name, age) #add new client
    shelter.clients[name] = name #add new client
    shelter.adopted_pet << shelter.delete_pet(pet) # 
    

    puts name.add_pet(pet) # add to pets_list and print it out. 
    
    # .delete
    # shelter.clients["Sally"].pets_list << Animal.new("Max", "dog", 0)
    
  # when '6'

end #end of while

response = menu
end

# shelter.animals[name] = grover

# name.delete_pet(grover)

# puts adopted_list


