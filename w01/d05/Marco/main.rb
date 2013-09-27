require './animals.rb'
require './clients.rb'
require './shelters.rb'
# require "pry"
# binding.pry

puts "~~~~~~Animal Shelter Management~~~~~~\n"
puts "Please choose an option number below: \n\nAdopt Animal: (1)\nSurrender Animal: (2)\nCreate New Shelter: (3)\nCreate New Animal Profile: (4)\nCreate New Client Profile: (5)\n"
app_option = gets.chomp

case app_option
  when "1"
    puts "This section is under construction. Please check back later."
  when "2"
    puts "This section is under construction. Please check back later."
  when "3"
    print "Shelter Name: "
    shelter_name = Shelter.new(gets.chomp.downcase)
    puts "A new shelter named, \"#{shelter_name.name.capitalize}\" has been created!"
  when "4"

  when "5"

  else
    puts "Command not found. Please try again."

end

############## Class Functionality Checks Below ###############

# air_bud = Animal.new( "Air Bud", "dog")
# air_bud.give_toy "basketball"

# puts air_bud.to_s

# gina_fina = Client.new("Gina Fina", "39")
# gina_fina.pets_owned "parrot"

# puts gina_fina.to_s

# big_woof = Shelter.new("Big Woof")

# puts big_woof.to_s


