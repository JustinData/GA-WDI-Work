require_relative 'person'
require_relative 'apartment'
require_relative 'building'

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
	puts "What apartment are they living in?"
	apartment = gets.chomp
	# Instantiated new Person object
	Person.new(name, age, apartment)
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
		tenant_name = new_tenant(tenant_name)
		tenant_name.apartment.add_renter(tenant_name)
	else
		puts "I'm sorry, I didn't recognize that input."
	end

	choice = menu
end
