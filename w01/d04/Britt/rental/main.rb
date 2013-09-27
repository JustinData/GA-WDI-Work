require_relative 'person'
require_relative 'apartment'
require_relative 'building'
require 'pry'

# instantiates first building

def new_apartment(name)
	puts "What is the monthly cost of this unit?"
	price = gets.chomp.to_i
	puts "What is the area of the apartment, in square feet?"
	sqft = gets.chomp.to_i
	puts "How many bedrooms are in this apartment?"
	beds = gets.chomp.to_i
	puts "How many bathrooms are in this apartment?"
	baths = gets.chomp.to_f.round(1)
	# Instantiated new Apartment object
	Apartment.new(name, price, sqft, beds, baths)
end

def new_tenant(name)
	puts "How old is this tenant?"
	age = gets.chomp.to_i
	# Instantiated new Person object
	Person.new(name, age)
end

def create
	puts "What would you like to create?"
	puts "New (a)partment or (t)enant"
	gets.chomp.downcase
end

def list
	puts "Would you like to view (t)enants or (a)partments?"
	input = gets.chomp.downcase
	if input == 't'
		puts @renters
	elsif input == 'a'
		puts @apartments
	else
		puts "I don't recognize that input."
	end
end

def menu
	puts "What would you like to do?"
	puts "Create (n)ew tenent/apartment, (l)ist those entries, or (q)uit?"
	input = gets.chomp.downcase
	if input == 'n'
		create
	elsif input == 'l'
		list
	else
		puts "I don't recognize that input."
	end
end


#******PROGRAM BEGINS******

puts "Welcome to your new Building!"
puts "Before we begin, a couple quick questions:"
puts "What is the address of this building?"
address = gets.chomp.split.map(&:capitalize).join(' ')
puts "What is the style of the building?"
style = gets.chomp.split.map(&:capitalize).join(' ')
puts "And how many floors does this building have?"
floors = gets.chomp.to_i
# Instantiates first Building object with given input
my_building = Building.new(address, style, floors)
puts my_building
choice = create

while choice != 'q'
	case choice
	when 'a'
		puts "Alright! Let's get started."
		puts "What is the name of this unit?"
		unit_name = gets.chomp.upcase
		my_building.add_apartment(unit_name, new_apartment(unit_name))
	when 't'
		puts "Okay! Let's get started."
		puts "What is this tenant's name?"
		tenant_name = gets.chomp.split.map(&:capitalize).join(' ')
		# Run new_tenant with user-given input for name
		tenant_name = new_tenant(tenant_name)
		puts "Which apartment are they living in?"
		# enumerable on array of created apartment names 
		# runs a block that presents a number with each apartment
		# and iterates to match the number of apartments that exist
		my_building.apartments.keys.each do |apt| 
			i = 1
			puts "#{i}. #{apt}"
			i += 1
		end
		puts "Type the number that matches the apartment you'd like to select."
		apt_selection = gets.chomp.to_i
		binding.pry
		# Setting Person object apartment attribute to the user's selection from above
		tenant_name.apartment = (my_building.apartments.keys[apt_selection - 1])
		# Call add_renter method on Apartment object from user's selection from above
		(my_building.apartments.keys[apt_selection - 1].add_renter(tenant_name)
	else
		puts "I'm sorry, I didn't recognize that input."
	end

	choice = menu
end
