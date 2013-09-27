require_relative "happy_tails"

#hen creating an animal or client, the user is prompted for information like names, age etc. 
#Newly created animals and clients should be added to the shelter.

      
def menu
  puts "\n\n*** Hello Welcome to Happy Tails ***\n\n"
  puts '1 : Create Animal' 
  puts '2 : Look up Animals'
  puts '3 : Create Client'
  puts "Q : Quit\n\n"
  gets.chomp.downcase
end




response = menu


while response != 'q'
  case response
  when '1'
    # Create a new Animal
    puts "Please Enter you animal its species and a new toy"
    animal = gets.chomp.downcase
    animal = Animal.new(animal)
  when '2'
    # Look up Animals
    puts "Please Enter you animal its species and a new toy"
    animal = gets.chomp.downcase
    animal = Animal.new(animal)
  when '3'
    # Create a new Shelter
    puts "Please Enter you animal its species and a new toy"
    animal = gets.chomp.downcase
    animal = Animal.new(animal)
  when '4'
    # Create a new Person
    puts "Please Enter your name"
    name = gets.chomp.downcase
    puts "Please Enter your age"
    age = gets.chomp.to_i
    puts "Please Enter your animal"
    animal = get.chomp.downcase
    new_client = Client.new("Hello #{name},#{age}#{animal}")
  else
    puts "Wrong input Please Choose a Number 1-4 or enter Q to leave "
end


#puts  "Adopt an animal or become a client Choose (A) for adopt or (C) for client! OR (Q) to QUIT"
# response =