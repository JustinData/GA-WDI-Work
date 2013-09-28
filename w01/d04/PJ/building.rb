########################
# This file is a class definition for Building.
# Building has an address and style, some number of floors, maybe
# an elevator (is_walkup) and/or a doorman, and a collection of
# Apartments.
#
# Building has no methods.
#
# Day 04 Homework Exercise, September WDI, Yarraz
########################

class Building

  # initialize all instance variables when object instantiated
  def initialize
    @address = ""
    @style = ""
    @has_doorman = true # safety first!
    @is_walkup = true   # also is a boolean
    @num_floors = 1
    @apartments = {}    # an empty hash
  end

  # collect all of the instance variables and print
  def to_s
    output = "The #{@style} building at #{@address} has #{@num_floors.to_s} floors, "
    if @has_doorman
      output += "no doorman, is "
    else
      output += "a doorman, is "
    end
    if !@is_walkup
      output += "not "
    end
    output += "a walkup, and has #{@apartments.size.to_s} apartments."

    # using return keyword explicitly to remind us what happens,
    # but unneccessary due to 'implicit return'
    return output
  end

end