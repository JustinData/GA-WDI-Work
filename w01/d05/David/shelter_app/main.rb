
require 'pry'
require_relative 'animal'
require_relative 'client'
require_relative 'shelter'
require_relative 'seed'

def menu
  puts "\n\n******* Animal Shelter App *******\n\n"
  puts "1: Enter Animal Details"
  puts "2: Enter Client Details"
  puts "3: Display all Animals"
  puts "4: Display all Clients"
  puts "5: Adopt"
  puts "6: Return"
  puts "Q: Quit"
  gets.chomp.downcase
end

response = menu

while response != 'q'
  case response
  when '1'
    puts "Enter Animal Details"
    print "Name: "
    name = gets.chomp.capitalize
    print "Species: "
    species = gets.chomp.capitalize
    print "Add a Toy: "
    toy  = gets.chomp.capitalize
    print "Would you like to add another toy (Y/N)?"
      response = gets.chomp.downcase
      while response == 'y'
        print "Enter another Toy: "
        toy = toy + "," + gets.chomp.capitalize
        print "Would you like to add another toy (Y/N)?"
        response = gets.chomp.downcase
      end
      toys = toy.split(",")
      $shelter.animals[name.downcase] = Animal.new(name, species, toys)
      puts $shelter.animals[name.downcase]
      
  when '2'
    puts "Enter Client Details"
    print "Name: "
    name = gets.chomp.capitalize
    print "Age: "
    age = gets.chomp
    ### pet is some instance of the $shelter
    $shelter.clients[name.downcase] = Client.new(name, age)
    puts $shelter.clients[name.downcase]
  when '3'
    puts $shelter.list_animals
  when '4'
    puts $shelter.list_clients
  when '5'
    print "Please enter your name: "
    name_client = gets.chomp.downcase
    if $shelter.clients[name_client].pets.count >= 2
      puts "\n\nYou live in a tiny apartment Asshole...you can't adopt more than 2 pets"
    else
      puts "Which animal would you like to adopt"
      puts $shelter.list_animals
      print "Please choose by the animals's name: "
      name_animal = gets.chomp.downcase
      $shelter.clients[name_client].pets[name_animal] = $shelter.animals[name_animal]
      $shelter.animals.delete(name_animal)
      puts "\n\n #{name_client.capitalize} you have successfully adopted #{name_animal.capitalize} and your account has been updated below\n\n" 
      puts $shelter.clients[name_client]
    end
  when '6'
    print "Please enter your name: "
    name_client = gets.chomp.downcase
    puts"Which animal would you like return: "
    puts $shelter.clients[name_client].list_pets
    print "Please choose by the animals's name: "
    name_animal = gets.chomp.downcase
    $shelter.animals[name_animal] = $shelter.clients[name_client].pets[name_animal]
    $shelter.clients[name_client].pets.delete(name_animal)
    puts "\n\n #{name_client.capitalize} you have successfully returned #{name_animal.capitalize} and your account has been updated below\n\n" 
    puts $shelter.clients[name_client]
  end
  response = menu
end