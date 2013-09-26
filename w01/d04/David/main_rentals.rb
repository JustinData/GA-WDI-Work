require 'pry'
require_relative 'building'



puts "Welcome to Rental World NYC\nPlease enter the building name you would like to create"
building = gets.chomp

#creates a new building and passes the building name into initialize
new_building = Building.new(building)
puts "Your have successfully created the #{new_building} building."

puts "Would you like to (CP) create person, (CA) create apartment, (LA) list apartments, (LP) list people in an apartment, or (Q) quit?"
options = gets.chomp.downcase.to_sym

#print the menu to user 
case options
  when :cp 
    print "Please enter person's name: "
    name = gets.chomp
    print "age: "
    age = gets.chomp
    print "gender: "
    gender = gets.chomp
    print "apartment: "
    apartment = gets.chomp
    new_person = Person.new(name, age, gender, apartment)
    puts "New Person: #{new_person}"
  when :ca 
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


