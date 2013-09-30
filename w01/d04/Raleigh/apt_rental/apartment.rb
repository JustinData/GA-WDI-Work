### Apartment Class ###

class Apartment
    attr_accessor :price, :is_occupied, :sqft,  :num_beds, :num_baths, :renters

   def initialize(price, occupied, sqft, beds, baths)
      @price = price.to_f
      @is_occupied = occupied
      @sqft = sqft
      @num_beds = beds
      @num_baths = baths
      @renters = []
   end

   def add_renter(person)
      @renters.push(person)
   end
      
   def list_renters(search)
      puts "Renters: #{@renters["search"].join(", ")}"
   end

   def to_s
      if @is_occupied == "yes"
      "(The apartment is $#{@price}. The apartment has #{@num_beds}, #{@num_baths}, and is #{@sqft} square feet. OCCUPIED), "
      else
      "(The apartment is $#{@price}. It is not occupied. The apartment has #{@num_beds}, #{@num_baths}, and is #{@sqft} square feet. NOT OCCUPIED), "
      end
   end

end
