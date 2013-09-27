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
	puts "Hi, welcome to Happy Tails"
	puts ""
	puts "What would you like to do?"
	puts ""
	puts "1. Create an animal."
	puts "2. Create a client."
	puts "3. Quit"
	puts ""
end


shelter1 = Shelter.new("ASPCA")


controller = nil
while controller != 3
	display_menu	
	controller = gets.chomp

	case controller
	when 1
		puts "Create animal"
	when 2
		puts "Create a Client"
	when 3
		puts "Goodbye!"
	else
		puts "Thats a bad number"
	end
end



