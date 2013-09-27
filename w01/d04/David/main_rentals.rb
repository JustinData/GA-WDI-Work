require 'pry'
require_relative 'building'
require_relative 'apartment'
require_relative 'person'

puts "Welcome to Rental World NYC"
#### creates new building and populates class variables
building = Building.new
print "Please enter the building name you would like to create "
name = gets.chomp
building.name = name 
print "Address: "
address = gets.chomp
building.address = address
print "Style: "
style = gets.chomp
building.style = style
print "Doorman (Y/N): "
has_doorman = gets.chomp
building.has_doorman = has_doorman
print "Walk-Up (Y/N): "
is_walkup = gets.chomp
building.is_walkup = is_walkup
print "Number of Floors: "
num_floors = gets.chomp
building.num_floors = num_floors
#prints confirmation information
puts building

options = ""
while options != :q
#sub-menu to give options to user
puts "Would you like to (CP) create person, (CA) create apartment, (LA) list apartments, (LP) list people in an apartment, or (Q) quit?"
options = gets.chomp.downcase.to_sym


#print the menu to user 
case options
  when :cp 
    #populates variables in person class
    person = Person.new
    print "Please enter person's name: "
    name = gets.chomp
    person.name = name
    print "age: "
    age = gets.chomp
    person.age = age
    print "gender: "
    gender = gets.chomp
    person.gender = gender
    print "apartment: "
    apartment = gets.chomp
    person.apartment[apartment]= name
    #prints confirmation information
    puts person
    puts person.apartment
  when :ca
    apartment = Apartment.new
    print "To create your new apartment description please enter Apartment Name: "
    name = gets.chomp
    apartment.name = name
    print "Price: "
    price = gets.chomp
    apartment.price = price
    print "Is it Occupied(Y/N): "
    is_occupied = gets.chomp
    apartment.is_occupied = is_occupied
    print "Number of Square Feet: "
    sqft = gets.chomp
    apartment.sqft = sqft
    print "Number of Bedrooms: "
    num_beds = gets.chomp
    apartment.num_beds = num_beds
    print "Number of Bathrooms: "
    num_baths = gets.chomp
    apartment.num_baths = num_baths
    puts apartment
    #update the hash of apartments in the building class
    # building_new.apartment[apt_name] = apartment_new
    # puts building_new.apartment
  when :la 
  when :lp 
  when :q 
  # else
  #   while (options != :cp) || (options != :ca) || (options != :la) || (options != :lp) || (options != :q)
  #     puts "Please enter a valid entry"
  #     options = gets.chomp.downcase.to_sym
  #     binding.pry
  #  end
end
end


