require_relative 'person'
require_relative 'apartment'
require_relative 'building'

# instantiates first building

def new_apartment
	puts "Alright! Let's get started."
	puts "What is the name of this unit?"
	name = gets.chomp.upcase
	puts "What is the monthly cost of this unit?"
	price = gets.chomp.to_i
	puts "What is the area of the apartment, in square feet?"
	sqft = gets.chomp.to_i
	puts "How many bedrooms are in this apartment?"
	beds = gets.chomp.to_i
	puts "How many bathrooms are in this apartment?"
	baths = gets.chomp.to_f.round(1)
	# Instantiated new Apartment object
	@apartments[name] = Apartment.new(name, price, sqft, beds, baths)
end

def new_tenant
	puts "Okay! Let's get started."
	puts "What is this tenant's name?"
	name = gets.chomp.split.map(&:capitalize).join(' ')
	puts "How old is this tenant?"
	age = gets.chomp.to_i
	puts "What apartment are they living in?"
	apartment = gets.chomp
	# Instantiated new Person object
	@renters << Person.new(name, age, apartment)
end

def menu
	puts "What would you like to do?"
	puts "Create new (a)partment, (t)enant, (q)uit"
	gets.chomp.downcase

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
choice = menu

while choice != 'q'
	case choice
	when 'a'
		new_apartment
	when 't'
		new_tenant
	else
		puts "I'm sorry, I didn't recognize that input."
	end

	choice = menu
end
