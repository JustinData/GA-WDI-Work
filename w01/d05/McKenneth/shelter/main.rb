require_relative 'shelter'
require_relative 'animal'
require_relative 'client'

happy_petz = Shelter.new("Happy Petz", ["none"], ["none"])

joe = Client.new("John", "3", ["dog", "dog", "none"])


joe.add_pet("cat", "cat", "bone")

jane = Client.new("jane", "5", ["no pet"])

cat = Animal.new("Sparky", "cat", "none")

happy_petz.add_client(joe.name, joe.age, joe.pets)
happy_petz.add_client(jane.name, jane.age, jane.pets)

puts happy_petz.list_clients