require_relative 'animal'
require_relative 'client'
require_relative 'shelter'
require_relative 'seeds'
require 'pry'

# creates a shelter automatically
# menu
	# create an animal
	# create a client
	# create a shelter
	# display all animals
	# display all clients
	# quit

# currently JUST puts the menu.
# actions and conditionals to
# be incorporated later
def menu
	puts "*****  Welcome to HappiTales!  *****\n"
	
	puts "1. Add a new animal"
	puts "2. Add a new client"
	puts "3. Create a new shelter"
	puts "4. Display all animals"
	puts "5. Display all clients"
end

binding.pry