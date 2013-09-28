########################
# This file is a class definition for Apartment.
# Apartment has a price, sq. footage, some number of
# beds and baths, and can be occupied or not.
#
# Apartment has no methods.
#
# Day 04 Homework Exercise, September WDI, Yarraz
########################

class Apartment
  # not using attr_ shortcuts yet!
  #attr_reader :...
  #attr_accessor :...


  # initialize all instance variables when object instantiated
  def initialize
    @price = 0.00         # using a Float, for math that may work on @price
    @is_occupied = false  # using a boolean
    @sqft = 0.00          # using a Float, for math that may work on @sqft
    @num_beds = 0
    @num_baths = 0
  end

  # collect all of the instance variables and print
  def to_s
    output = "This #{@sqft.round().to_s} sq. ft. apartment has #{@num_beds} beds, "
    output += "#{@num_baths} baths, is "
    if !@is_occupied
      output += "not currently "
    end
    output += "occupied, and goes for the amazing price of $#{@price.round(2).to_s}!"

    # using return keyword explicitly to remind us what happens,
    # but unneccessary due to 'implicit return'
    return output
  end

end