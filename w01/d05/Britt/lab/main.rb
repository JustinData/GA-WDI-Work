require_relative 'animal'
require_relative 'client'
require_relative 'shelter'
require_relative 'seeds'
require 'pry'

# creates a shelter automatically
# menu
	# create an animal
		# get name
		# get species
	# create a client
		# get name
		# get age
	# create a shelter
		# get name
	# display all animals
		# $my_shelter.list_animals
	# display all clients
		# $my_shelter.list_clients
	# quit -->

# currently JUST puts the menu.
# actions and conditionals to
# be incorporated later
def new_animal
	puts "What is the name of the animal?"
	name = gets.chomp.capitalize
	puts "What species of animal is #{name}?"
	species = gets.chomp.downcase
	# instantiating new Animal object
	animal = Animal.new(name, species)
	# setting animal instance to $my_shelter
	$my_shelter.rescue_animal(animal)
end

def new_client
	puts "What is the new client's name?"
	name = gets.chomp.capitalize
	puts "What is the client's age?"
	age = gets.chomp.to_i
	# instantiating new Animal object
	client = Client.new(name, age)
	# setting client instance to $my_shelter
	$my_shelter.acquire_client(client)
end

def new_shelter
	puts "What would you like to call the new shelter?"
	# instantiating new Shelter object
	Shelter.new(name)
end

def menu
	puts "*****  Welcome to HappiTales!  *****\n"
	
	puts "Type the number that corresponds with what you'd like to do:\n"

	puts "1 : Add a new animal"
	puts "2 : Add a new client"
	puts "3 : Create a new shelter"
	puts "4 : Display all animals"
	puts "5 : Display all clients"

	gets.chomp.downcase
end

#####----- BEGIN PROGRAM -----#####
choice = menu

binding.pry

while choice != "q"
	case choice
	when "1"
		# add a new animal
		new_animal
	when "2"
		# add a new client
		new_client
	when "3"
		# create a new shelter and set it 
		# equal to variable shelter_1
		shelter_1 = new_shelter
	when "4"
		$my_shelter.list_animals
	when "5"
		$my_shelter.list_clients
	else
		puts "I don't understand your request."
	end

	menu
end
