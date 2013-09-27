require './animal_class'
require './client_class'
require './shelter_class'

# person1 = Client.new("Nichol", 38)
# puts person1

# animal1 = Animal.new("Stella", "Dog")
# puts animal1

# animal1.toys << "sally"
# puts animal1

# person1.pets << animal1
# puts person1

# animal1.toys << "sammy"
# animal1.toys << "cat"
# puts animal1

# animal2 = Animal.new("Lucy", "Dog")
# animal2.toys << "sarah"
# animal2.toys << "stephen"
# animal2.toys << "eloise"

# shelter1 = Shelter.new("ASPC")
# puts shelter1

# shelter1.animals << animal1
# shelter1.animals << animal2

# puts shelter1.animals
# puts shelter1

# shelter1.clients << person1
# puts shelter1

# person2 = Client.new("Maddy", 5)
# shelter1.clients << person2

# puts shelter1.clients
# puts shelter1

# shelter1.facilitate_adoption(person1, animal2)

# puts person1
# puts shelter1

# puts person1.pets

# shelter1.facilitate_return(person1, animal2)

# puts person1
# puts shelter1

def display_menu
	
	puts ""
	puts "What would you like to do?"
	puts ""
	puts "1. Create an animal."
	puts "2. Create a client."
	puts "3. Display all animals."
	puts "4. Display all clients."
	puts "0. Quit"
	puts ""
end

def create_animal(shelter)
	puts "What is the little guy's name?"
	name = gets.chomp
	puts "And what kind of animal is he?"
	species = gets.chomp

	animal1 = Animal.new(name, species)
	shelter.animals << animal1
end

def create_client(shelter)
	puts "What is the client's name?"
	name = gets.chomp
	puts "How old are they?"
	age = gets.chomp.to_i

	person1 = Client.new(name, age)

	shelter.clients << person1
end



shelter1 = Shelter.new("ASPCA")

puts "Hi, welcome to Happy Tails"

controller = nil
while controller != 0
	display_menu	
	controller = gets.chomp.to_i

	case controller
	when 1
		create_animal(shelter1)
	when 2
		create_client(shelter1)
	when 3
		puts shelter1.animals
		# puts shelter1.clients.pets #####********##########
	when 4
		puts shelter1.clients
	when 0
		puts "Goodbye!"
	else
		puts "Thats a bad number"
	end
end

