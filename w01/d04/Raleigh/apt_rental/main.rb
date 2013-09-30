### MAIN ###

require_relative "./person"
require_relative "./apartment"
require_relative "./building"
require "pry"

# Create the building
main_building = Building.new("St. George Tower.", "Modern", "yes", "no", "17")

def menu
   puts "***Apartment Rental***"
   puts "(1) Create a new apartment, (2) Create a new tenant, (3) List all apartments in building, (4) List all tenants in apartment, or (Q) Quit the program:"
   gets.chomp.downcase
end

########### DEFINITIONS OVER, PROGRAM BEGINS ##############

response = menu

# This process will continue until the user selects a quit option from the menu
while response != "q"

   if response == "1"
      puts "Please input the name of your apartment:"
      apt_name = gets.chomp

      puts "Please input the price of your apartment:"
      price = gets.chomp

      puts "Please input the square footage of your apartment:"
      sqft = gets.chomp

      puts "Please input the number of bedrooms in your apartment:"
      bed = gets.chomp

      puts "Please input the number of bathrooms in your apartment:"
      bath = gets.chomp

      puts "Is the apartment occupied?"
      occupied = gets.chomp

      apt_obj = Apartment.new(price, occupied, sqft, bed, bath)
      puts "\nNew apartment added!\n"
 
      main_building.add_apt(apt_name, apt_obj)

   elsif response == "2"
      puts "Please input the name of tenant:"
      name = gets.chomp

      puts "Please input tenant's age:"
      age = gets.chomp

      puts "Please input tenant's gender:"
      gender = gets.chomp

      puts "What apartment does this tenant live in?"
      apartment = gets.chomp

      person_new = Person.new(name, age, gender, apartment)   
      main_building.add_renter(person_new)

   elsif response == "3"
      puts main_building.list_apartments

   elsif response == "4"
      puts "What apartment are you inquiring about?"
      apt_inquire = gets.chomp
      #NOT WORKING
      main_building.address.list_renters[apt_inquire]

   else
      puts "\nThat is not an option.\n"
      
   end

   response = menu
end
