# include our other ruby files
require_relative 'building'
require_relative 'apartment'
require_relative 'person'

# Method to display the menu. It returns the response as a string
def menu
  puts "\n\n*** Rental App ***\n\n"
  puts '1 : List Apartments'
  puts '2 : Look up people by apartment'
  puts '3 : Create Apartment'
  puts '4 : Create Person'
  puts "Q : Quit\n\n"
  gets.chomp.downcase
end

#Create a new building
building = Building.new('10E21ST', 'GA', false, false, 10)

# Test seed data so I don't have to retype a bunch of apartments and people every time I run the program
=begin
building.apartments["1A"] = Apartment.new("1A", 2000, 500, 2, 1)
building.apartments["1B"] = Apartment.new("1B", 3000, 700, 2, 2)
building.apartments["1C"] = Apartment.new("1c", 1500, 250, 1, 1)
building.apartments["1A"].renters << Person.new("Peter", 18, "M")
building.apartments["1A"].renters << Person.new("PJ", 21, "M")
building.apartments["1A"].renters << Person.new("Jeff", 20, "M")
building.apartments["1B"].renters << Person.new("Paris", 20, "F")
building.apartments["1C"].renters << Person.new("Nichol", 25, "M")
=end

# Call the menu method, which returns a string with the reponse, and assign that to the variable response
response = menu

# program loop
while response != 'q'
  case response
  when '1'
    # call the list_apartments method from our building object
    puts building.list_apartments
  when '2'
    puts "Which apartment? "
    puts building.list_apartments
    apt = gets.chomp
    # building.apartments will return our apartment attribute in our building object, which is a hash
    # building.apartments[apt] will look up the key apt in that hash, and return its value, which is an apartment object
    # building.apartments[apt].list_renters will call the list_renters method of that apartment object
    puts building.apartments[apt].list_renters
  when '3'
    print "Name: "
    name = gets.chomp
    print "Rent: "
    rent = gets.to_i
    print "SqFt: "
    sqft = gets.to_i
    print "Number of Bedrooms: "
    num_bedrooms = gets.to_i
    print "Number of Bathrooms: "
    num_bathrooms = gets.to_i
    # building.apartments will return our apartment attribute in our building object, which is a hash
    # This line inserts out new apartment into that hash, with a key being the string of the apartment name and the value being the apartment object
    building.apartments[name] = Apartment.new(name, rent, sqft, num_bedrooms, num_bathrooms)
  when '4'
    print "Name: "
    name = gets.chomp
    print "Age: "
    age = gets.to_i
    print "Gender: "
    gender = gets.chomp
    print "What apt do you wish to live: "
    apt = gets.chomp
    # building.apartments will return our apartment attribute in our building object, which is a hash
    # building.apartments[apt] will look up the key apt in that hash, and return its value, which is an apartment object
    # building.apartments[apt].renters will return the renters attribute in that apartment object, which is an array
    # << pushes an item onto an array, in this case our new Person object
    building.apartments[apt].renters << Person.new(name, age, gender)
  end
  # display menu again and get a new response
  response = menu
end