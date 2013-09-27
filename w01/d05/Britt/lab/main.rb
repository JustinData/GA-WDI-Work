require_relative 'animal'
require_relative 'client'
require_relative 'shelter'
require 'pry'

# creates a shelter automatically
# menu
	# create an animal
	# create a client
	# create a shelter
	# quit

# currently JUST puts the menu.
# actions and conditionals to
# be added later
def menu
	puts "*****  Welcome to HappiTales!  *****"
	puts "1. Add a new animal"
	puts "2. Add a new client"
	puts "3. Create a new shelter"
end

binding.pry