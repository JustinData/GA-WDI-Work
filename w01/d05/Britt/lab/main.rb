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

my_shelter = Shelter.new("HappiTails")

client_1 = Client.new("Peter", 25)
client_2 = Client.new("PJ", 25)
client_3 = Client.new("Jeff", 25)
client_4 = Client.new("Nicky", 20)

animal_1 = Animal.new("Sparky", "dog")
animal_2 = Animal.new("Lucy", "cat")
animal_3 = Animal.new("Molly", "dog")
animal_4 = Animal.new("Shadow", "cat")
animal_5 = Animal.new("Corky", "dog")
animal_6 = Animal.new("Tweetie", "bird")

my_shelter.rescue_animal(animal_1)
my_shelter.rescue_animal(animal_2)
my_shelter.rescue_animal(animal_3)
my_shelter.rescue_animal(animal_4)
my_shelter.rescue_animal(animal_5)
my_shelter.rescue_animal(animal_6)

binding.pry