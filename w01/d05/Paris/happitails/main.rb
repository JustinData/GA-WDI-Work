require_relative 'animal'
require_relative 'shelter'
require_relative 'client'
# require_relative 'seeds'
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
name = Client.new("Sally", 20)
shelter = Shelter.new("HappiTails")
shelter.clients["Bob"] = Client.new("Bob", 20)
shelter.clients["Sally"] = Client.new("Sally", 20)
#shelter.clients["Sally"].pets_list << Animal.new("Max", "dog", "ball")
shelter.animals["Goober"] = Animal.new("Goober", "cat", "ball of yarn")
shelter.animals["Rocket"] = Animal.new("Rocket", "dog", "rope") 
shelter.animals["J"] = Animal.new("J", "dog", "frisbee") 
shelter.animals["Max"] = Animal.new("Max", "dog", "ball")
petname = Animal.new("Max", "dog", "ball")
petname = Animal.new("Max", "dog", "ball")
#shelter.adopted_pet << Animal.new("Max", "dog", 0)
name = Client.new("Sally", 20)
response = menu ###NOTE TO SELF: NEED TO REVIEW HOW THIS WORKS

while response != 'q'

  case response
  when '1'
    print "Animal's name: "
    petname = gets.chomp
    print "Species: "
    species = gets.chomp
    print "Has toys? Y or n? "
    toys = gets.chomp.downcase

    while toys == 'y'
      puts "List the toys here (i.e. ball, frisbee): "
      toys = gets.chomp
    end 
      puts "Thank you. Let's find this bundle of joy a home."
      shelter.animals[petname] = Animal.new(petname, species, toys)

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
    petname = gets.chomp  
    shelter.clients[name] = name #add new client
    shelter.animals.delete(petname)
    #shelter.adopted_pet << shelter.remove_pet_from_shelter(petname) # 
    shelter.clients[name] = Client.new(name, age) #add new client
    puts shelter.clients[name].add_pet(petname) # add to pets_list and print it out. 
    
  when '6'
    print "Animal's name: "
    petname = gets.chomp
    print "Species: "
    species = gets.chomp
    print "Has toys? Y or n? "
    toys = gets.chomp.downcase

      while toys == 'y'
        puts "List the toys here (i.e. ball, frisbee): "
        toys = gets.chomp
      end 

    shelter.animals[petname] = Animal.new(petname, species, toys)
    shelter.return_pet_to_shelter(petname)
    name.bring_pet_back[petname]
end #end of while

response = menu
end



