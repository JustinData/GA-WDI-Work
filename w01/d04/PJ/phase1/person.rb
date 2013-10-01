########################
# This file is a class definition for Person.
# Person has a name, age, gender and apartment.
#
# Person has no methods.
#
# Day 04 Homework Exercise, September WDI, Yarraz
########################

class Person
  # not using attr_ shortcuts yet!
  #attr_reader :...
  #attr_accessor :...


  # initialize all instance variables when object instantiated
  def initialize
    @name = ""
    @age = 0         # using integer (Fixnum) for math
    @gender = ""
    @apartment = nil # not currently pointing to an Apartment object
  end

  # collect all of the instance variables and print
  def to_s
    output = "#{@name}: #{@age} year old #{@gender} "
    if @apartment.nil?
      output += "is looking for a home."
    else
      output += "lives in an apartment." # can't access Apartment class instance variables yet
    end

    # using return keyword explicitly to remind us what happens,
    # but unneccessary due to 'implicit return'
    return output
  end

end