########################
# This file is run by the Ruby interpreter (ie, main.rb).
#
# It runs a simple user interface to add and list
# our programs' objects (Apartments, People).
#
# Day 04 Homework Exercise, September WDI, Yarraz
########################

# include all class definitions and Pry for debugging
require_relative 'building'
require_relative 'apartment'
require_relative 'person'
require 'pry'

################ BEGIN THE METHOD DEFS ##################

########################
# Define a method that will help us "pretty print" our
# menu by spacing each line correctly
########################

MENU_WIDTH = 55

def pretty_print( input_str, spacing_char )
  if input_str.empty?
    return (spacing_char * MENU_WIDTH)
  elsif input_str.length >= MENU_WIDTH
    return (input_str)
  else
    input_str = " #{input_str} " # wrap input in spaces
    spacing_width = MENU_WIDTH - input_str.length

    # parrallel assignment, look it up!
    front, back = (spacing_width / 2), (spacing_width / 2)

    # make sure that the final product is exactly aligned
    if spacing_width.odd?
      back += 1
    end

  end

  #using implicit return to send back the concatenated string
  (spacing_char * front) + input_str + (spacing_char * back)
end

########################
# Define a method that will display a menu prompt and
# receive input from the user...
########################

acceptable_input = [:a, :p, :q] # acceptable results for the menu

def menu_prompt( input_list )
  # go in to an infinite loop
  while true
    puts pretty_print( "Please choose one option:", " " )
    puts pretty_print( "Create (A)partment, Create (P)erson, or (Q)uit", " ")
    # note: even tho the name is the same, this is separate from the
    # var user_response in the procedure outside this method!!! :)
    user_response = gets.chomp.downcase.to_sym

    # check user_response against acceptable input list
    if input_list.include?( user_response )
      return user_response # explicit return breaks the loop
    end

    puts "\n" + pretty_print( "Sorry, that is not acceptable input...", " " )
    puts pretty_print( "", "*" ) + "\n\n"
  end
end

################ BEGIN THE USER MENU ##################

puts pretty_print( "", "*" )
puts pretty_print( "WELCOME TO THE BUILDING MANAGER", "*" )
puts pretty_print( "", "*" )
puts "\n"

user_response = :none            # declare resonse var
building_obj = Building.new # instantiate new building!

# create a menu loop
while user_response != :q
  # call the menu prompt and handle input
  user_response = menu_prompt( acceptable_input )

  case user_response
  when :a # create and add an Apartment

    print "Please enter a square footage: "
    sqft = gets.chomp.to_f
    print "Please enter the # of beds: "
    num_beds = gets.chomp.to_i
    print "Please enter the # of baths: "
    num_baths = gets.chomp.to_i
    print "Please enter the monthly rent (in $): "
    price = gets.chomp.to_f
    print "Please enter a descriptive name: "
    name = gets.chomp.capitalize # used for the Building@apartment's-hash key

    # create a new apartment object and add to the building
    apartment_obj = Apartment.new( sqft, num_beds, num_baths, price )
    building_obj.add_apartment( name, apartment_obj )

    puts "\n"
    puts pretty_print( "Apartment '#{name}' added!", "*")
    puts "\n"

  when :p # create and add a Person

  end

end

# send goodbye message
puts "\n" + pretty_print( "Thanks for using our program!", " ") +"\n\n"
puts pretty_print( "", "*" )
puts pretty_print( "THANK YOU, COME AGAIN", "*")
puts pretty_print( "", "*" )

binding.pry
################ END THE USER MENU ##################
