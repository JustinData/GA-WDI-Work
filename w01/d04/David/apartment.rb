class Apartment

  attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

  def initialize(price, is_occupied, sqft, num_beds, num_baths, renters)
    @price = price
    @is_occupied = is_occupied
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renters = renters
  end

  def to_s
    puts "The apartment price is #{@price}, it is #{@is_occupied} occupied, sqft: #{@sqft}, number of bed: #{@num_beds}, number of baths: #{@num_baths}, renters: #{@renters}"
  end
end

apartment = Apartment.new("$16k", "yes", "1000sqf", "4", "5", "yes")