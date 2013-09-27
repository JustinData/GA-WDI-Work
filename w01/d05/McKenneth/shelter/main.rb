require_relative 'shelter'
require_relative 'animal'
require_relative 'client'

happy_petz = Shelter.new("Happy Petz")
puts "Welcome to the Shelter!"
happy_petz.to_s

  def prompt
    print ">"
  end   
  puts "What can we help you with today?"
  def menu
  puts "Make an (A)nimal, Make a (C)lient, (Q)uit"
  puts "Choose A | C | Q"
  gets.chomp.downcase
  end
      choice = menu
      while choice != "q"
       case choice
        when "a"
          puts "Give your pet a name!"
          name = gets.chomp
          puts "What kind of animal is it?"
          species = gets.chomp
          puts "What kind of toy does it have?"
          toys = []
          toys << gets.chomp
          new_pet = Animal.new(name, species, toys)
          happy_petz.add_pet(new_pet)
        when "c"
          puts "What is your client's name?"
          name = gets.chomp
          puts "How old are they?"
          age = gets.chomp
          puts "What pet do they have?"
          pets = []
          pets << gets.chomp
          client = Client.new(name, age, pets)
          happy_petz.add_client(client)
        end
        choice = menu
      end
