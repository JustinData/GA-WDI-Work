require_relative "happy_tails"

#hen creating an animal or client, the user is prompted for information like names, age etc. 
#Newly created animals and clients should be added to the shelter.

      
happy_tails= Shelter.new("Happy Tails")

def menu
  puts "\n\n*** Hello Welcome to Happy Tails ***\n\n"
  puts '1 : Create Animal' 
  puts '2 : Display Animals'
  puts '3 : Create Client'
  puts '4 : Display Clients'
  puts "Q : Quit\n\n"
  gets.chomp.downcase
end




response = menu


while response != 'q'
  case response
  when '1'
    # Create a new Animal!!!!!
     puts "Please Enter your Animal name"
     a_name = gets.chomp.downcase
     puts = "OK great What kind of Animal is it?"
     species = gets.chomp.downcase
     puts = "Cool so what toys do you want?"
     toys = gets.chomp.downcase
     animal = Animal.new(a_name, species)
     happy_tails.animals.push(animal)
     
  
  when '2'
    # Look up Animals!!!!
    happy_tails.list_animals
  
  when '3'
    # Create a new Person
    puts "Please Enter your name"
    name = gets.chomp.downcase
    puts "Please Enter your age"
    age = gets.chomp.to_i
    new_client = Client.new(name, age)
    happy_tails.clients.push(new_client)
    happy_tails.clients
    menu
  when '4'
      happy_tails.list_clients

  when "q"
      break

  else
    puts "Wrong input Please Choose a Number 1-4 or enter Q to leave! "
  end
end


#puts  "Adopt an animal or become a client Choose (A) for adopt or (C) for client! OR (Q) to QUIT"
# response =