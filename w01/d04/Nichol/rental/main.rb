require './person'
require './apartment'
require './building'

person1 = Person.new("Nichol", 37, "Male", "5C")
person2 = Person.new("Sarah", 38, "Female", "5C")

apartment5c = Apartment.new(1500, 650, 2, 1)
apartment1a = Apartment.new(1000, 350, 1, 1)

apartment5c.add_renter(person1)
apartment5c.add_renter(person2)

puts apartment5c.to_s


array_of_apartments = [apartment5c, apartment1a]

building1 = Building.new("282 Prospect Place", "Greco-Roman", false, true, 3, array_of_apartments)

#puts apartment5c.to_s
#puts apartment1a.to_s

#puts building1.to_s
