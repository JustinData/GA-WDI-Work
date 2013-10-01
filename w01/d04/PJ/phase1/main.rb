########################
# This file is run by the Ruby interpreter (ie, main.rb).
#
# It is used to test our Classes as they are.
#
# Day 04 Homework Exercise, September WDI, Yarraz
########################

# include all class definitions and Pry for debugging
require_relative 'building'
require_relative 'apartment'
require_relative 'person'
require 'pry'

# test our class "constructors" and "to string" methods...

test_person_obj = Person.new        # no params/arguments defined for any of our
test_apartment_obj = Apartment.new  # initialize methods yet, so call them w/o parens,
test_building_obj = Building.new()  # or with them! (your choice)

puts "TEST PERSON --> " + test_person_obj.to_s
puts "TEST APARTMENT --> " + test_apartment_obj.to_s
puts "TEST BUILDING --> " + test_building_obj.to_s

#binding.pry # hop in to the program before it closes so we can play around with the data

# program working, saved the output to test_output file using bash command:
# `echo grep | ruby main.rb >> ./test_output`
#
#